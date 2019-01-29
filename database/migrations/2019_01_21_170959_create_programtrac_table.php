<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateProgramtracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('programtrac', function(Blueprint $table)
		{
			$table->integer('programtracID', true);
			$table->integer('programID');
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
		Schema::drop('programtrac');
	}

}
