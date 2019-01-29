<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateP90xtracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('p90xtrac', function(Blueprint $table)
		{
			$table->integer('p90xtracID', true);
			$table->string('type', 100)->default('P90X');
			$table->string('workout');
			$table->integer('userID');
			$table->date('workDay');
			$table->time('length');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('p90xtrac');
	}

}
