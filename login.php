<?php
session_start();
include 'db.php';

if(isset($_POST['submit'])){

   $email = $_POST['email'];
   $email = filter_var($email, FILTER_SANITIZE_STRING);
   $wachtwoord = $_POST['wachtwoord'];
   $wachtwoord = filter_var($wachtwoord, FILTER_SANITIZE_STRING);

   $select = $conn->prepare("SELECT * FROM `users` WHERE email = ? AND wachtwoord = ?");
   $select->execute([$email, $wachtwoord]);
   $row = $select->fetch(PDO::FETCH_ASSOC);

   if($select->rowCount() > 0){

      if($row['rol'] == 'admin'){

         $_SESSION['admin_id'] = $row['id'];
         header('location:dashboard.php');
         die;
      }elseif($row['rol'] == 'user'){

         $_SESSION['user_id'] = $row['id'];
         header('location:dashboard.php');
         die;
      }else{
         $message[] = 'no user found!';
      }
      
   }else{
      $message[] = 'incorrect email or password!';
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>login</title>
</head>
<body>

<?php
   if(isset($message)){
      foreach($message as $message){
         echo '
         <div class="message">
            <span>'.$message.'</span>
            <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
         </div>
         ';
      }
   }
?>
   
<section class="form-container">

   <form action="" method="post" enctype="multipart/form-data">
      <h3>login now</h3>
      <input type="email" required placeholder="enter your email" class="box" name="email"> <br>
      <input type="password" required placeholder="enter your wachtwoord" class="box" name="wachtwoord"><br><br>

      <input type="submit" value="login" name="submit">
   </form>

</section>

</body>
</html>