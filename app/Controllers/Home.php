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
	public function edit()
	{
		$data = [
			'title' =>'form pendaftaran killjoy Bootcamp'
		];

		return view('killjoy/update');
	}

	public function update($id){
		$this->homeModel->save([
			'id' => $id,
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

		session()->setFlashdata('pesan','Data berhasil diubah');
	}

	public function delete($id){
		$this->homeModel->delete($id);
		return redirect()->to('/home');
	}
}
