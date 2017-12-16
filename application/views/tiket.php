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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.0/themes/base/jquery-ui.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="/https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    .gambar {
        position: relative;
        float: right;
        margin-top: -100px;
    }
    td{
      padding:5px;
    }
    </style>
  </head>
  <body>
    <?php $this->load->view('layout/navbar.php'); ?>
    <div class="container">
    <div class="row">
    <div class="col-sm-12 col-md-12">

      <div class="col-sm-9 col-md-9">
        <iframe scrolling="no" style="width: 800px; height: 800px;" src="http://www.tiket.com/widget/multi_searchbox?business=22025786&language=id&size_type=normal&position=header-top&product_type=flight" frameborder="0"></iframe>
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
   <script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
   <script>

    $(document).ready(function() {

        $('#submit').click(function(event) {

            $('#result').html('Proses Pengambilan Data . . .');

            var FormData = $('#FormTiket').serialize();

            event.preventDefault();

            $.ajax({

                type : "POST",

                url: '<?php echo base_url('tiket/get'); ?>',

                data: FormData,

                cache: false,

                dataType: "jsonp",

                success:function(data){

                        if(data==''){

                            $('#result').empty();

                            $('#result').html('Maaf, data tidak ada untuk rute ini.');

                        }else{

                            $('#result').empty();

                            var div = $("#result");

                            for(var i=0; i<data[0].departures.result.length;i++){                        

                                div.append(data[0].departures.result[i].flight_id+".");div.append("<h4>"+data[0].departures.result[i].airlines_name+"</h4><br>");div.append("No. Penerbangan : "+data[0].departures.result[i].flight_number+"<br>");div.append("Harga Tiket : Rp."+data[0].departures.result[i].price_value+"<br>");div.append("Jam Berangkat : "+data[0].departures.result[i].simple_departure_time+"<br>");div.append("Jam Tiba : "+data[0].departures.result[i].simple_arrival_time+"<br>");div.append("Durasi Perjalanan : "+data[0].departures.result[i].duration+"<br>");div.append("<div class='gambar'><a href='http://www.tiket.com' target='_blank'><img src='"+data[0].departures.result[i].image+"' width='100px' /></a></div><br>");div.append("<hr>");

                            }   

                        }

                    }

            })

        });
    });
    $(function(){
      $('#berangkat').datepicker({ dateFormat:"yy-mm-dd" });
      $('#pulang').datepicker({ dateFormat:"yy-mm-dd" });
    });
    </script>

</html>
   