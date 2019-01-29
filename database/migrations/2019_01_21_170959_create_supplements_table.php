<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;

class CreateSupplementsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('supplements', function(Blueprint $table)
		{
			$table->integer('supplementID', true);
			$table->string('supplementName', 100);
			$table->integer('cycleOn')->default(0);
			$table->integer('cycleOff')->default(0);
		});

		DB::statement("
		INSERT INTO `supplements` (`supplementID`, `supplementName`, `cycleOn`, `cycleOff`) VALUES
            (1, 'Creatine', 0, 0),
            (2, 'Thermogenics', 42, 14),
            (3, 'Nitric Oxide', 84, 28),
            (4, 'Glutamine', 0, 0),
            (5, 'Testosterone Booster', 1, 0),
            (6, 'Protein', 0, 0);
		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('supplements');
	}

}
