<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


<?php
  $email = $emailErr ="";
  if (empty($_POST["email"])) {
    $emailErr = "电邮是必填的";
  } else {
    $email = test_input($_POST["email"]);
    // 检查电子邮件地址语法是否有效
    if (!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$email)) {
      $emailErr = "无效的 email 格式"; 
    }
  }
    
 ?>
 <h5>Email</h5>
        <label for="email"><i class="fa fa-envelope"></i></label>
        <input type="text" id="email" name="email" placeholder="john@example.com" required>
        <span class="error">* <?php echo $emailErr;?></span>
</body>
</html>