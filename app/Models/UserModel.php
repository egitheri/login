<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModel extends Model
{
    public function __construct() {
		parent::__construct();
	}
    // protected $table = 'users';
    public function cek_login($username = ''){
        $result = $this->db->table('users')->getWhere(array("username" => $username));
        return $result;
    }
    
}

?>