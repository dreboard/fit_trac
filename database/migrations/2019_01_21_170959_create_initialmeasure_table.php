<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

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
			$table->integer('initialID', true);
			$table->integer('userID');
			$table->date('initialDate');
			$table->integer('initialNum');
			$table->decimal('Neck', 7, 3)->default(0.000);
			$table->decimal('Shoulder', 7, 3)->default(0.000);
			$table->decimal('Chest', 7, 3)->default(0.000);
			$table->decimal('Waist', 7, 3)->default(0.000);
			$table->decimal('Hips', 7, 3)->default(0.000);
			$table->decimal('Left_Wrist', 7, 3)->default(0.000);
			$table->decimal('Right_Wrist', 7, 3)->default(0.000);
			$table->decimal('Left_Bicep', 7, 3)->default(0.000);
			$table->decimal('Right_Bicep', 7, 3)->default(0.000);
			$table->decimal('Left_Thigh', 7, 3)->default(0.000);
			$table->decimal('Right_Thigh', 7, 3)->default(0.000);
			$table->decimal('Left_Calf', 7, 3)->default(0.000);
			$table->decimal('Right_Calf', 7, 3)->default(0.000);
		});
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
