<aside class="left_side fleft rL hid">
	<div class="white_brd nav_menu">
	<a class="db sale alCenter button" href="#">Категории:</a>
	<nav class="main_nav">
		<ul>
            <?php categories(); ?>
        </ul>		
	</nav>
	</div><!--end nav_menu-->

				
<section class="mini_news rL white_brd">
	<h3>Мы принимаем</h3>
    <center><img width="200" src="http://i.imgur.com/EyTTbtz.png" alt=""></center>
</section>

<section class='mini_news rL white_brd'><h3>Мы Вконтакте</h3>                 

<script type="text/javascript" src="//vk.com/js/api/openapi.js?121"></script>

<!-- VK Widget -->
<div id="vk_groups"></div>
<script type="text/javascript">
VK.Widgets.Group("vk_groups", {mode: 2, width: "188", height: "300"}, 107284837);
</script>

</section>
 
<section class="mini_news rL white_brd">
	<h3>Последние покупки</h3>
    <?php last(); ?>
</section>

</aside><!--end aside-->