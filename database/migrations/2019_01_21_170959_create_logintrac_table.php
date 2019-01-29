<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateLogintracTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('logintrac', function(Blueprint $table)
		{
			$table->integer('loginID', true);
			$table->timestamp('logintime')->default(DB::raw('CURRENT_TIMESTAMP'));
			$table->integer('loginIP')->unsigned();
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
		Schema::drop('logintrac');
	}

}
