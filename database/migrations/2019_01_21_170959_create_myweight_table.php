<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMyweightTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('myweight', function(Blueprint $table)
		{
			$table->integer('weight')->nullable()->default(0);
			$table->integer('userID');
			$table->date('enterDate');
			$table->integer('measurementID', true);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('myweight');
	}

}
