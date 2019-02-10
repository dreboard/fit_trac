<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateMyweightTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('myweight', function(Blueprint $table)
		{
            $table->increments('id')->unsigned();
			$table->integer('weight')->nullable()->default(0);
			$table->integer('user_id');
			$table->date('enterDate');
            $table->timestamps();
		});

		DB::statement("
		INSERT INTO `myweight` (`id`, `weight`, `user_id`, `enterDate`) VALUES
            (1, 219, 1, '2019-01-08'),
            (2, 220, 1, '2016-01-22'),
            (3, 240, 1, '2019-01-10'),
            (4, 241, 1, '2012-10-21'),
            (5, 239, 1, '2012-09-21'),
            (6, 229, 1, '2012-01-21'),
            (7, 234, 1, '2012-02-21'),
            (8, 235, 1, '2012-03-21'),
            (9, 237, 1, '2012-04-21'),
            (10, 235, 1, '2012-05-21'),
            (11, 243, 1, '2012-10-28'),
            (12, 243, 1, '2012-10-28'),
            (13, 243, 1, '2012-10-28'),
            (14, 243, 1, '2012-10-28'),
            (15, 233, 1, '2013-04-28'),
            (16, 239, 1, '2013-05-07'),
            (17, 243, 1, '2013-06-18'),
            (18, 238, 1, '2013-07-24'),
            (19, 241, 1, '2013-08-24'),
            (20, 244, 1, '2013-09-19'),
            (21, 246, 1, '2013-10-19'),
            (22, 244, 1, '2013-12-04'),
            (23, 220, 1, '2019-01-10'),
            (24, 224, 1, '2019-01-28'),
            (25, 240, 1, '2019-01-29');
		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('myweight');
	}

}
