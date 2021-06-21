<?php

namespace App\Controllers;
use App\Models\SeminarModel;
use App\Controllers\BaseController;

class User extends BaseController
{
    protected $SemModel;
	public function __construct()
	{
		$this->SemModel = new SeminarModel();
	}

	public function sertif()
	{
		return view('user/sertif');
	}

	public function index()
	{
		$mod= $this->SemModel->findAll();
		$data=[
			'simpan'=>$mod,
		];
		return view('user/index',$data);
	}

	public function about()
	{
		return view('seminar/about');
	}

	public function soon()
	{
		return view('seminar/soon');
	}

	public function contact()
	{
		return view('seminar/contact');
	}
}
