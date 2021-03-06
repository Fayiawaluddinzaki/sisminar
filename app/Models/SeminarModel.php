<?php

namespace App\Models;

use CodeIgniter\Model;

class SeminarModel extends Model
{
	protected $table      = 'seminar';
    protected $primaryKey = 'id';
    protected $allowedFields = ['nama', 'kotaasal', 'jeniskelamin', 'email','tanggal'];
	
	public function getSeminar()
	{
		return $this->db->table('seminar')->get()->getResultArray();
	}

	// protected $DBGroup              = 'default';
	// protected $table                = 'seminars';
	// protected $primaryKey           = 'id';
	// protected $useAutoIncrement     = true;
	// protected $insertID             = 0;
	// protected $returnType           = 'array';
	// protected $useSoftDelete        = false;
	// protected $protectFields        = true;
	// protected $allowedFields        = [];

	// // Dates
	// protected $useTimestamps        = false;
	// protected $dateFormat           = 'datetime';
	// protected $createdField         = 'created_at';
	// protected $updatedField         = 'updated_at';
	// protected $deletedField         = 'deleted_at';

	// // Validation
	// protected $validationRules      = [];
	// protected $validationMessages   = [];
	// protected $skipValidation       = false;
	// protected $cleanValidationRules = true;

	// // Callbacks
	// protected $allowCallbacks       = true;
	// protected $beforeInsert         = [];
	// protected $afterInsert          = [];
	// protected $beforeUpdate         = [];
	// protected $afterUpdate          = [];
	// protected $beforeFind           = [];
	// protected $afterFind            = [];
	// protected $beforeDelete         = [];
	// protected $afterDelete          = [];
}
