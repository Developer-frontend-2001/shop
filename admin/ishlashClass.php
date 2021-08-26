<?php
include "report.php";
use repport\Report;
require_once "auth.php";
require_once "header.php";

require_once "sidebar.php";
?>

<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
        	<div class="col-md-12">
        		<div class="card">
	        		<div class="card-header">
	        			Viloyatlarga yuborilishi kerak bo'lgan mahsulotlar
	        		</div>
	        		<div class="card-body">
	        			<table class="table table-bordered">
						  <thead>
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">Viloyat</th>
						      <th scope="col">Mahsulot soni</th>
						    </tr>
						  </thead>
						  <tbody>
							<?php
							$i = 1;
							$db = new Report();
							$as = $db->toregion();
							foreach ($as as $item) {
							    echo "<tr>";
							    echo "<th scope='row'>" . $i++ . "</th>";
							    echo "<td>" . $item['name'] . "</td>";
							    echo "<td>" . $item['soni'] . "</td>";
							    echo "</tr>";
							}
							?>
						  </tbody>
						</table>
	        		</div>
	        	</div>
        	</div>
        	
		</div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
	

<?php require_once "footer.php"; ?>