<?php
require_once "db.php";
// session_start();
$sql = "SELECT * FROM category LIMIT 6";
$result = mysqli_query($conn, $sql);
$username = isset($_SESSION['username']) ? $_SESSION['username'] : NULL;
$cart_count = (isset($_SESSION['cart']) && isset($_SESSION['cart']['count'])) ? $_SESSION['cart']['count'] : 0;
$users = "SELECT * FROM users WHERE username ='".$username."'";
$result_users = mysqli_query($conn, $users);
$result_users = mysqli_fetch_assoc($result_users);
?>
<nav class=" navbar navbar-expand-lg navbar-light bg-light fixed-top" style="z-index: 1;">
    <a class="navbar-brand" href="index.php">Sport magazin</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-ico_SESSIONn"></span>
    </button>
    <div class="col-md-6 collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">Bosh sahifa</a>
            </li>
            <?php while ( $row = mysqli_fetch_assoc($result)): ?>
                <li class="nav-item">
                    <a class="nav-link" href="index.php?category_id=<?= $row['id'] ?>"><?= $row['name'] ?></a>
                </li>
            <?php endwhile ?>
        </ul>
        
        <form class="form-inline my-2 my-lg-0  d-flex flex-direction" action="search.php">
            <input class="form-control mr-sm-2 mx-2" id="product_search" name="search" type="search" placeholder="Search" aria-label="Search" autocomplete="off">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>

    </div>
    <div class="col-md-5 d-flex align-items-center"  >
        <?php if (empty($username)): ?>
            <a class="btn mx-4 my-2 btn-info" href="admin/login.php">Kirish</a>
            <a class="btn mx-4 my-2 btn-outline-success" href="admin/register.php">Ro'yxatdan o'tish</a>
        <?php else: ?>
            <div class="user d-flex align-items-center justify-content-center">
                <img src="<?= str_replace("../", "", $result_users['image_url']) ?>" class="img-fluid rounded-circle" alt="rasm yuklanmagan" width="50px;">
                <h3 class="h4 p-3 bg-light rounded" style="font-weight: bold; text-transform: capitalize; font-family: monospace; font-size: 25px;"><?=$username?></h3>
            </div>
        <?php endif ?>
        <a class=" bg-warning rounded mx-4 my-2 nav-link m-1" href="cart.php">
            <span>Shopping</span>
            <span id="shopping_cart"><?= $cart_count ?></span>
        </a>
    </div>
</nav>
