<?php

use Faker\Generator as Faker;
use Carbon\Carbon;

$factory->define(App\Customer::class, function (Faker $faker) {
    return [
          'name'=>$faker->name,
          'phone'=>$faker->phoneNumber,
          'email'=>$faker->safeEmail,
          'city'=>$faker->city,
          'created_at'=>Carbon::now(),
    ];
});
