<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class Seminar extends Seeder
{
	public function run()
	{
		$faker = \Faker\Factory::create('id_ID');
			for($i = 0; $i < 25; $i++){
				$data = [
						'nama'          => $faker->name,
						'email'         => $faker->safeEmail,
						'kotaasal'      => $faker->city,
						'jeniskelamin'  => $faker->titleMale,
						'tanggal'          => $faker->date
							];
							$this->db->table('seminar')->insert($data);
					}
	}
}
