<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\PdfModel;
use App\Models\TestModel;
use App\Models\UserModel;
use App\Models\UserRoleModel;

class UserController extends BaseController
{
    public function userList()
    {
        $builder = $this->db->table('users');
        $builder->select('users.*,user_roles.role_name');
        $builder->join('user_roles', 'users.role_id = user_roles.id');
        $query = $builder->get();
        $results = $query->getResultArray();

        // echo "<pre>"; print_r($results); die();

        $uriData = $this->request->uri->getSegments();

        $data = [
            'results' => $results,
            'uri' => $uriData,
        ];

        return view('user/user-list', $data);
    }

    public function userAdd()
    {
        $user = new UserModel();
        $role = new UserRoleModel();
        $data['users'] = $user->findAll();
        $data['roles'] = $role->findAll();

        if ($this->request->getMethod() == 'post') {
            if (!$this->validate('useradd')) {
                $data['validation'] = $this->validator;
            } else {

                $info = $this->request->getVar();

                $insert = array(
                    'first_name' => $info['first_name'],
                    'last_name' => $info['last_name'],
                    'username' => $info['username'],
                    'email' => $info['email'],
                    'password' => SHA1($info['password']),
                    'role_id' => 2,
                );
                // echo "<pre>"; print_r($insert); die();

                $user->insert($insert);

                return redirect()->to(base_url('/admin/user'));
            }
        }
        return view('user/user-add', $data);
    }

    public function userView($id)
    {
        $builder = $this->db->table('users');
        $builder->select('users.*,user_roles.role_name');
        $builder->join('user_roles', 'users.role_id = user_roles.id');
        $builder->where('users.id', $id);
        $query = $builder->get();
        $viewUser = $query->getRowArray();

        // echo $this->db->getLastQuery();
        // echo "<pre>"; print_r($results); die();

        return view('user/user-view', [
            'viewUser' => $viewUser
        ]);
    }
    public function userEdit($id)
    {
        $user = new UserModel();
        $role = new UserRoleModel();
        $data['roles'] = $role->findAll();

        $data['editUser'] = $user->where(['id' => $id])->first();
        
        $userId = $user->find($id);

        if ($this->request->getMethod() == 'post') {

            if (!$this->validate('useredit')) {
                $data['validation'] = $this->validator;
            } else {
                $info = $this->request->getVar();
                // echo "<pre>"; print_r($info); die();

                $update = array(
                    'last_name' => $info['first_name'],
                    'last_name' => $info['last_name'],
                    'username' => $info['username'],
                    'email' => $info['email'],
                    'role_id' => 2,
                    'password' => SHA1($info['password']),
                );


                $user->update($id, $update);
                return redirect()->to(base_url('/admin/user'));
            }

        }
        
        return view('user/user-edit', $data);
    }

    public function userDelete($id)
    {
        $user = new UserModel();
        $user->delete($id);

        $pdf = new PdfModel();
        $pdf->where('user_id',$id)->delete();

        return redirect()->to(base_url('/admin/user'));
    }
	
	public function userSuspend($id){
        $user = new UserModel();
        $suspend['suspend'] = 2;
        $user->update($id, $suspend);

        return redirect()->to(base_url('/admin/user'))->with('suspend_success', 'User Successfully Suspended!');
    }

    public function userUnsuspend($id){
        $user = new UserModel();
        $suspend['suspend'] = 1;
        $user->update($id, $suspend);
    
        return redirect()->to(base_url('/admin/user'))->with('suspend_success', 'User Successfully Unsuspended!');
    }
	
}
