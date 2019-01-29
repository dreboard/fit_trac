<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCardiotracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cardiotrac', function(Blueprint $table)
		{
			$table->integer('cardiotracID', true);
			$table->integer('cardioID');
			$table->decimal('duration', 7)->default(0.00);
			$table->string('unit', 100)->nullable();
			$table->decimal('distance', 7, 3)->default(0.000);
			$table->integer('laps')->default(0);
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
		Schema::drop('cardiotrac');
	}

}
