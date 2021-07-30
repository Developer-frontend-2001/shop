  <?php
  require_once "../db.php";
  // session_start();
  if (isset($_POST['first_Name']) && isset($_POST['last_Name']) && isset($_POST['phone']) && isset($_POST['region_id']) && isset($_POST['city_id']) && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['password_two'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];
    $first_Name = $_POST['first_Name'];
    $last_Name = $_POST['last_Name'];
    $phone = $_POST['phone'];
    $region_id = $_POST['region_id'];
    $city_id = $_POST['city_id'];
// Images add url begin
    if (isset($_FILES['picture'])) {
    // code...
      $upload_folder = "../images/";
      $errors = array();

      $file_name = $_FILES['picture']['name'];
      $file_size = $_FILES['picture']['size'];
      $file_tmp = $_FILES['picture']['tmp_name'];
      $file_type = $_FILES['picture']['type'];
      $file_format_arr = explode('.', $file_name);
      $file_ext = strtolower(end($file_format_arr));

      $extensions = array("jpeg", "jpg", "png");

      if (in_array($file_ext, $extensions) === false) {
        $errors[] = "Fayl formati JPEG yoki PNG bo`lishi kerak.";
      }

      if ($file_size > 16384) {
        $errors[] = 'File hajmi 2 MB dan katta bo`lmasligi kerak';
      }

      if (!empty($errors)) {
        move_uploaded_file($file_tmp, $upload_folder . $file_name);

        $file_url = $upload_folder.$file_name;

        $insert_user_sql = "INSERT INTO users (username, password, status, image_url) VALUES('".$username."', '".$password."', 1, '".$file_url."')";
        $users_sql = "SELECT * FROM users WHERE  username = '".$username."'";
        $sql = "INSERT INTO customer( first_Name, last_Name, phone, region_id, city_id, image) values('$first_Name', '$last_Name', $phone, $region_id, $city_id, '$file_url')";

        if ($conn->query($insert_user_sql) === TRUE) {
          // echo "Yuklandi insert ko'rdingmi";
          if ($conn->query($sql) === TRUE) {
           // echo "Yuklandi";

           if (isset($_SESSION['product_url']) && $_SESSION['product_url']) {
            $product_url = $_SESSION['product_url'];
            header($product_url);
          }
          else{
            header("index.php");  
          }


        } else {
          echo "Xatolik: ".$conn->error;
        } 


      } else {
        print_r($errors);
      }
    }
// Images add url begin









  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Registration Page</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="adminlte/plugins/fontawesome-free/css/all.min.css">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="adminlte/dist/css/adminlte.min.css">
</head>
<body class="hold-transition register-page">
  <div class="register-box">
    <div class="register-logo">
      <a href="#"><b>SHOP</b></a>
    </div>

    <div class="card">
      <div class="card-body register-card-body">
        <p class="login-box-msg">Ro'yhatdan o'tish uchun formani to'ldirish</p>

        <form method="POST" id="register_form" enctype="multipart/form-data">
          <div class="input-group mb-3">
            <input type="text" name="first_Name" required class="form-control" placeholder="Ismingiz">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="text" name="last_Name" required class="form-control" placeholder="Familiyangiz">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="number" name="phone" required class="form-control" placeholder="Telefon">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <!-- <input type="text" name="region_id" class="form-control" placeholder="Viloyat"> -->
            <select class="custom-select" required name="region_id" id="selectRegion">
              <option selected>Viloyatni tanlang</option>
              <?php

              $sql = "SELECT * FROM `region` ORDER BY name ASC";

              foreach ($conn->query($sql) as $row) {
                echo "<option value='".$row['id']."'>".$row['name']."</option>";
              }
              ?>
            </select>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <!-- <input type="text" name="city_id" class="form-control" placeholder="Shahar(tuman)"> -->
            <select class="custom-select" required id="selectCity" name="city_id">

            </select>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="text" name="username" required class="form-control" placeholder="Login">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input id="password" type="password" name="password" required class="form-control" placeholder="Parol">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input id="password_two" type="password" name="password_two" required class="form-control" placeholder="Parolni qayta kiriting">
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            Rasmi
            <input type="file" class="form-control" name="picture" required>
          </div>

          <div class="row m-2">
            <!-- /.col -->
            <div class="col-4 d-flex ">
              <button type="submit" class="btn btn-primary register_btn">Register</button>
              <a href="login.php" class="btn btn-light">Kirish</a>
            </div>
            <!-- /.col -->
          </div>
        </form>
      </div>
      <!-- /.form-box -->
    </div><!-- /.card -->
  </div>
  <!-- /.register-box -->

  <!-- jQuery -->
  <script src="adminlte/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="adminlte/dist/js/adminlte.min.js"></script>

  <script type="text/javascript">
    $('#selectRegion').change(function() {
      let regionId = $(this).val();

      $.ajax({
        method: "POST",
        url: "cities.php",
        data: { regionId: regionId },
        success: function(data) {
          $('#selectCity').html(data);
          console.log(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
          console.log(jqXHR);
          console.log(textStatus);
          console.log(errorThrown);
        }
      });
    });

    $(".register_btn").click(function(){
      location.href = "../index.php";
    })
  </script>
</body>
</html>
