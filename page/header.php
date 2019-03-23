    <header id="header">
		<div class="top_row">
			<div class="inner">
                <ul class="mainm">
				<li class="db fleft rL hid main_button  active"><a href="/">Главная</a></li>
				<?php pages(); ?>
				<!--<li><a href="/">О нас</a></li>
				<li><a href="/">Как купить?</a></li>
				<li><a href="/">Контакты</a></li>
				<li><a href="/">Отзывы</a></li> -->
                <li style="float:right;">><a class="db fleft rL hid why_buy_button w2" href="/my/buy/">Мои покупки</a></li>
                </ul>
<div class="clear"></div>
			</div>
			
		</div><!--end top_row-->
		<div class="inner inner_header rL">
			<a class="logo db fleft rL hid button" href="/"></a>
			<div class="rL right_block">
				<div class="search_block rL ">

                    
<form id="header-search" action="/search.php" name="searchform" method="post">
            <input type="hidden" name="do" value="search" /> 
			<input type="hidden" name="subaction" value="search" />
            <input class = "inputbox" placeholder="Поиск по товарам..." type="text" name="q" />
    <div class="header-search-results"></div>
</form>





                </div> <!--end search_block-->
				
			</div>
		</div>
    </header><!--end header -->