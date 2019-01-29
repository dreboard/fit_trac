<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateGroupclassTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('groupclass', function(Blueprint $table)
		{
			$table->integer('groupClassID', true);
			$table->string('className', 25);
			$table->integer('instructor');
			$table->string('classtype', 20);
			$table->date('startDate');
			$table->date('endDate');
			$table->text('classDesc', 65535);
			$table->integer('classSize');
			$table->decimal('classCost', 5)->default(0.00);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('groupclass');
	}

}
