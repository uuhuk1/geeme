<html>
<?php include './page/head.php'; // подключаем?>
<body>    
<div id="panel"></div>
<div id="wrapper">              
    <?php include './page/header.php'; // подключаем?>
	<main id="main" class="index__page">  
    <div class="main___pic">	    
    <div class="bg_block">
    </div>    
    </div>   
		<div class="inner">        
		<?php include './page/left.php'; // подключаем?>			              
                <div class="content rL hid">
				
<section id="sl2">
<?php slider(); ?>
</section>

<section class="">
					<dl class="index_page_tabs tabs">
					<dt class="selected">Все товары</dt>
<dd class="selected">
<div class="tab-content catalog">
<div class="row rL hid">
<?php index_tovars(); ?>
</div>
</div>
</dd>						
					</dl>
				</section>

<div class="clear"></div>
        </div><!--end content-->
        </div>       
        <div class="clear"></div>            
	</main>       
<div class="clear"></div>	
    <div id="subfooter"></div>
</div><!--end wrapper -->
   <?php include './page/footer.php'; // подключаем?>	
</html>