<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class CreateExercisesTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('exercises', function(Blueprint $table)
		{
			$table->integer('exerciseID', true);
			$table->integer('muscleID');
			$table->string('exercise');
			$table->enum('bodyPart', array('Abdominals','Arms','Back','Biceps','Calves','Chest','Forearms','Glutes','Hamstrings','Lats','Legs','Neck','Quadriceps','Shoulders','Traps','Triceps'))->default('Quadriceps');
			$table->enum('bodyPart2', array('Abdominals','Arms','Back','Biceps','Calves','Chest','Forearms','Glutes','Hamstrings','Lats','Legs','Neck','Quadriceps','Shoulders','Traps','Triceps'))->default('Chest');
			$table->enum('equipment', array('Dumbbell','Barbell','EZ Curl Bar','Cable','Machine','Body','Kettlebell','Band'))->default('Dumbbell');
			$table->text('description', 65535)->nullable();
			$table->enum('type', array('Compound','Isolation'))->default('Isolation');
			$table->text('video', 65535)->nullable();
			$table->string('imageURL')->default('blank.jpg');
		});

		DB::statement("
		INSERT INTO `exercises` (`exerciseID`, `muscleID`, `exercise`, `bodyPart`, `bodyPart2`, `equipment`, `description`, `type`, `video`, `imageURL`) VALUES
            (1, 1, 'Bench Press', 'Chest', 'Abdominals', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (2, 1, 'Fly', 'Chest', 'Abdominals', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (3, 1, 'Fly', 'Chest', 'Abdominals', 'Machine', NULL, 'Isolation', NULL, 'blank.jpg'),
            (4, 1, 'Around the Worlds', 'Chest', 'Abdominals', 'Dumbbell', NULL, 'Isolation', NULL, '4.jpg'),
            (5, 1, 'Cable Cross Over', 'Chest', 'Abdominals', 'Cable', NULL, 'Isolation', NULL, '5.jpg'),
            (6, 1, 'Wide Grip Decline Pullover', 'Chest', 'Abdominals', 'Barbell', NULL, 'Compound', NULL, '6.jpg'),
            (7, 1, 'Decline Bench Press', 'Chest', 'Abdominals', 'Dumbbell', NULL, 'Compound', NULL, '8.jpg'),
            (8, 1, 'Alternating Floor Press', 'Chest', 'Abdominals', 'Kettlebell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (9, 1, 'Extended Range One-Arm Kettlebell Floor Press', 'Chest', 'Abdominals', 'Kettlebell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (10, 1, 'Leg-Over Floor Press', 'Chest', 'Abdominals', 'Kettlebell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (11, 1, 'One-Arm Kettlebell Floor Press', 'Chest', 'Abdominals', 'Kettlebell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (12, 1, 'Plyo Kettlebell Pushups', 'Chest', 'Abdominals', 'Kettlebell', NULL, 'Compound', NULL, 'blank.jpg'),
            (13, 1, 'Bench Press', 'Chest', 'Abdominals', 'Band', NULL, 'Compound', NULL, 'blank.jpg'),
            (15, 1, 'Bench Press - Medium Grip', 'Chest', 'Chest', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (16, 1, 'Incline Bench Press - Medium Grip', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (17, 1, 'Decline Bench Press', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (18, 1, 'Front Raise And Pullover', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (19, 1, 'Neck Press', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (20, 1, 'Wide-Grip Bench Press', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (21, 1, 'Wide-Grip Decline Bench Press', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (22, 1, 'Wide-Grip Decline Pullover', 'Chest', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (23, 10, 'Alternating Deltoid Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (24, 10, 'Arnold Dumbbell Press', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (25, 10, 'Barbell Incline Shoulder Raise', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (26, 10, 'Barbell Rear Delt Row', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (27, 10, 'Barbell Shoulder Press', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (28, 10, 'Bent Over Dumbbell Rear Delt Raise With Head On Bench', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (29, 10, 'Bent Over Low-Pulley Side Lateral', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (30, 10, 'Bradford/Rocky Presses', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (31, 10, 'Cable Internal Rotation', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (32, 10, 'Cable Rope Rear-Delt Rows', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (33, 10, 'Cable Shoulder Press', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (34, 10, 'Clean and Jerk', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (35, 10, 'Clean and Press', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (36, 10, 'Crucifix', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (37, 10, 'Cuban Press', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (38, 10, 'Dumbbell Incline Shoulder Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (39, 10, 'Dumbbell Lying Rear Lateral Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (40, 10, 'Dumbbell One-Arm Shoulder Press', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (41, 10, 'Dumbbell One-Arm Upright Row', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (42, 10, 'Dumbbell Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (43, 10, 'Dumbbell Shoulder Press', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (44, 10, 'External Rotation', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (45, 10, 'Face Pull', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (46, 10, 'Front Raise', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (47, 10, 'Front Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (48, 10, 'Front Raise', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (49, 10, 'Standing Palms-In Press', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (50, 10, 'Iron Cross', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (51, 10, 'Low Pulley Row To Neck', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (52, 10, 'Lying One-Arm Lateral Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (53, 10, 'One-Arm Incline Lateral Raise', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (54, 10, 'Reverse Flyes', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (55, 10, 'Reverse Flyes', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (56, 10, 'Reverse Flyes', 'Shoulders', 'Shoulders', 'Machine', NULL, 'Isolation', NULL, 'blank.jpg'),
            (57, 10, 'Upright Row', 'Shoulders', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (58, 10, 'Upright Row', 'Shoulders', 'Shoulders', 'Dumbbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (59, 10, 'Upright Row', 'Shoulders', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (60, 13, 'Bench Dips', 'Triceps', 'Shoulders', 'Body', NULL, 'Compound', NULL, 'blank.jpg'),
            (61, 13, 'Close-Grip Bench Press', 'Triceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (62, 13, 'Decline Close-Grip Bench To Skull Crusher', 'Triceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (63, 13, 'Decline Triceps Extension', 'Triceps', 'Shoulders', 'EZ Curl Bar', NULL, 'Compound', NULL, 'blank.jpg'),
            (64, 13, 'Decline Triceps Extension', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (65, 13, 'Floor Press', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (66, 13, 'Floor Press', 'Triceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (67, 13, 'Incline Barbell Triceps Extension', 'Triceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (68, 13, 'Lying Close-Grip Barbell Triceps Extension Behind The Head', 'Triceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (69, 13, 'Reverse Triceps Bench Press', 'Triceps', 'Shoulders', 'Barbell', 'Shoulders', 'Compound', NULL, 'blank.jpg'),
            (70, 13, 'Standing Overhead Barbell Triceps Extension', 'Triceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (71, 13, 'Cable Incline Triceps Extension', 'Triceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (72, 13, 'Cable Standing Tricep Extension', 'Triceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (73, 13, 'Triceps Pushdown', 'Triceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (74, 13, 'Reverse Grip Pushdown', 'Triceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (75, 13, 'Lying Dumbbell Tricep Extension', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (76, 13, 'Seated Bent-Over Dumbbell Triceps Extension', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (77, 13, 'Seated Dumbbell Triceps Press', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (78, 13, 'Tate Press', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (79, 13, 'Tricep Dumbbell Kickback', 'Triceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (80, 0, 'Barbell Deadlift', 'Back', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (81, 0, 'Bent Over Barbell Row', 'Back', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (82, 0, 'Incline Bench Pull', 'Back', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (83, 0, 'Lying Cambered Barbell Row', 'Back', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (84, 0, 'Reverse Grip Bent-Over Rows', 'Back', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (85, 0, 'Seated Good Mornings', 'Back', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (86, 0, 'Stiff Leg Barbell Good Morning', 'Back', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (87, 0, 'Seated Cable Rows', 'Back', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (88, 0, 'Middle Back Shrug', 'Back', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (89, 0, 'One-Arm Dumbbell Row', 'Back', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (90, 7, 'Barbell Curl', 'Biceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (91, 7, 'Incline Barbell Curl', 'Biceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (92, 7, 'Drag Curl', 'Biceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (93, 7, 'Preacher Curl', 'Biceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (94, 7, 'Reverse Barbell Curl', 'Biceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (95, 7, 'Concentration Barbell Curl', 'Biceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (96, 7, 'Hammer Curl', 'Biceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (97, 7, 'Cross Body Hammer Curl', 'Biceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (98, 7, 'Lying Supine Dumbbell Curl', 'Biceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (99, 7, 'Inner Biceps Curl', 'Biceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (100, 7, 'Zottman Curl', 'Biceps', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (101, 7, 'Rope Hammer Curls', 'Biceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (102, 7, 'High Cable Curls', 'Biceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (103, 7, 'Lying Cable Curl', 'Biceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (104, 7, 'Overhead Cable Curl', 'Biceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (105, 7, 'Reverse Cable Curl', 'Biceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (106, 0, 'Bent-Arm Barbell Pullover', 'Lats', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (107, 0, 'Cable Incline Pushdown', 'Lats', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (108, 0, 'Lat Pulldown', 'Lats', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (109, 0, 'Full Range Lat Pulldown', 'Lats', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (110, 0, 'Straight-Arm Pulldown', 'Lats', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (111, 0, 'Wide-Grip Lat Pulldown', 'Lats', 'Shoulders', 'Dumbbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (112, 0, 'Pullups', 'Lats', 'Shoulders', 'Body', 'Shoulders', 'Compound', NULL, 'blank.jpg'),
            (113, 0, 'Wide Grip Rear Pull-Up', 'Lats', 'Shoulders', 'Body', NULL, 'Compound', NULL, 'blank.jpg'),
            (114, 1, 'Barbell Side Bend', 'Abdominals', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (115, 1, 'Cable Crunch', 'Abdominals', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (116, 1, 'Cable Reverse Crunch', 'Abdominals', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (117, 1, 'Cable Seated Crunch', 'Abdominals', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (118, 1, 'Dumbbell Side Bend', 'Abdominals', 'Shoulders', 'Dumbbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (119, 1, 'One-Arm High-Pulley Cable Side Bends', 'Abdominals', 'Abdominals', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (120, 1, 'Decline Press Sit-Up', 'Abdominals', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (121, 1, 'Standing Cable Lift', 'Abdominals', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (122, 15, 'Barbell Full Squat', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (123, 15, 'Barbell Hack Squat', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (124, 15, 'Barbell Lunge', 'Quadriceps', 'Shoulders', 'Dumbbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (125, 15, 'Barbell Side Split Squat', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (127, 15, 'Barbell Step Ups', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (128, 15, 'Box Squat', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (129, 15, 'Cable Deadlifts', 'Quadriceps', 'Shoulders', 'Cable', NULL, 'Compound', NULL, 'blank.jpg'),
            (130, 15, 'Cable Hip Adduction', 'Quadriceps', 'Shoulders', 'Cable', NULL, 'Isolation', NULL, 'blank.jpg'),
            (131, 15, 'Elevated Back Lunge', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Isolation', NULL, 'blank.jpg'),
            (132, 15, 'Frankenstein Squat', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (133, 15, 'Front Barbell Squat', 'Quadriceps', 'Shoulders', 'Barbell', NULL, 'Compound', NULL, 'blank.jpg'),
            (134, 15, 'Hack Squat', 'Quadriceps', 'Shoulders', 'Machine', NULL, 'Compound', NULL, 'blank.jpg'),
            (135, 13, 'Dips', 'Triceps', 'Chest', 'Body', NULL, 'Compound', NULL, 'blank.jpg');

		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('exercises');
	}

}
