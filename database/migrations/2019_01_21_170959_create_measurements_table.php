<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class CreateMeasurementsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('measurements', function(Blueprint $table)
		{
            $table->integer('id', true);
            $table->decimal('measurement', 7, 3);
            $table->integer('user_id');
            $table->date('enterDate');
            $table->string('part', 100);
		});
		
		DB::statement("
		    INSERT INTO `measurements` (`id`, `measurement`, `user_id`, `enterDate`, `part`) 
		    VALUES 
		    (NULL, '17', '1', '2019-02-06', 'neck'), (NULL, '37', '1', '2019-02-06', 'waist');
		");
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('measurements');
	}

}
