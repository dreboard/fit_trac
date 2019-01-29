<template>


    <div id="calendar"></div>
</template>

<script>
    require('fullcalendar');

    export default {
        props: ['events_url', 'user_id'],
        data() {
            return {
                userEvents: [],
            }
        },
        methods: {
          getUserEvents(){
              axios.get(this.events_url)
                  .then((response)=>{
                      this.userEvents = response.data.events;
                      this.userEvents.forEach( function( item ) {
                          console.log( item.eventTitle );
                      });

                      console.log(response.data.events);

                  }).catch((error)=>{
                  if (ENVIRONMENT === "local") {
                      console.log(error);
                  }
              });
          }
        },
        created(){
            this.getUserEvents();
            this.userEvents.forEach( function( item ) {
                //console.log( item );
            });
            //console.log(this.userEvents);
        },
        mounted() {
            $('#calendar4').fullCalendar({
                themeSystem: 'bootstrap4',
                header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay,listMonth'
                },
                weekNumbers: true,
                eventLimit: true, // allow "more" link when too many events
                events: 'https://fullcalendar.io/demo-events.json'
                //events: []
            });
        }
    }

</script>