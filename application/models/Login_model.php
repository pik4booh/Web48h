<?php
class Login_model extends CI_Model {
  
  public function login($nom, $mdp) {
   
    $this->db->where('nom', $nom);
    $this->db->where('mdp', $mdp); 
    $query = $this->db->get('users');
    
    if ($query->num_rows() == 1) {
      
      return $query->row_array();
    } else {
      return false;
    }
  }
}
?>