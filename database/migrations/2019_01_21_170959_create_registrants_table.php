<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateRegistrantsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('registrants', function(Blueprint $table)
		{
			$table->integer('registrantID', true);
			$table->integer('eventID');
			$table->string('first', 100);
			$table->string('last', 100);
			$table->string('email', 100);
			$table->string('phone', 20);
			$table->dateTime('regDate');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('registrants');
	}

}
