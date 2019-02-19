<template>
    <div class="row">
        <div class="col-md-3">

            <div id="calendar3"></div>

        </div>
        <div class="col-md-9">
            <h1>Programs</h1>
            <table class="table table-striped">

                <tr>
                    <th scope="col"><select name="program" id="programs" @change="getExercises" class="form-control">
                        <option value="">Select Program</option>
                        <option  v-for="program in programs" :value="program.id">{{ program.programName }}</option>
                    </select></th>
                    <th><select name="program" id="programType"  @change="getExercisesByType" class="form-control">
                        <option value="">Select Type</option>
                        <option  v-for="type in exerciseTypes" v-bind:value="type">{{ type }}</option>
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

                <tr v-for="part in program_exercises">
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
        props: ['user_id', 'programs_url', 'program_exercises_url'],
        data() {
            return {
                errors: [],
                bodyParts: ['neck','shoulder','chest','waist','hips','left_wrist','right_wrist','left_bicep','right_bicep','left_thigh','right_thigh','left_calf','right_calf'],
                success : false,
                update_url: BASE_URL+'/api/updatePart',
                programs: [],
                currentProgram: '',
                programExercises: [],
                muscles: [],
                exerciseType: 'Compound',
                exerciseTypes: ['Compound','Isolation'],
                program_exercises: [],
                muscle_id: '',
                load_id: '',
                exerciseForm: {
                    work_muscle: ''
                },

            }
        },
        methods: {
            getData(){
                axios.get(this.programs_url, {
                    id: this.user_id,
                })
                    .then((response )=>{
                        console.log(response.data);
                        this.programs = response.data.programs;
                        this.muscles = response.data.muscles;
                        console.log(this.programs);
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
                this.program_exercises = [];
                this.load_id = event.target.value;
                axios.post(this.program_exercises_url, {
                    id: this.load_id,
                })
                    .then((response )=>{
                        console.log(response.data);
                        this.program_exercises = response.data.exercises;
                        console.log(this.program_exercises);
                        this.errors = [];
                        this.success = true;

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                    }
                });
                console.log(event.target.value)
            },
            getExercisesByType(event) {
                //debugger;
                this.program_exercises = [];
                this.exerciseType = event.target.value;
                axios.post(this.program_exercises_url, {
                    id: this.load_id,
                    type: this.exerciseType
                })
                    .then((response )=>{
                        console.log(response.data);
                        this.program_exercises = response.data.exercises;
                        console.log(this.program_exercises);
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
