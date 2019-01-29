<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class CreateExtremeTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('extreme', function(Blueprint $table)
		{
			$table->integer('extremeID', true);
			$table->string('type', 100)->default('P90X');
			$table->string('workout');
			$table->integer('disc');
			$table->date('workDay')->nullable();
			$table->text('exercises', 65535)->nullable();
		});

		DB::statement("
		INSERT INTO `extreme` (`extremeID`, `type`, `workout`, `disc`, `workDay`, `exercises`) VALUES
            (16, 'P90X', 'Core Synergistics', 8, NULL, NULL),
            (15, 'P90X', 'Stretch', 7, NULL, NULL),
            (14, 'P90X', 'Kenpo X', 6, NULL, NULL),
            (11, 'P90X', 'Shoulders & Arms', 3, NULL, NULL),
            (12, 'P90X', 'Yoga X', 4, NULL, NULL),
            (13, 'P90X', 'Legs & Back', 5, NULL, NULL),
            (10, 'P90X', 'Plyometrics', 2, NULL, NULL),
            (9, 'P90X', 'Chest & Back', 1, NULL, 'Standard Push up,Wide Front Pull up,Military Push up,Reverse Grip Chin up,Wide Fly Push Up,Closed Grip Overhand Pull up,Decline Push up,Heavy Pants, Diamond Push up,Lawnmower,Dive Bomber Push up,Back Flyes'),
            (17, 'P90X', 'Chest, Shoulders & Triceps', 9, NULL, NULL),
            (18, 'P90X', 'Back & Biceps', 10, NULL, NULL),
            (19, 'P90X', 'Cardio X', 11, NULL, NULL),
            (20, 'P90X', 'Ab Ripper X', 12, NULL, 'In and Outs,Forward Seated Bicycle,Reverse Seated Bicycle,Seated Crunchy Frog,Wide Leg Sit-ups,Fifer Scissors,Hip Rock n Raise,Pulse Ups,V up Roll up,Oblique V up,Leg Climbs,Mason Twist');

		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('extreme');
	}

}
