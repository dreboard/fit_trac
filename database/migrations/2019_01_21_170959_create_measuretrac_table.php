<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMeasuretracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('measuretrac', function(Blueprint $table)
		{
			$table->integer('measuretracID', true);
			$table->decimal('measurement', 7, 3);
			$table->integer('userID');
			$table->date('enterDate');
			$table->string('part', 100);
			$table->integer('initial')->default(0);
			$table->integer('employeeID')->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('measuretrac');
	}

}
