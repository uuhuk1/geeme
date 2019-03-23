<?php
    session_start(); 
	if (isset($_POST['secret'])) {
		if($_POST['secret'] == $_SESSION['secret']) { 
            $success = 'good';
		    $ids = $_POST['ids'];
        } else {
			$error = 'error';
		}
	}    	
?>
<html>
<?php include './page/head.php'; // подключаем?>
<body>
<?php capcha_generator(); ?>    
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
			
            <div id='dle-content'><div class="text-content">                    
 <h2>Мои покупки</h2>
    


<div class='bord'>
<form action='#' method='post'>
<input placeholder="Введите ID операции" class='purm' type='text' name='ids' required>
<table style='border-spacing: 0px; margin-top: 5px;'><tr><td>
<input placeholder="Введите код с картинки" class='purc' type='text' name='secret' required></td>
<td><img src="/system/img.php?sid=<?=session_id();?>"></td></tr></table>
<?php 
if (isset($error)) {
	echo 'Ошибка при вводе капчи';
}
?>
<button class='butp'>Войти</button>
</form>
</div>

<?php 
if (isset($success)) {
	search_id($ids);
}
?>


</div></div>
            </div><!--end content-->
			
        </div>       
        <div class="clear"></div>            
	</main>       
<div class="clear"></div>	
    <div id="subfooter"></div>
</div><!--end wrapper -->
   <?php include './page/footer.php'; // подключаем?>	
</html>