<?php

namespace App\Controllers;

use App\Models\HomeModel;

class Home extends BaseController
{
	protected $homeModel;
	public function __construct()
	{
		$this->homeModel = new HomeModel();
	}

	public function index()
	{
		$home = $this->homeModel->findAll();
		var_dump($home);

		return view('killjoy/index');
	}
	public function create()
	{
		$data = [
			'title' =>'form pendaftaran killjoy Bootcamp'
		];

		return view('killjoy/create');
	}

	public function save(){
		$this->homeModel->save([
			'nama' => $this->request->getVar('nama'),
			'email' => $this->request->getVar('email'),
			'jeniskelamin' => $this->request->getVar('jeniskelamin'),
			'agama' => $this->request->getVar('agama'),
			'alamat' => $this->request->getVar('alamat'),
			'nick' => $this->request->getVar('nick'),
			'hastag' => $this->request->getVar('hastag'),
			'hero' => $this->request->getVar('hero'),
			'server' => $this->request->getVar('server'),
		]);

		session()->setFlashdata('pesan','Data berhasil ditambahkan');
		
		return redirect()->to('/home');
	}
}
