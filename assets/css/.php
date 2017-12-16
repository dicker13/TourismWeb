<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bootstrap Carousel - Data Dari Database MySQL</title>
 
	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="css/custom.css" rel="stylesheet">
 
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	
	<div class="container">
		<div class="row">
			<h2>Bootstrap Carousel - Data Dari Database MySQL - TUTORIALWEB.NET</h2>
		</div>
		
		<div class="row">
			<!-- The carousel -->
			<div id="transition-timer-carousel" class="carousel slide transition-timer-carousel" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<?php
					//connet database
					mysql_connect("localhost", "root", "root");
					mysql_select_db("tutorialweb");
					
					$count = mysql_query("SELECT COUNT(*) FROM carousel") or die(mysql_error());
					$count = mysql_result($count,0);
					for($i=0; $i<$count;$i++){
						echo '<li data-target="#transition-timer-carousel" data-slide-to="'.$i.'"'; if($i==0){ echo 'class="active"'; } echo '></li>';
					}
					?>
				</ol>
 
				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<?php
					//Query database
					$sql = mysql_query("SELECT * FROM carousel ORDER BY active DESC");
					//$sql = mysql_query("SELECT * FROM carousel ORDER BY active DESC");
					while($row = mysql_fetch_assoc($sql)){
						echo '
						<div class="item '; if($row['active'] == 1){ echo 'active'; } echo '">
							<img src="img/'.$row['img'].'" />
							<div class="carousel-caption">
								<h1 class="carousel-caption-header">'.$row['title'].'</h1>
								<p class="carousel-caption-text hidden-sm hidden-xs">
									'.$row['text'].'
								</p>
							</div>
						</div>
						';
					}
					?>
				</div>
 
				<!-- Controls -->
				<a class="left carousel-control" href="#transition-timer-carousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#transition-timer-carousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
				
				<!-- Timer "progress bar" -->
				<hr class="transition-timer-carousel-progress-bar animate" />
			</div>
		</div>
	</div>
 
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function() {    
		//Events that reset and restart the timer animation when the slides change
		$("#transition-timer-carousel").on("slide.bs.carousel", function(event) {
			//The animate class gets removed so that it jumps straight back to 0%
			$(".transition-timer-carousel-progress-bar", this)
				.removeClass("animate").css("width", "0%");
		}).on("slid.bs.carousel", function(event) {
			//The slide transition finished, so re-add the animate class so that
			//the timer bar takes time to fill up
			$(".transition-timer-carousel-progress-bar", this)
				.addClass("animate").css("width", "100%");
		});
		
		//Kick off the initial slide animation when the document is ready
		$(".transition-timer-carousel-progress-bar", "#transition-timer-carousel")
			.css("width", "100%");
	});
	</script>
</body>
</html>