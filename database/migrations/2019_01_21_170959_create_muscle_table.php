<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class CreateMuscleTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('muscle', function(Blueprint $table)
		{
			$table->integer('muscleID', true);
			$table->string('muscle');
			$table->string('muscleGroup');
		});

		DB::statement("
		INSERT INTO `muscle` (`muscleID`, `muscle`, `muscleGroup`) VALUES
            (1, 'Abdominals', 'Core'),
            (2, 'Lats', 'Upper'),
            (3, 'Abductors', 'Core'),
            (4, 'Lower Back', 'Core'),
            (5, 'Adductors', 'Core'),
            (6, 'Middle Back', 'Back'),
            (7, 'Biceps', 'Upper'),
            (8, 'Neck', 'Upper'),
            (9, 'Chest', 'Upper'),
            (10, 'Shoulders', 'Upper'),
            (11, 'Forearms', 'Upper'),
            (12, 'Traps', 'Upper'),
            (13, 'Triceps', 'Upper'),
            (14, 'Calves', 'Lower'),
            (15, 'Quadriceps', 'Lower'),
            (16, 'Glutes', 'Lower'),
            (17, 'Hamstrings', 'Lower');
		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('muscle');
	}

}
