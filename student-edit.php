<?php
session_start();
include("db.php");
include("function.php");
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >

    <title>Edit & Update data into database using PHP PDO</title>
</head>
<body>
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 mt-4">
                <div class="card">
                    <div class="card-header">
                        <h3>Edit & Update data into database using PDO in PHP
                            <a href="accountdashboard.php" class="btn btn-danger float-end">BACK</a>
                        </h3>
                    </div>
                    <div class="card-body">
                        <?php
                        if(isset($_GET['id']))
                        {
                            $user_id = $_GET['id'];

                            $query = "SELECT * FROM users WHERE id=:user_id LIMIT 1";
                            $stmt = $conn->prepare($query);
                            $data = [':user_id' => $user_id];
                            $stmt->execute($data);

                            $result = $stmt->fetch(PDO::FETCH_OBJ); //PDO::FETCH_ASSOC
                        }
                        ?>
                        <form action="code.php" method="POST">

                            <input type="hidden" name="student_id" value="<?=$result->id?>" />
                            <input type="hidden" name="fullname" value="<?= $result->rol; ?>" class="form-control" />

                            <div class="mb-3">
                                <label>Email</label>
                                <input type="text" name="email" value="<?= $result->email; ?>" class="form-control" />
                            </div>

                            <div class="mb-3">
                                <label>wachtwoord</label>
                                <input type="text" name="phone" value="<?= $result->wachtwoord; ?>" class="form-control" />
                            </div>
                            <div class="mb-3">
                                <label>kappersid</label>
                                <input type="text" name="course" value="<?= $result->kapperid; ?>" class="form-control" readonly/>
                            </div>
                            <div class="mb-3">
                                <button type="submit" name="update_student_btn" class="btn btn-primary">Update Student</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>