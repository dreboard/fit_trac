<template>
    <div class="row">
        <div class="col-sm-4">

            <form class="mb-5" id="newMeasurementForm">
                <div class="form-group row">
                    <label for="part" class="col-sm-4 col-form-label">Part</label>
                    <div class="col-sm-8">
                        <select name="part" id="part" v-model="measureForm.part">
                            <option value="" selected="selected">-</option>
                            <option value="neck">Neck</option>
                            <option value="shoulder">Shoulder</option>
                            <option value="bicep">Bicep</option>
                            <option value="chest">Chest</option>
                            <option value="waist">Waist</option>
                            <option value="hips">Hips</option>
                            <option value="thigh">Thigh</option>
                            <option value="calf">Calf</option>
                        </select>
                        <span></span>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="part" class="col-sm-4 col-form-label">Measurement</label>
                    <div class="col-sm-8">
                        <select name="partInches" id="partInches" v-model="measureForm.partInches">
                            <option value="" selected="selected">-</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                        </select>
                        <select name="partSub" id="partSub" v-model="measureForm.partSub">
                            <option value="00" selected="selected">00</option>
                            <option value="125">1/8</option>
                            <option value="25">1/4</option>
                            <option value="375">3/8</option>
                            <option value="5">1/2</option>
                            <option value="625">5/8</option>
                            <option value="75">3/4</option>
                            <option value="875">7/8</option>
                        </select>
                        <span></span>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="button"  @click="updateUserPart()" class="btn btn-primary" id="newMeasurementFormBtn">Save</button>
                    </div>
                </div>
            </form>



        </div>
        <div class="col-sm-8">

            <table class="table table-striped">
                <tr>
                    <th scope="col">Part</th><th>Current</th><th>Initial</th><th>Diff</th>
                </tr>

                <tr>
                    <th scope="col">{{ body_data.headers.neck}}</th><td>{{ body_data.current.neck}}</td><td>{{ body_data.initial.neck}}</td><td>{{ body_data.difference.neck}}</td>
                </tr>

                <tr>
                    <th scope="col">{{ body_data.headers.shoulder}}</th><td v-if="body_data.current.shoulder == '0.00' "> {{body_data.initial.shoulder}} </td> <td v-else>{{ body_data.current.shoulder}}</td>  <td>{{ body_data.initial.shoulder}}</td><td>{{ body_data.difference.shoulder}}</td>
                </tr>
                <tr>
                    <th scope="col">{{ body_data.headers.left_bicep}}</th><td>{{ body_data.current.left_bicep}}</td><td>{{ body_data.initial.left_bicep}}</td><td>{{ body_data.difference.left_bicep}}</td>
                </tr>
                <tr>
                    <th scope="col">{{ body_data.headers.right_bicep}}</th><td>{{ body_data.current.right_bicep}}</td><td>{{ body_data.initial.right_bicep}}</td><td>+2in 11.76%</td>
                </tr>
                <tr>
                    <th scope="col">{{ body_data.headers.chest}}</th><td>{{ body_data.current.chest}}</td><td>{{ body_data.initial.chest}}</td><td>{{ body_data.difference.chest}}</td>
                </tr>
                <tr>
                    <th scope="col">{{ body_data.headers.waist}}</th><td v-if="body_data.current.waist == '0.00' "> {{body_data.initial.waist}} </td> <td v-else>{{ body_data.current.waist}}</td>  <td>{{ body_data.initial.waist}}</td><td>{{ body_data.difference.waist}}</td>
                </tr>
                <tr>
                    <th scope="col">Hips</th><td>44</td><td>44</td><td>44</td>
                </tr>
                <tr>
                    <th scope="col">Thigh</th><td>44</td><td>44</td><td>44</td>
                </tr>
                <tr>
                    <th scope="col">Calf</th><td>44</td><td>44</td><td>44</td>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
    export default {
        props: ['user_id', 'get_parts_url'],
        data() {
            return {
                errors: [],
                bodyParts: ['neck','shoulder','chest','waist','hips','left_wrist','right_wrist','left_bicep','right_bicep','left_thigh','right_thigh','left_calf','right_calf'],
                success : false,
                update_url: BASE_URL+'/api/updatePart',
                body_data: [],
                measureForm: {
                    partInches: '',
                    partSub: ''
                },

            }
        },
        methods: {
            getData(){
                axios.post(this.get_parts_url, {
                    id: this.user_id,
                })
                    .then((response )=>{
                        //console.log(response.data);
                        this.body_data = response.data.bodyMeasurements ;
                        console.log(this.body_data);
                        this.errors = [];
                        this.success = true;

                    }).catch((error)=>{
                    if (ENVIRONMENT === "local") {
                        console.log(error);
                    }
                });
            },
            updateUserPart(){
                window.axios.post(BASE_URL+'/api/updatePart', {
                    part: this.measureForm.part,
                    measurement: this.measureForm.partInches+'.'+this.measureForm.partSub,
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
        },
        mounted() {
            console.log('Component mounted.');
            this.getData();
        }
    }
</script>
