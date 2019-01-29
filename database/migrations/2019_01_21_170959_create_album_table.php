<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAlbumTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('album', function(Blueprint $table)
		{
			$table->integer('albumID', true);
			$table->string('albumName', 50)->default('None');
			$table->integer('userID');
			$table->integer('clubID')->default(0);
			$table->integer('groupID')->default(0);
			$table->string('imgCategory', 100)->default('None');
			$table->text('albumDescription', 65535)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('album');
	}

}
