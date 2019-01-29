<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateEventTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('event', function(Blueprint $table)
		{
			$table->integer('eventID', true);
			$table->integer('userID');
			$table->integer('clubID')->default(0);
			$table->date('eventStartDate');
			$table->string('eventTitle');
			$table->text('eventDescription', 65535);
			$table->date('eventEndDate')->nullable();
			$table->time('eventStartTime')->default('00:00:00');
			$table->time('eventEndTime')->default('00:00:00');
			$table->string('eventType', 50)->default('General');
			$table->integer('seats')->default(999);
			$table->integer('eventAddedBy')->default(0);
			$table->string('status', 10)->default('Active');
			$table->string('contact', 100)->nullable();
			$table->string('address')->nullable()->default('590 Longbow Drive');
			$table->string('city', 50)->default('Maumee');
			$table->string('state', 20)->default('Ohio');
			$table->string('zip', 12)->default('43537');
			$table->string('email', 100)->default('None');
			$table->string('phone', 20)->default('419-535-3222');
			$table->dateTime('addedDate');
			$table->integer('multiDay')->default(0);
			$table->string('frequency', 30)->default('None');
			$table->string('recurrence', 50)->default('None');
			$table->integer('multiDayNum')->default(0);
			$table->string('cost', 10)->default('Free');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('event');
	}

}
