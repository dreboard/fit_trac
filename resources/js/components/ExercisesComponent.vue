<template>
    <div class="row">
        <div class="col-md-4">

            <div id="calendar3"></div>

        </div>
        <div class="col-md-8">
            <h1>Exercises Database</h1>
            <table class="table table-striped">

                <tr>
                    <th scope="col">Part:</th>
                    <th><select name="muscle" id="part" @change="getExercises" class="form-control">
                        <option value="">Select Body Part</option>
                        <option  v-for="muscle in muscles" :value="muscle.id">{{ muscle.name }}</option>
                    </select></th>
                    <th>Program</th>
                    <th><select name="program" id="program" v-model="exerciseForm.work_muscle" class="form-control">
                        <option  v-for="muscle in muscles" v-bind:value="muscles.id">{{ muscle.name }}</option>
                    </select></th>
                </tr>
         
                <tr>
                    <th scope="col">Part</th><th>Current</th><th>Initial</th><th>Diff</th>
                </tr>

                <tr v-for="part in part_exercises">
                    <td>{{ part.exercise }}</td>
                    <td>{{ part.equipment }}</td>
                    <td>{{ part.type }}</td>
                    <td>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
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
            }
        },
        mounted() {
            console.log('Component mounted.');
            this.getData();
        }
    }
</script>
