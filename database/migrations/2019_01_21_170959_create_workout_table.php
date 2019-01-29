<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWorkoutTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('workout', function(Blueprint $table)
		{
			$table->integer('workoutID', true);
			$table->text('exercises', 65535);
			$table->integer('cardioID')->default(0);
			$table->string('muscleGroup', 100)->default('None');
			$table->date('workDay');
			$table->integer('userID');
			$table->text('note', 65535)->nullable();
			$table->string('workoutType', 100);
			$table->string('intensity', 100);
			$table->string('workoutTitle', 100);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('workout');
	}

}
