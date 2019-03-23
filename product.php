<html>
<?php include './page/head.php'; // подключаем?>
<body>
<?php
$product = addslashes(mysql_real_escape_string($_GET['id']));
$md5 = pay_md5($product);
register($product,$md5);
?>

<script>
function loadPhones(){var e=new XMLHttpRequest;if(e.open("GET","/system/get.php?md5="+md5,!1),e.send(),200!=e.status)alert("Ошибка "+e.status+": "+e.statusText);else if(""==e.responseText);else{clearInterval(refreshIntervalId);var t=document.getElementById("paySuccess"),s=document.getElementById("payWait");s.style.display="none",t.style.display="block",$("#YourTovar").text(e.responseText)}}var md5="<?php echo ($md5);?>";if(~location.href.indexOf("product"))var refreshIntervalId=setInterval(loadPhones,5e3);
</script>

<div class="modal-wrapper">
  <div class="modal">
    <div class="head">
      <a class="btn-close trigger" href="javascript:;"></a>
	  <div style="text-shadow: 1px 1px 1px rgb(43, 43, 43);font-size: 16px;      font-weight: 300;      line-height: 1;      color: #fff;margin-top: 12px;">Выберете способ оплаты</div>
    </div>
	
	<div style="top: 142px;background: #00b055;position: relative;/* margin: 30px 0 0; */padding: 30px 35px 20px;font-size: 16px;font-weight: 300;line-height: 1;color: #fff;text-align: -webkit-center;padding-bottom: 13px;padding-top: 1px;top: 0px;background: #444343;display: block;margin-top: 0;" class="pop_footer"><div style="margin-top: 12px;text-shadow: 1px 1px 1px rgb(43, 43, 43);">Не закрывайте и не обновляйте страницу, во время покупки (товар будет здесь) <br>ID операции: <?php echo ($md5) ?>	</div></div>	
	<div class="content" style="padding: 5%;padding-bottom: 0;">
	    <div class="checkout-billing-header">
		<?php gdonate('payments',$product,$md5);?>		    
	    </div>
    </div>
    <div id="YourTovar" style="font-weight: 700;font-size: 15px;text-align: center;line-height: 51px;"></div>
	
	<div id="payWait" style="top: 15px;background: #F3AB40;display: block" class="pop_footer"><div class="checkout-sep"></div><div style="margin-top: 12px;text-shadow: 1px 1px 1px rgb(43, 43, 43);">Ожидается оплата</div></div>
	
	<div id="paySuccess" style="top: 0px;display: none" class="pop_footer"><div class="checkout-sep"></div><div style="margin-top: 12px;"><img src="/oplata/V.png" width="15" style="margin-top: 4px;text-shadow: 1px 1px 1px rgb(43, 43, 43);">Оплата успешно проведена</div></div>
  </div>
</div>

    
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
<div id="breadcrumbs">

			<li><a href="/" title="Главная">Главная</a></li><li><span><?php getinfo('name');?></span></li>
			<div class="clear"></div>
</div>

<div class="content rL">
				<div class="main_img">
				    <?php getinfo('img1');?>
				</div>
    <div class="buyg">
    <div class=" hid buy_block">						
        <span style="padding:5px;" class="price db alCenter  rL hid"><?php getinfo('price');?></span>

                        					<div class="clear"></div>
        <div class="buyinfo">Данные появятся автоматический сразу после оплаты!</div>		
                    <a style="margin-top: 6px;" class="trigger db w100 alCenter buy_button button" href="#">Купить</a>

				</div>
</div>				
					<div class="clear"></div>								
				<section style="margin-top: 20px;" class="text_tab">
					<dl class="index_page_tabs tabs ">
						<dt class="selected">Описание</dt>
						<dd class="selected">
							<div class="tab-content opisanie">
								<p><?php getinfo('desc');?></p>								
                                <div class="clear"></div>
							</div>
						</dd>	
                        <dt>Скриншоты</dt>
						<dd>
							<div class="tab-content opisanie">
								<?php getinfo('screen1');?>		
                                <?php getinfo('screen2');?>									
                                <div class="clear"></div>
							</div>
						</dd>
                        <dt>Похожие товары</dt>
						<dd>
							<div class="tab-content opisanie">
								<?php like();?>
                                <div class="clear"></div>
							</div>
						</dd>						
					</dl>
				</section>
				
<!-----------КОММЕНТАРИИ------------------->				
				
<!-- Put this script tag to the <head> of your page -->
<script type="text/javascript" src="//vk.com/js/api/openapi.js?121"></script>

<script type="text/javascript">
  VK.init({apiId: 5452262, onlyWidgets: true});
</script>

<!-- Put this div tag to the place, where the Comments block will be -->
<div id="vk_comments"></div>
<script type="text/javascript">
VK.Widgets.Comments("vk_comments", {limit: 10, width: "713", attach: "*"});
</script>

<!-----------КОММЕНТАРИИ------------------->

<div style=" height: 0px; opacity: -0.5;">
<?php getinfo('keywords');?>
</div>

			</div></div>		
		
        </div>       
        <div class="clear"></div>            
	</main>       
<div class="clear"></div>	
    <div id="subfooter"></div>
</div><!--end wrapper -->
<?php include './page/footer.php'; // подключаем?>
</html>