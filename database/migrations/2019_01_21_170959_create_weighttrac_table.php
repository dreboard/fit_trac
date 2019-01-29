<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateWeighttracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('weighttrac', function(Blueprint $table)
		{
			$table->integer('weighttracID', true);
			$table->integer('exerciseID');
			$table->integer('workoutID')->default(0);
			$table->integer('programID')->default(0);
			$table->integer('setNum')->nullable()->default(0);
			$table->integer('reps')->default(0);
			$table->integer('weight')->default(0);
			$table->integer('userID');
			$table->date('workDay');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('weighttrac');
	}

}
