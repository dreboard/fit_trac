<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateSpeedTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('speed', function(Blueprint $table)
		{
			$table->integer('speedID', true);
			$table->integer('cardioID')->default(0);
			$table->decimal('time', 7, 3)->default(0.000);
			$table->decimal('distance', 7, 3)->default(0.000);
			$table->integer('userID');
			$table->date('goalDate');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('speed');
	}

}
