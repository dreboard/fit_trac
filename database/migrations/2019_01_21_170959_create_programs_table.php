<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class CreateProgramsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('programs', function(Blueprint $table)
		{
			$table->integer('programID', true);
			$table->string('programName');
			$table->string('programType', 100)->default('All');
			$table->text('muscleID', 65535)->nullable();
			$table->integer('length')->nullable();
			$table->text('description', 65535);
		});

        DB::statement( "
            INSERT INTO `programs` (`programID`, `programName`, `programType`, `muscleID`, `length`, `description`) VALUES
            (1, '4 Week Pyramid Bench Program', 'Pyramid', '1', 28, '<h3><strong>Week 1:</strong>&nbsp;<strong>Full Pyramid</strong></h3>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x8 - 75 percent of max</li>\r\n  <li>1x6 - 85 percent of max</li>\r\n  <li>1x1 - 95 percent of max</li>\r\n  <li>1x6 - 85 percent of max</li>\r\n  <li>1x8 - 75 percent of max</li>\r\n</ul>\r\n<h3><strong>Week 2:</strong>&nbsp;<strong>Reverse Pyramid</strong></h3>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x3 - 90 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x8 - 70 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x3 - 90 percent of max</li>\r\n</ul>\r\n<h3><strong>Week 3:</strong>&nbsp;<strong>Full Pyramid</strong></h3>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x8 - 70 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x4 - 90 percent of max</li>\r\n  <li>1x1 - 99 percent of max</li>\r\n  <li>1x4 - 90 percent of max</li>\r\n  <li>1x6 - 80 percent of max</li>\r\n  <li>1x8 - 70 percent of max</li>\r\n</ul>\r\n<h4><strong>Week 4:</strong>&nbsp;<strong>Reverse Pyramid</strong></h4>\r\n<ul>\r\n  <li><em>Warm-up</em></li>\r\n  <li>1x2 - 95 percent of max</li>\r\n  <li>1x4 - 85 percent of max</li>\r\n  <li>1x6 - 75 percent of max</li>\r\n  <li>1x8 - 65 percent of max</li>\r\n  <li>1x6 - 75 percent of max</li>\r\n  <li>1x4 - 85 percent of max</li>\r\n  <li>1x2 - 95 percent of max</li>\r\n</ul>'),
            (2, 'The Arnold Schwarzenegger Workout Routine', 'All', '1', 0, '<p><strong>Monday &amp; Thursday</strong><br />\r\n</p>\r\n<p><strong>Chest</strong> - Pullovers, Bench Press, Incline Press<br />\r\n  <strong>Back</strong> - Chin-ups ( Until fail ), Bent Over Rows<br />\r\n<strong>Abs</strong> - Leg Raises ( 5 sets until fail )</p>\r\n<p><strong>Tuesday &amp; Friday</strong></p>\r\n<p><strong>Shoulders</strong> - Upright Rows, Dumbbell Lateral Raises, Barbell Clean and Press, Arnold Press<br />\r\n  <strong>Arms</strong> - Seated Dumbbell Curls, Standing Barbell Curls, Narrow-Grip Bench Press, Standing Triceps Extensions with Barbell<br />\r\n  <strong>Forearms</strong> - Wrist Curls, Reverse Wrist Curls<br />\r\n<strong>Abs</strong> - Incline Sit ups ( 4 sets until fail )</p>\r\n<p><strong>Wednesday &amp; Saturday</strong></p>\r\n<p><strong>Thighs</strong> - Squat, Leg Curls, Lunges<br />\r\n  <strong>Calves</strong> - Standing Or Sitting Calf Raises ( 4 sets until fail )<br />\r\n  <strong>Lower Back</strong> - Straight/Stiff Leg Deadlifts (see explanation below), Good Mornings<br />\r\n<strong>Abs</strong> - Leg Raises ( 4 sets until fail )</p>'),
            (3, 'Chest, Shoulders & Triceps', 'Weightlifting', '9,10,13', NULL, 'Chest, Shoulders & Triceps'),
            (4, 'Back & Biceps', 'Weightlifting', '4,6,7', NULL, 'Pull (Back & Biceps)'),
            (5, 'Back & Lats', 'Weightlifting', '2,4,6', NULL, 'Back & Lats'),
            (6, 'Chest & Shoulders', 'Weightlifting', '9,13', NULL, 'Chest & Shoulders'),
            (7, 'Legs', 'Weightlifting', '3,5,14,15,17', NULL, 'Legs'),
            (8, 'Abs', 'All', '1', NULL, 'Core'),
            (9, 'Chest & Back', 'Weightlifting', '4,6,9', NULL, 'Chest & Back'),
            (10, 'Biceps, Forearms & Triceps', 'Weightlifting', '7,11,13', NULL, 'Arms (Biceps, Forearms & Triceps)'),
            (11, 'Shoulders & Legs', 'Weightlifting', '3,5,10,14,15,17', NULL, 'Shoulders & Legs'),
            (12, 'Shoulders & Back', 'Weightlifting', '4,6,13', NULL, 'Shoulders & Back'),
            (13, 'Chest & Triceps', 'Weightlifting', '9,13', NULL, 'Chest & Triceps');
            " );
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('programs');
	}

}
