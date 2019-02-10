<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class CreateInitialmeasureTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('initialmeasure', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('user_id');
			$table->date('initialDate');
			$table->integer('weight')->default(0);
			$table->decimal('neck', 7, 3)->default(0.000);
			$table->decimal('shoulder', 7, 3)->default(0.000);
			$table->decimal('chest', 7, 3)->default(0.000);
			$table->decimal('waist', 7, 3)->default(0.000);
			$table->decimal('hips', 7, 3)->default(0.000);
			$table->decimal('left_wrist', 7, 3)->default(0.000);
			$table->decimal('right_wrist', 7, 3)->default(0.000);
			$table->decimal('left_bicep', 7, 3)->default(0.000);
			$table->decimal('right_bicep', 7, 3)->default(0.000);
			$table->decimal('left_thigh', 7, 3)->default(0.000);
			$table->decimal('right_thigh', 7, 3)->default(0.000);
			$table->decimal('left_calf', 7, 3)->default(0.000);
			$table->decimal('right_calf', 7, 3)->default(0.000);
		});

        DB::statement("
            INSERT INTO `initialmeasure`
              (`id`, `user_id`, `initialDate`, `weight`, `neck`, `shoulder`, `chest`, `waist`, `hips`, `left_wrist`, `right_wrist`, `left_bicep`, `right_bicep`, `left_thigh`, `right_thigh`, `left_calf`, `right_calf`)
              VALUES(NULL, '1', '2017-01-01', '244', '17.000', '17.000', '42.000', '40.000', '39.000', '7.250', '7.250', '19.250', '19.250', '23.000', '23.000', '16.250', '16.250');
        ");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('initialmeasure');
	}

}
