<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateClubTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('club', function(Blueprint $table)
		{
			$table->integer('clubID', true);
			$table->string('clubName');
			$table->string('clubType', 100)->nullable();
			$table->string('clubAddress')->nullable();
			$table->string('clubCity', 100)->nullable();
			$table->string('clubState', 22)->nullable();
			$table->string('clubZip', 15)->nullable();
			$table->string('clubPhone', 22)->nullable();
			$table->string('clubEmail', 100);
			$table->string('clubWebsite')->nullable();
			$table->text('clubDescription', 65535)->nullable();
			$table->dateTime('enterDate');
			$table->integer('userID');
			$table->string('clubLevel', 20)->default('Private');
			$table->integer('approval')->default(0);
			$table->string('youtube')->default('None');
			$table->string('facebook')->default('None');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('club');
	}

}
