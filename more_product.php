<?php
require_once "db.php";

if (isset($_GET['last_id']) && $_GET['last_id']) {
	$last_id = $_GET['last_id'];
	if ($last_id >= 4 ) {
		$sql_product = "SELECT * FROM product WHERE id > $last_id ORDER BY id ASC LIMIT 4";
	}
	else {

	}
}

$result = "";
$count = $last_id;
?>
<?php foreach ($conn->query($sql_product) as $row): ?>
	<?php 
	$count++;
	$t ='';
	if(empty($row['amount'])) {
		$t = "Tekin";
	}
	else {
		$t = $row['amount']."so'm" ;
	}
	?> 
	<?php $result .= '<div class="col-md-3">
	<div class="card mt-4">
	<div class="thumbnail" style="border: 1px solid #eee; min-height: 332px; padding: 5px">
	<a href="#">
	<img class="img-fluid rounded" src="'. str_replace("../", "", $row['picture']) .'" alt="Lights" style="width:100%">
	<div class="caption" style="position: absolute; bottom: 0; ">
	<h4><a href="product.php?id= '.$row['id'].' " >'. $row['name'].'</a></h4>
	<p>
	<button class="btn btn-info btn-sm">'.$t.'</button>
	</p>
	<button class="btn btn-warning add_product btn-sm w-100" data-id="'. $count .'">Cart</button>
	</div>
	</a>
	</div>
	</div>
	</div>';
	?>
<?php endforeach ?>
<?php 
$last_id = $count;
?>

<?php
if (!empty($result)) {
	$result .= '<div class="col-md-4 my-5 offset-4" id="more_'. $last_id .'" >
	<button class="btn btn-primary w-100 btn-outline-primary add_more" data-id="'. $last_id .'">Ko\'proq ko\'rish</button>
	</div>
	<div class="clearfix"></div>
	';
}
?>
<?php echo $result; ?>