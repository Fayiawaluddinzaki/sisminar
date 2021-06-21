<?php
namespace App\Controllers;
use App\Models\SeminarModel;
class Home extends BaseController
{
    protected $SemModel;
	public function __construct()
	{
		$this->SemModel = new SeminarModel();
	}

    public function save()
	{
		// validasi input
		if(!$this->validate([
			'nama'=>'required',
			'kotaasal'=>'required',
			'jeniskelamin'=>'required',
			'email'=>'required',
			'tanggal'=>'required',
		])){
			$validation=\Config\Services::validation();
			return redirect()->to('/tambah')->withInput()->with('validation',$validation);
			// $data['valid']=$valid
			// return view('/tambah',$data)
		}
		$this->SemModel->save([
			'nama'=>$this->request->getVar('nama'),
			'kotaasal'=>$this->request->getVar('kotaasal'),
			'jeniskelamin'=>$this->request->getVar('jeniskelamin'),
			'email'=>$this->request->getVar('email'),
			'tanggal'=>$this->request->getVar('tanggal'),
		]);
		// session()->setFlashdata('pesan','Data berhasil ditambah');
		// return redirect()->to('/');
		

		$mod= $this->SemModel->findAll();
		$data=[
			'simpan'=>$mod,
		];

        return view('seminar/index',$data);
	}
	
	// public function public()
	// {
	// 	$mod= $this->SemModel->findAll();
	// 	$data=[
	// 		'simpan'=>$mod,
	// 	];
  
	// 	return view('admin/index',$data);
	// }

	public function print()
	{
		return view("sertifikat/print");
	}
}

