<?php 
include 'db.php';

if(isset($_POST['submit'])){
    $email = $_POST['email'];
    $email = filter_var($email, FILTER_SANITIZE_STRING);
    $wachtwoord = $_POST['wachtwoord'];
    $wachtwoord = filter_var($pass, FILTER_SANITIZE_STRING);

    $select = conn->prepare("Select * FROM 'users' WHERE email = ? AND wachtwoord = ?");
    $select->exec([$email,$wachtwoord]);
    row = $select->fetch(PDO::FETCH_ASSOC);

    if($select->rowCount() > 0){
        if($row['rol'] == 'admin'){
            $_SESSION['admin_id'] = $row['id'];
            header('location:dashbord_admin.php')
        }else if(){
            if($row['rol'] == 'admin'){
                $_SESSION['admin_id'] = $row['id'];
                header('location:dashbord_admin.php')
        }
        
    }else{  
        $message[] = 'incorrect email or password';
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<form action="" method="post" enctype="multipart/form-data">
    <h3>login now</h3>
    <label for="email">email</label><br>
    <input type="email" name="email"><br>
    <label for="wachtwoord">password</label><br>
    <input type="wachtwoord" name="wachtwoord" ><br><br>
    <input type="submit" value="submit">
</form>

</body>
</html>