<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateForumAnswerTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('forum_answer', function(Blueprint $table)
		{
			$table->integer('a_id', true);
			$table->integer('question_id')->default(0);
			$table->integer('userID')->default(0);
			$table->text('a_answer');
			$table->dateTime('a_datetime');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('forum_answer');
	}

}
