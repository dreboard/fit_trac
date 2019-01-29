<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGroupmembersTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('groupmembers', function(Blueprint $table)
		{
			$table->integer('groupmemberID', true);
			$table->integer('groupID');
			$table->integer('userID');
			$table->string('groupPosition', 100);
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
		Schema::drop('groupmembers');
	}

}
