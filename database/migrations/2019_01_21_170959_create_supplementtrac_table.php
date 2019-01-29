<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSupplementtracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('supplementtrac', function(Blueprint $table)
		{
			$table->integer('supplementtracID', true);
			$table->integer('supplementID');
			$table->date('enterDate');
			$table->date('doneDate')->nullable();
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
		Schema::drop('supplementtrac');
	}

}
