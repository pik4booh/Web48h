<?php
class Login extends CI_Controller {
  
  public function index() {
    $this->load->view('login');
  }
  
  public function login() {
    $nom = $this->input->post('nom');
    $mdp = $this->input->post('mdp');
    

    $this->load->model('login_model');
    $user = $this->login_model->login($nom, $mdp);
    
    if ($user) {
      
      $this->session->set_userdata('user', $user);
      redirect('dashboard');
    } else {
      
      $data['error'] = 'Identifiants invalides.';
      $this->load->view('login', $data);
    }
  }
  
  public function logout() {
    
    $this->session->unset_userdata('user');
    redirect('login');
  }
}
?>
