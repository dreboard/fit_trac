<template>
    <div class="row">
        <div class="col-sm-4">

            <form class="mb-5" id="newWeightForm">
                <div class="form-group row">
                    <label for="newWeight" class="col-sm-4 col-form-label">New Weight</label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control weightInput" v-model="weightForm.weight" name="weight" id="newWeight"
                               placeholder="Weight">
                        <span v-if="errors.weight" :class="['label label-danger']">{{ errors.weight[0] }}</span>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <p><strong>Last Entry:  </strong> {{ lastDate|formatDate }}</p>
                        <button type="button"  @click="updateUserWeight()" class="btn btn-primary" id="newWeightBtn">Save</button>
                    </div>
                </div>
            </form>

            <table class="table table-striped">
                <tr>
                    <th scope="col">Plan</th><td>{{ weight_plan|capitalize }}</td>
                </tr>
                <tr>
                    <th scope="col">Current</th><td>{{ lastWeight }}</td>
                </tr>
                <tr>
                    <th scope="col">Goal</th><td>{{ weightGoal }} ( {{ weightDiff }} to go)</td>
                </tr>
                <tr>
                    <th scope="col">Max</th><td>{{ weightHistory.max }}</td>
                </tr>
                <tr>
                    <th scope="col">Min</th><td>{{ weightHistory.min }}</td>
                </tr>
                <tr>
                    <th scope="col">Avg</th><td>{{ weightHistory.avg }}</td>
                </tr>
            </table>

        </div>
        <div class="col-sm-8">
            <div class="mb-5" id="chart_div"></div>
            <div class="row">
                <div class="col-lg-12">
                    <h3>Goal Progress</h3>
                    <p><strong>Current Goal:</strong> {{ weightGoal }}</p>
                    <div class="progress mb-5">
                        <div class="progress-bar" role="progressbar" :style="{width: goalProgress}">{{ weightDiff }} lbs to go</div>
                    </div>
                    <form>
                        <div class="form-group row" id="newWeightGoalForm">
                            <label for="newWeightGoal" class="col-sm-2 col-form-label">New Goal</label>
                            <div class="col-sm-10">
                                <input name="weightGoal" type="text" class="form-control weightInput" id="newWeightGoal"
                                       placeholder="Weight" v-model="weightGoalForm.weightGoalInput">
                                <span v-if="errors.weightGoal" :class="['label label-danger']">{{ errors.weight[0] }}</span>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button type="button"  @click="updateUserWeightGoal()" class="btn btn-primary" id="newWeightGoalBtn">Save</button>
                            </div>
                        </div>
                    </form>


                </div>

            </div>

        </div>
    </div>

</template>

<script>
    require('fullcalendar');

    export default {
        props: ['events_url', 'user_id', 'weights', 'history_url','new_weight_url', 'new_weight_goal_url', 'weight_plan'],
        data() {
            return {
                currentWeight:'',
                userEvents: [],
                userWeights: [],
                chartWeights: [],
                weightHistory: [],
                weightForm: {
                    weight: '',
                },
                weightGoalForm: {
                    weightGoalInput: '',
                },
                errors: [],
                success : false,
                lastDate: '',
                lastWeight: '',
                weightGoal: '',
                goalProgress: 0,
                weightDiff: 0
            }
        },
        methods: {
            calculatePlanDiff(goal, weight){
                switch (this.weight_plan) {
                    case 'gain':
                        this.weightDiff = Math.round(goal - weight);
                        break;
                    case 'lose':
                        this.weightDiff = Math.round(weight - goal);
                        break;
                    default:
                        this.weightDiff = 0;
                }
            },
            getUserWeightHistory(){
                axios.post(this.history_url, {
                    id: this.user_id,
                })
                    .then((response)=>{
                        this.weightHistory = response.data.weights;
                        this.lastDate = response.data.weights.last.enterDate;
                        this.lastWeight = response.data.weights.last.weight;
                        this.weightGoal = response.data.weights.goal.weight;
                        if(isNaN(this.weightGoal) || this.weightGoal == null){
                            this.weightGoal = 0;
                            this.goalProgress = "0%";
                            this.weightDiff = 0;
                        }else{
                            this.goalProgress = Math.round(this.lastWeight/this.weightGoal * 100)+"%";
                            //this.calculatePlanDiff(this.weightGoal, this.currentWeight);
                            switch (this.weight_plan) {
                                case 'gain':
                                    this.weightDiff = (this.weightGoal - this.lastWeight);
                                    break;
                                case 'lose':
                                    this.weightDiff = (this.lastWeight - this.weightGoal);
                                    break;
                            }
                        }


                        /*this.userEvents.forEach( function( item ) {
                            this.weightHistory;
                        });*/

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                    }
                });
            },
            updateUserWeight(){
                axios.post(this.new_weight_url, {
                    weight: this.weightForm.weight,
                    id: this.user_id,
                })
                    .then((data)=>{
                        console.log(data);
                        if(data){
                            //console.log(response.data.errors);
                        }
                        this.errors = [];
                        this.success = true;

                        this.getWeights();
                        this.getUserWeightHistory();

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        this.errors = error.response.data.errors;
                        this.success = false;
                    }
                });
            },
            updateUserWeightGoal(){
                axios.post(this.new_weight_goal_url, {
                    weight: this.weightGoalForm.weightGoalInput,
                    id: this.user_id,
                })
                    .then((response)=>{
                        console.log(response);
                        this.errors = [];
                        this.success = true;

                        this.getWeights();
                        this.getUserWeightHistory();

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                        //this.errors = error.response.data.errors;
                        this.success = false;
                    }
                });
            },
            getWeights(){
                axios
                    .post(this.events_url, {
                        id: this.user_id,
                    }).then((response)=>{
                    this.userWeights = response.data.weights;
                    let chartWeights = response.data.weights;

                    function processData(chartWeights){
                        var headers = [];
                        headers.push(['Date', 'Weight']);
                        for (var j = 0; j < chartWeights.length; j++){
                            headers.push([chartWeights[j].enterDate,  chartWeights[j].weight])+',';
                        }

                        return headers;
                    }
                    $( document ).ready(function() {
                        google.charts.load('current', {'packages':['corechart']});
                        google.charts.setOnLoadCallback(drawVisualization);

                        function drawVisualization() {
                            var data = google.visualization.arrayToDataTable(
                                processData(chartWeights)
                            );

                            var options = {
                                title : 'Weight History',
                                vAxis: {title: 'Weight'},
                                hAxis: {title: 'Entry'},
                                seriesType: 'bars',
                                //series: {230: {type: 'line'}}
                                series: {5: {
                                        type: "line",
                                        color: '#FF0000',
                                        visibleInLegend: false,
                                        areaOpacity: 0,
                                        targetAxisIndex: 1 } //tell the series values to be shown in axe 1 bellow
                                },
                                vAxes: [  //each object in this array refers to one axe setup
                                    {},  //axe 0 without any special configurations
                                    {
                                        ticks: [250], //use this if you want to show the target value
                                        baseline: 250 //this shifts the base line to 250
                                    }
                                ]
                            };
                            //console.log(processData(data));
                            var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
                            chart.draw(data, options);
                        }
                    });


                }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                    }
                });
            },

        },
        created(){
            this.getWeights();

            this.getUserWeightHistory();
            //console.log(this.userEvents);
        },
        mounted() {

        },
        computed: {
            getProgress(){
                return Math.round(this.lastWeight/this.weightGoal * 100);
            },
            getPlanDiff(){
                return this.calculatePlanDiff(this.weightGoal, this.lastWeight);
            },

        },
    }

</script>