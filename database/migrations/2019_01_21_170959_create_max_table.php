<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMaxTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('max', function(Blueprint $table)
		{
			$table->integer('maxID', true);
			$table->string('maxName');
			$table->integer('weight');
			$table->date('enterDate');
			$table->integer('userID');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('max');
	}

}
