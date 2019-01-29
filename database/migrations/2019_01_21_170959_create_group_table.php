<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGroupTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('group', function(Blueprint $table)
		{
			$table->integer('groupID', true);
			$table->string('groupName');
			$table->string('groupType', 100)->nullable();
			$table->string('groupAddress')->nullable();
			$table->string('groupCity', 100)->nullable();
			$table->string('groupState', 22)->nullable();
			$table->string('groupZip', 15)->nullable();
			$table->string('groupPhone', 22)->nullable();
			$table->string('groupEmail', 100);
			$table->string('groupWebsite')->nullable();
			$table->text('groupDescription', 65535)->nullable();
			$table->dateTime('enterDate');
			$table->integer('userID');
			$table->string('groupLevel', 20)->default('Private');
			$table->integer('approval')->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('group');
	}

}
