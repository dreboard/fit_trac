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
			$table->integer('id', true);
			$table->decimal('measurement', 7, 3);
			$table->integer('user_id');
			$table->date('enterDate');
			$table->string('part', 100);
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
