<!DOCTYPE html>
<html>
<head>
  <title>Connexion</title>
</head>
<body>
  <?php echo form_open('login/login'); ?>
  <form action="<?php echo base_url('controllers/login/login');?>"></form>
    <input type="text" name="nom" placeholder="Nom d'utilisateur" required><br>
    <input type="password" name="mdp" placeholder="Mot de passe" required><br>
    <button type="submit">Se connecter</button>
  <?php echo form_close(); ?>
  
  <?php if (isset($error)): ?>
    <p><?php echo $error; ?></p>
  <?php endif; ?>
</body>
</html>