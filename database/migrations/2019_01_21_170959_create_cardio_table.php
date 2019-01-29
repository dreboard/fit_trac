<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateCardioTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cardio', function(Blueprint $table)
		{
			$table->integer('cardioID', true);
			$table->string('cardioName');
			$table->string('unit');
			$table->string('type', 100);
		});

		\Illuminate\Support\Facades\DB::statement("
		INSERT INTO `cardio` (`cardioID`, `cardioName`, `unit`, `type`) VALUES
            (1, 'Running', 'Miles', 'Treadmill'),
            (2, 'Cycling', 'Miles', 'Stationary'),
            (3, 'Elliptical', 'Miles', 'Stationary'),
            (4, 'Walking', 'Miles', 'Treadmill'),
            (5, 'Stairs', 'Stairs', 'Stair Stepper'),
            (6, 'Swimming', 'Laps', 'Pool'),
            (7, 'Running', 'Miles', 'Road'),
            (8, 'Stairs', 'Stairs', 'Stairs');
		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('cardio');
	}

}
