<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->string('name');
            $table->string('email')->unique();
            $table->string('password');
            $table->string('height');
            $table->string('weight');
            $table->string('sex');
            $table->enum('plan', ['gain','lose'])->default('lose');
            $table->string('birthDate');
            $table->string('status');
            $table->integer('level')->default(1);
            $table->integer('email_verified')->default(0);
            $table->rememberToken();
            $table->timestamps();
        });

        DB::table('users')->insert([
            'name'  => 'Dre Board',
            'email'  => 'dre.board@gmail.com',
            'password' => Hash::make('temp1234'),
            'height'  => 76,
            'weight'=> 248,
            'sex' => 'm',
            'birthDate' => 1979-05-07,
            'status' => 'active',
            'level' => 4,
            'email_verified' => 1,
        ]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
