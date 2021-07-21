<?php
require_once "db.php";

$sql = "SELECT * FROM category LIMIT 6";
session_start();
$username = isset($_SESSION['username']) ? $_SESSION['username'] : NULL;
$cart_count = (isset($_SESSION['cart']) && isset($_SESSION['cart']['count'])) ? $_SESSION['cart']['count'] : 0;


?>
<nav class=" navbar navbar-expand-lg navbar-light bg-light fixed-top ">
    <a class="navbar-brand" href="index.php">Sport magazin</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-ico_SESSIONn"></span>
    </button>
    <div class="col-md-6 collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">Bosh sahifa</a>
            </li>
            <?php foreach ($conn->query($sql) as $row): ?>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?category_id=<?= $row['id'] ?>"><?= $row['name'] ?></a>
                </li>
            <?php endforeach ?>
        </ul>
        
        <form class="form-inline my-2 my-lg-0 d-flex flex-direction" action="search.php">
            <input class="form-control mr-sm-2" name="s" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>

    </div>
    <div class="col-md-5 d-flex align-items-center"  >
        <?php if ($username === NULl): ?>
            <a class="btn mx-4 my-2 btn-info" href="admin/login.php">Kirish</a>
            <a class="btn mx-4 my-2 btn-outline-success" href="admin/register.php">Ro'yxatdan o'tish</a>
        <?php else: ?>
            <div class="user d-flex align-items-center justify-content-center">

                <h3 class="h4 p-3 bg-light rounded" style="font-weight: bold; text-transform: capitalize; font-family: monospace; font-size: 25px;"><?=$username?></h3>
            </div>
        <?php endif ?>
        <a class=" bg-warning rounded mx-4 my-2 nav-link m-1" href="cart.php">
            <span>Shopping</span>
            <span id="shopping_cart"><?= $cart_count ?></span>
        </a>
        <div id="google_translate_element"></div>
    </div>
</nav> 
<script type="text/javascript">
    function googleTranslateElementInit() {
      new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
  }
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

