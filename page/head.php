<?php 
require './system/api.php';
require './system/config.php';
?>
<head>
<meta charset="utf-8">
<title>Takky-Store - пример магазина</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<script type="text/javascript" src="/engine/classes/js/jquery.js"></script>
<script type="text/javascript" src="/engine/classes/js/jqueryui.js"></script>
<script type="text/javascript" src="/engine/classes/js/dle_js.js"></script> 
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" /> 
<link rel="stylesheet" type="text/css" href="/templates/015/style/global.css" >
<link rel="stylesheet" type="text/css" href="/templates/015/style/template_styles.css">
<link rel="stylesheet" type="text/css" href="/templates/015/style/styles.css">
<script type="text/javascript" src="/templates/015/js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="/templates/015/js/owl.carousel.js"></script>
<script type="text/javascript" src="/templates/015/js/script.js"></script>
<script src="/js/payment.js"></script> 
<style>
body {
background:url(http://i.imgur.com/sEdMqmk.jpg) no-repeat; 
background-size: cover;
background-attachment: fixed;     
}
#header .logo {
background: url("/img/015_logo0.png") no-repeat;
}
<meta name="w1-verification" content="175422346518" />      
</style>   

<script>
$( document ).ready(function() {
  $('.trigger').click(function() {
	 
     $('.modal-wrapper').toggleClass('open');
    $('.page-wrapper').toggleClass('blur');
     return false;
  });
});
</script>
</head>