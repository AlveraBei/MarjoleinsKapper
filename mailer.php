<?php

//Include required PHPMailer files
require 'PHPMailer/PHPMailer.php';
require 'PHPMailer/SMTP.php';
require 'PHPMailer/Exception.php';

//Define name spaces
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Create instance of PHPMailer
$mail = new PHPMailer();

$name = $_POST['name'] . "<br><br>";
$email = $_POST['email'] . "<br><br>";


try {
     session_start();
     //Server settings
     //$mail->SMTPDebug = 2;                                     // Enable verbose debug output
     $mail->isSMTP();                                            // Send using SMTP
     $mail->Host       = 'smtp.gmail.com';                       // Set the SMTP server to send through
     $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
     $mail->Username   = 'thijmenh00@gmail.com';                 // SMTP username
     $mail->Password   = 'knfwessnzbctkxjz';                     // SMTP password
     $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
     $mail->Port       = 587;                                    // TCP port to connect to

     //Recipients
     $mail->setFrom('thijmenh00@gmail.com', 'Afspraak Bevestiging');           // Verzener
     $mail->addAddress($email, $name);                  // Onvanger
     $mail->addReplyTo('thijmenh00@gmail.com');

     // Content
     $mail->isHTML(true);                                        // Set email format to HTML
     $mail->Subject = 'Afspraak bevestiging';
     $mail->Body    =
          'Naam: ' . $name .
          'Email: ' . $email .
          'Hier uw afspraak bevestiging.';

     $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
     $mail->send();

     $_SESSION['status'] = "Mail sent";

     header("Location: index.php");
     echo ($_SESSION['status']);
     $mail->smtpClose();
     exit();
} catch (Exception $e) {
     header("location:dashboard.php");
     $_SESSION['status'] = "Mail not sent";
     echo ($_SESSION['status']);
     $mail->smtpClose();
}
