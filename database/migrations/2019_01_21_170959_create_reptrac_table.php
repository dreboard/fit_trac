<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateReptracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('reptrac', function(Blueprint $table)
		{
			$table->integer('reptracID', true);
			$table->string('type', 100)->default('weight');
			$table->integer('exerciseID');
			$table->integer('userID');
			$table->date('workDay');
			$table->integer('set');
			$table->integer('reps');
			$table->integer('weight');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('reptrac');
	}

}
