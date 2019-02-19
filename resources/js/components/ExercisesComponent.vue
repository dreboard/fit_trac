<template>
    <div class="row">
        <div class="col-md-3">

            <div id="calendar3"></div>

        </div>
        <div class="col-md-9">
            <h1>Exercises Database</h1>
            <table class="table table-striped">

                <tr>
                    <th scope="col"><select name="muscle" id="part" @change="getExercises" class="form-control">
                        <option value="">Select Body Part</option>
                        <option  v-for="muscle in muscles" :value="muscle.id">{{ muscle.name }}</option>
                    </select></th>
                    <th><select name="program" id="program" v-model="exerciseForm.work_muscle" class="form-control">
                        <option value="">Select Program</option>
                        <option  v-for="muscle in muscles" v-bind:value="muscles.id">{{ muscle.name }}</option>
                    </select></th>
                    <th></th>
                    <th>
                        <form class="form-inline">
                            <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="New Program">
                            <button type="button" class="btn btn-primary mb-2">Save</button>
                        </form>
                    </th>
                </tr>
         
                <tr>
                    <th scope="col">Exercise</th><th>Equipment</th><th>Type</th><th></th>
                </tr>

                <tr v-for="part in part_exercises">
                    <td>{{part.id}} | {{ part.exercise }}</td>
                    <td>{{ part.equipment }}</td>
                    <td>{{ part.type }}</td>
                    <td>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" v-model="programExercises" :value="part.id" @change="handleTasks(part.id)">
                            <label class="form-check-label" for="defaultCheck1">
                                Save
                            </label>
                        </div>
                    </td>
                </tr>



            </table>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['user_id', 'exercises_url', 'get_exercises_url'],
        data() {
            return {
                errors: [],
                bodyParts: ['neck','shoulder','chest','waist','hips','left_wrist','right_wrist','left_bicep','right_bicep','left_thigh','right_thigh','left_calf','right_calf'],
                success : false,
                update_url: BASE_URL+'/api/updatePart',
                exercises: [],
                programExercises: [],
                muscles: [],
                load_id: '',
                part_exercises: [],
                muscle_id: '',
                exerciseForm: {
                    work_muscle: ''
                },

            }
        },
        methods: {
            getData(){
                axios.get(this.exercises_url, {
                    id: this.user_id,
                })
                    .then((response )=>{
                        console.log(response.data);
                        this.exercises = response.data.exercises;
                        this.muscles = response.data.muscles;
                        console.log(this.exercises);
                        this.errors = [];
                        this.success = true;

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                    }
                });
            },
            getExercises(event) {
                //debugger;
                this.part_exercises = [];
                this.load_id = event.target.value;
                axios.post(this.get_exercises_url, {
                    id: this.load_id,
                })
                    .then((response )=>{
                        console.log(response.data);
                        this.part_exercises = response.data.part_exercises;
                        console.log(this.part_exercises);
                        this.errors = [];
                        this.success = true;

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                    }
                });
                console.log(event.target.value)
            },
            handleTasks(task) {
                // Do what you want with the selected objects:
                console.log(this.programExercises)
            },
        },
        mounted() {
            console.log('Component mounted.');
            this.getData();
        },
        watch: {
            selectedExercises: function (newVal, oldVal) {
                // Do what you want with the selected objects:
                console.log(newVal)
            }
        }
    }
</script>
