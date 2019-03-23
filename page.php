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
				
<div id="dle-content"><div class="text-content">                    
 <h2><?php page_content('name',addslashes(mysql_real_escape_string($_GET['id']))); ?></h2>
    <br>
    
        


<style>
.goodr {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
  padding: 15px;
  border: 1px solid transparent;
  margin-top:10px;
}

.badr {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
  padding: 15px;
  border: 1px solid transparent;
  margin-top:10px;
}

.nr {
  color: #565A5C;
  background-color: #F4F6F7;
  border-color: #94A7AB;
  padding: 15px;
  border: 1px solid transparent;
  border-radius: 4px;
  margin-top:10px;
}
.bt {
    margin-top: 5px;
    float: right;
    background-color: #F2F2F2;
    border: 1px solid #817F7F;
    padding: 0 5px;
    cursor: pointer;
    height: 20px;
    color: #000;
}

.bt:hover {
    background-color: #F2F2F2;

}

</style>


<div><?php page_content('text',addslashes(mysql_real_escape_string($_GET['id']))); ?></div>





</div></div>

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