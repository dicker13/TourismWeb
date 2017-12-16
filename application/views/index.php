<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>WISATA LAMPUNG</title>

    <!-- Bootstrap -->
    <link href="<?php echo base_url('assets'); ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url('assets'); ?>/css/style.css" rel="stylesheet">
    <link href="<?php echo base_url('assets'); ?>/css/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <!-- Taro navbar dibawah carousel -->
  <?php include('layout/navbar.php'); ?>
  <div class="container"> 
    
    <div class="row">
      <div class="col-sm-4 col-md-4">
        <div class="pull-left">
        <div class="caption">
        <h3><a  style="color:#3aa8c1;"> BERITA TERBARU</a></h3>
          </div>
      </div>
      </div>

      <div class="col-sm-5 col-md-5 ">
        <div class="pull-left">
        <div class="caption">
        <h3><a  style="color:#3aa8c1;"> VIDEO</a></h3>
          </div>
      </div>
      </div>
    </div>

    <div class="row">
     <div class="col-sm-12 col-md-12">
     <div class="col-sm-4 col-md-4">
        <div class="thumbnail">
            <h4 class="judul" style="margin-top: 1px;"><?php echo $berita->judul; ?></h4>
          <img src="<?php echo base_url('assets'); ?>/uploads/files/<?php echo $berita->gambar; ?>" alt="gambar1">
          <div class="caption">
            <p><?php echo character_limiter(strip_tags($berita->isi), 200); ?></p>            
        <p style="float:right;"><a href="<?php echo base_url('berita/detail').'/'.$berita->id_berita; ?>" class="btn btn-default" role="button">Selengkapnya</a></p>
        <br/><br/>
          </div>
        </div>
        <div class="pull-right">
        <a href="<?php echo base_url('berita'); ?>" class="btn btn-default" role="button">BACA BERITA LAIN</a>
        </div>
      </div>
      <div class="col-sm-5 col-md-5">
        <div class="thumbnail">
      <!-- 4:3 aspect ratio -->
      <div class="embed-responsive embed-responsive-16by9">
      <video loop class="embed-responsive-item"  controls>
        <source src="<?php echo base_url('assets'); ?>/video/video.MP4" type="video/mp4">
      </video>
      </div>
        </div>
      </div>
      <div class="col-sm-3 col-md-3">
        <div class="judul1">
        <img src="<?php echo base_url('assets'); ?>/image/map1.png" alt="gambar1">
        <img src="<?php echo base_url('assets'); ?>/image/kalender1.jpg" alt="gambar1">
        </div>
        </div>
      </div>
      </div>
      <br/><br/>
     <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">     
      <!-- Indicators -->
      
      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item row active">
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/sunset1.jpg" alt="Chania">
          </div>
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/sunset3.jpg" alt="Chania">
          </div>
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/sunset2.jpg" alt="Chania">
          </div>
          <div class="carousel-caption">
            <h3 style="font-size:20px; color:#b0e0e6;">      KEINDAHAN SUNSET YANG MEMUKAU</h3>
            
          </div>
        </div>
        <div class="item row"> 
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/alam1.jpg" alt="Chania">
          </div>
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/alam3.jpg" alt="Chania">
          </div>
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/alam2.jpg" alt="Chania">
          </div>
          <div class="carousel-caption">
            <h3 style="font-size:20px; color:#b0e0e6;">   PEMANDANGAN LANDSCAPE YANG INDAH</h3>
          </div>
        </div>
        <div class="item row">
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/obyek1.jpg" alt="Chania">
          </div>
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/obyek2.jpg" alt="Chania">
          </div>
          <div class="col-md-4">
            <img src="<?php echo base_url('assets'); ?>/image/obyek3.jpg" alt="Chania">
          </div>
          <div class="carousel-caption">
            <h3 style="font-size:20px; color:#b0e0e6;">   BERBAGAI MACAM OBYEK WISATA</h3>
          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
  </body>
   <script src="<?php echo base_url('assets'); ?>/js/jquery.js"></script>
   <script src="<?php echo base_url('assets'); ?>/js/bootstrap.min.js"></script>
   <script>
   $('.carousel').carousel({
    interval: 3000
  });
   </script>
</html>
   