<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>WISATA LAMPUNG</title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url('assets'); ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url('assets'); ?>/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url('assets'); ?>/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <?php $this->load->view('layout/navbar.php'); ?>
    <div class="container">
    <div class="row">
    <div class="col-sm-12 col-md-12">

      <div class="col-sm-9 col-md-9">

      <?php foreach($restoran->result_array() as $row){ ?>
          <div class="col-sm-4 col-md-4">
            <div class="thumbnail" style="margin-top: 20px;margin-bottom: 40px;">
              <h4 class="judul"><?php echo $row['Nama_Restoran']; ?></h4>
            <img src="<?php echo base_url('assets'); ?>/uploads/files/<?php echo $row['gambar']; ?>" alt="gambar1">
            <div class="caption">
              <p><?php echo character_limiter(strip_tags($row['Alamat']), 200).'<br/>'; echo $row['Telp']; ?></p>            
              <p style="float:right;"><a href="<?php echo base_url('restoran/detail').'/'.$row['id_restoran']; ?>" class="btn btn-default" role="button">Selengkapnya</a></p>
              <br/><br/>
            </div>
            </div>
          </div>
      <?php } ?>

      </div>

      <div class="col-sm-3 col-md-3">
        <div class="judul1">
        <img src="<?php echo base_url('assets'); ?>/image/map1.png" alt="gambar1">
        <img src="<?php echo base_url('assets'); ?>/image/kalender1.jpg" alt="gambar1">
        </div>
      </div>

    </div>
    </div>

    </div>
  </body>

   <script src="<?php echo base_url('assets'); ?>/js/jquery.js"></script>
   <script src="<?php echo base_url('assets'); ?>/js/bootstrap.min.js"></script>

</html>
   