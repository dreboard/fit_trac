<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateEventdayTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('eventday', function(Blueprint $table)
		{
			$table->integer('eventDayID', true);
			$table->integer('eventID');
			$table->date('eventDay');
			$table->time('eventStartTime')->nullable();
			$table->time('eventEndTime')->nullable();
			$table->integer('dayNumber');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('eventday');
	}

}
