<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateRecoverTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('recover', function(Blueprint $table)
		{
			$table->integer('recoverID', true);
			$table->string('email');
			$table->dateTime('recoverDate');
			$table->string('passLink');
			$table->integer('recoverIP')->unsigned();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('recover');
	}

}
