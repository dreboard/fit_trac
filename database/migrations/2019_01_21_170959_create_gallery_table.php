<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGalleryTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('gallery', function(Blueprint $table)
		{
			$table->integer('galleryID', true);
			$table->integer('eventID');
			$table->string('albumName', 50)->default('None');
			$table->string('imgTitle', 100);
			$table->text('imgDescription', 65535)->nullable();
			$table->dateTime('imgDate');
			$table->string('imgURL', 100);
			$table->string('imgName');
			$table->integer('userID');
			$table->integer('clubID')->default(0);
			$table->string('imgCategory', 100)->default('None');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('gallery');
	}

}
