<?php define("include",true); include("assets/blog_conf.php"); $url = htmlclean($_GET['url']); 
$sorgu = $db->prepare("select * from blog where sefurl=?"); $sorgu->execute(array($url)); if($sorgu->rowCount()=="0"){ header("Location:index.php"); }else{ $gelen = $sorgu->fetch(PDO::FETCH_ASSOC); ?>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php echo $print['description']; ?>">
    <meta name="keywords" content="<?php echo $print['keywords']; ?>">
    <meta name="author" content="hyPerdarKness - github.com/hyPerdarKness">
    
	<title><?php echo $gelen['baslik']; ?> | <?php echo $print['siteadi_title']; ?></title>
	
    <link rel="shortcut icon" href="assets/images/favicon.png"> 
	<script defer src="assets/fontawesome/js/all.min.js"></script>
    <link id="theme-style" rel="stylesheet" href="assets/css/theme-<?php echo $print['color']; ?>.css">
<?php echo $print['analytics']; ?>	
</head> 
<body>
    
<?php include("assets/header.php"); ?>
    
    <div class="main-wrapper">
	    <article class="about-section py-5">
		    <div class="container">
			    <header class="blog-post-header">
				    <h2 class="title mb-2"><?php echo $gelen['baslik']; ?></h2>
				    <div class="meta mb-3"><span class="date"><i class="far fa-clock"></i> <?php echo timeConvert($gelen['tarih']); ?></span></div>
			    </header>
				<div class="blog-post-body">
				<?php echo $gelen['icerik']; ?>
				</div>
		    </div>
	    </article>
	    	    
	    <footer class="footer text-center py-2 theme-bg-dark">
            <small class="copyright">Tasarım: <a href="http://themes.3rdwavemedia.com" target="_blank" rel="nofoloow">Xiaoying Riley</a> <# --- #> PHP Kodlama: <a href="https://github.com/hyPerdarKness" target="_blank" rel="nofollow">hyPerdarKness</a></small> 
	    </footer>
    </div>
        
    <script src="assets/plugins/jquery-3.4.1.min.js"></script>
    <script src="assets/plugins/popper.min.js"></script> 
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script> 

</body>
</html>
<?php } ?>