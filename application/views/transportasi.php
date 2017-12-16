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
      <script srcf="<?php echo base_url('assets'); ?>/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script srcf="<?php echo base_url('assets'); ?>/https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <?php include('layout/navbar.php'); ?>
   <div class="container">
     <div class="row">
       <div class="col-sm-8 col-md-8">
         <div class="thumbnail">
            <h4 class="judul">PETA</h4>
            <form method="post" action="<?php echo base_url('transportasi/index'); ?>">
            <div class="col-sm-3">
            <label>Lokasi Awal</label>
            <select class="form-control" name="start">
              <option value="-5.1147673, 105.308251">Metro</option>
              <option value="-5.422293, 105.2582034">Bandar Lampung</option>
              <option value="-5.2420287, 105.1773514">Bandar Udara Raden Inten II</option>
              <option value="-5.8674729, 105.7409852">Pelabuhan Bakauheni</option>
              <option value="-5.3676382, 105.2378185">Terminal Rajabasa</option>
            </select>
            </div>
            <div class="col-sm-3">
            <label>Lokasi Tujuan</label>
            <select class="form-control" name="end">
              <option value="-5.7716617, 105.1081539">Teluk Kiluan</option>
              <option value="-5.6752922, 105.2224062">Pulau Pahawang</option>
              <option value="-5.1186801, 103.8477121">Pulau Pisang</option>
              <option value="-4.9275758, 105.7769283">Taman Nasional Way Kambas</option>
              <option value="-6.1021175, -105.4229873">Taman Nasional Gunung Krakatu</option>
              <option value="-5.4104761, 105.2558689">Pasar Bambu Kuning</option>
              <option value="-5.7330556, 105.21055566">Pulau Tanjung Putus</option>
              <option value="-5.5143121, 105.2632458">Pantai Mutun dan Pulau Tangkil</option>
              <option value="-5.5014822, 104.6493103">Air Terjun Lembah Pelangi</option>
              <option value="-4.8510271, 103.9376021">Danau Ranau</option>
              <option value="-5.3722749, 105.2409725">Museum Lampung</option>
              <option value="-5.300839, 105.5712208 ">Taman Purbakala Pugung Rahardjo</option>
              <option value="-5.4484732, 104.3515884">Taman Nasional Bukit Barisan Selatan</option>
              <option value="-5.579947, 105.2132129">Pantai Klara</option>
              <option value="-5.3081467, 104.0101369">Pulau Tanjung Setia</option>
              <option value="-4.9333300, 104.1500000">Gunung Pesagi</option>
              <option value="-5.9410995, 105.488828">Pulau Sebesi</option>
              <option value="-5.7559068, 105.0580076">Pantai gigi hiu Kelumbayan</option>
              <option value="-5.8653964, 105.7500258">Menara Siger</option>
              <option value="-5.4747019, 104.7022581">Air Terjun Way Lalaan</option>
            </select>
            </div>
            <div class="col-sm-3"><br>
            <button class="btn btn-hijau btn-md" type="submit">Go</button>
            </div>
            </form>
          <?php echo $map['html']; ?>
          <div id="directionsDiv"></div>
          <div class="caption">
          <h1>Info Tambahan</h1>
          <p><?php echo $desc; ?></p>
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
  </body>
   <script src="<?php echo base_url('assets'); ?>/js/jquery.js"></script>
   <?php echo $map['js']; ?>
   <script src="<?php echo base_url('assets'); ?>/js/bootstrap.min.js"></script>
</html>
