<?php

namespace App\Controllers;
use \App\Models\UserModel;
class Login extends BaseController
{
    public function index()
    {
        // periksa jika tombol submit di tekan
  
        if(isset($_POST['submit'])){

            // definisikan session
            
            
            $username = $this->request->getVar('username');
            $password = $this->request->getVar('password');


            $model = new UserModel();
            $query = $model->cek_login($username);

            // cek apakah data user ada
            if($query->getNumRows() > 0){

                // jika data ada tampilkan datanya
                $row = $query->getRowArray();

                $pass = $row["password"];
                $fullname = $row["fullname"];


                // cek password yang di input dengan di database
                if(password_verify($password, $pass)){

                    // jika password sesuai buat variable session
                    $session_data = array(
                        "sess_username" => $username,
                        "sess_fullname" => $fullname,
                        "isLogin" => TRUE
                    );
                    
                    session()->set($session_data);

                    // setelah session berhasil di buat direct ke halaman dashboard
                    return redirect()->to('dashboard');
                    // $x['hasil'] = "data ditemukan";
                } else {
                    session()->setFlashdata('message','Password anda tidak sesuai');
                }
                

            } else {
                session()->setFlashdata('message','Periksa kembali username dan password anda');
            }

        

        }


        return view('login-page');
    }
}