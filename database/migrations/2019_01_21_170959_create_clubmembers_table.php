<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateClubmembersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('clubmembers', function(Blueprint $table)
		{
			$table->integer('clubmemberID', true);
			$table->integer('clubID');
			$table->integer('userID');
			$table->string('clubPosition', 100);
			$table->dateTime('joinDate');
			$table->string('status', 50)->default('Active');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('clubmembers');
	}

}
