<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Seminar extends Migration
{
	public function up()
	{
		$this->forge->addField([
			'id'	=>[
				'type'           => 'INT',
				'constraint'     => 3,
				'unsigned'       => true,
				'auto_increment' => true,
			],
			'nama'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '50',
			],
			'kotaasal'      => [
				'type'           => 'VARCHAR',
				'constraint'     => '50',
			],
			'jeniskelamin' => [
				'type'           => 'VARCHAR',
				'constraint'     => '50',
			],
			'email' => [
				'type'           => 'VARCHAR',
				'constraint'	 => '50',
			],
			'tanggal'      => [
				'type'           => 'date',
			],
		]);

			// Membuat primary key
			$this->forge->addKey('id', TRUE);

			// Membuat tabel news
			$this->forge->createTable('seminar', TRUE);
	}

	public function down()
	{
		$this->forge->dropTable('seminar');
	}
}
