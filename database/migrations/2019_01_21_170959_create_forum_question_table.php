<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateForumQuestionTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('forum_question', function(Blueprint $table)
		{
			$table->integer('questionID', true);
			$table->string('topic');
			$table->text('detail');
			$table->string('userID', 100);
			$table->dateTime('datetime');
			$table->integer('view')->default(0);
			$table->integer('reply')->default(0);
			$table->string('coinCategory', 100)->default('None');
			$table->string('imageURL')->default('None');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('forum_question');
	}

}
