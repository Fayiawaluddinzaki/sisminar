<?php

namespace App\Controllers;
// use App\Models\SeminarModel;
use App\Models\UserModel;
use App\Controllers\BaseController;

class Seminar extends BaseController
{
	protected $SModel;
	public function __construct()
	{
		// $this->SModel = new SeminarModel();
		$this->UModel = new UserModel();
		
	}

	public function index()
	{
		$mod= $this->UModel->findAll();
		$data=[
			'simpan'=>$mod,
		];

		return view('seminar/index',$data);
	}

	public function daftar()
	{
		// $mod= $this->SemModel->findAll();
			// $db=\Config\Database::connect();
			// $builder = $db->table('users');
			// $builder->select('users.id as userid, username, email, name');
			// $builder->join('auth_groups_users', 'auth_groups_users.users_id = users.id');
			// $builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
			// $query = $builder->get()
			$mod= $this->UModel->findAll();
			$data=[
				'user'=>$mod,
				];
		// $mod= $this->SModel->findAll();
		// $data=[
		// 	'simpan'=>$mod,
		// ];
		return view('admin/daftar',$data);
		// dd($data);
	}

	public function tambah()
	{
		session();
		$tdata=[
			'validation'=> \Config\Services::validation()
		];
		return view('admin/tambah',$tdata);
	}

	public function save()
	{
		// dd($this->request->getVar());
		// validasi input
		if(!$this->validate([
			'firtsname'=>'required',
			'lastname'=>'required',
		])){
			$validation=\Config\Services::validation();
			return redirect()->to('/profile')->withInput()->with('validation',$validation);
			// $data['valid']=$valid
			// return view('/tambah',$data)
		}
		$this->UModel->save([
			'firstname'=>$this->request->getVar('firtsname'),
			'lastname'=>$this->request->getVar('lastname'),
			// 'jeniskelamin'=>$this->request->getVar('jeniskelamin'),
			// 'email'=>$this->request->getVar('email'),
			// 'tanggal'=>$this->request->getVar('tanggal'),
		]);
		// session()->setFlashdata('pesan','Data berhasil ditambah');
		return redirect()->to('/profile');
	}

	public function hapus($id)
	{
		$this->UModel->delete($id);
		return redirect()->to('/daftar');
	}

	public function edit($id)
	{
		$data=[
			'validation'=> \Config\Services::validation(),
			'edit'=>$this->UModel->find($id)
		];
		return view('admin/edit',$data);
	}

	public function update($id)
	{
		// dd($this->request->getVar());
		
		$this->UModel->save([
			'id'=>$id,
			'firtsname'=>$this->request->getVar('firtsname'),
			'lastname'=>$this->request->getVar('lastname'),
			// 'jeniskelamin'=>$this->request->getVar('jeniskelamin'),
			// 'email'=>$this->request->getVar('email'),
			// 'tanggal'=>$this->request->getVar('tanggal'),
		]);
		// session()->setFlashdata('pesan','Data berhasil diupdate');
		return redirect()->to('/daftar');
	}

	public function sertifikat()
	{
		return view('sertifikat/index');
	}

	// public function grafik()
	// {
	// 	// $chart= $this->DModel->get_destination();
	// 	$data=[
	// 		'chart'=>$this->DModel->getTujuan()
	// 	];
	// 	return view('home/grafik2',$data);
	// 	// return view('home/grafik');
	// }
}