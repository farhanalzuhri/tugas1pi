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
		$user = $this->homeModel->findAll();
		$data = [
			'users' => $user
		];
		
		echo view('killjoy/index', $data);
		
	}
	public function create()
	{
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
	public function edit($id)
	{
		$userId = $this->homeModel->find($id);
		$data = [
			'userId' => $userId
		];
		
		echo view('killjoy/edit' ,$data);
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
		return redirect()->to('/home');
	}

	public function delete($id){
		$this->homeModel->delete($id);
		session()->setFlashdata('pesan','Data berhasil dihapus');
		return redirect()->to('/home');
	}
}
