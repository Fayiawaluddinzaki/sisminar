<?php

namespace App\Controllers;
use App\Models\SeminarModel;
use App\Models\UserModel;
use App\Controllers\BaseController;

class Admin extends BaseController
{
	protected $SemModel;
	public function __construct()
	{
		$this->SemModel = new SeminarModel();
		$this->UModel = new UserModel();
	}
	 	
	public function profile()
	{
		return view('admin/profile');
	}
	
	public function index()
	{
			$mod= $this->SemModel->findAll();
			$users =  new \Myth\Auth\Models\UserModel();
			// $db=\Config\Database::connect();
			// $builder = $db->table('users');
			// $builder->select('users.id as userid, username, email, name');
			// $builder->join('auth_groups_users', 'auth_groups_users.users_id = users.id');
			// $builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
			// $query = $builder->get();
			// $query = $db->query('SELECT SUM(id) FROM users AS total');

			$data=[
				'simpan'=>$mod,
				'title'=>'Control Page',
				'user'=>$users->findAll(),
				// 'user'=>$query->getResult(),
				'chart'=>$this->UModel->get_user(),
				// 'total'=>$query
				];
			return view('admin/index',$data);
	}

	public function export()
	{
		// $mod= $this->SemModel->findAll();
		$mod= $this->UModel->findAll();
		$data=[
			'user'=>$mod,
			];
		return view('admin/export',$data);
	}

	// public function coba()
	// {
	// 	return view('stisla/default');
	// }
}