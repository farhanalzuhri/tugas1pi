<?php
namespace App\Models;


use CodeIgniter\Model;

class HomeModel extends Model
{
  protected $table= 'pendaftaran';
  protected $allowedFields = ['nama','email','jeniskelamin','agama','alamat','nick','hastag','hero','server'];
}

?>