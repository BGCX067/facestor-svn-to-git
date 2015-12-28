<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
{header}
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" />  
{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
<link rel="shortcut icon" href="{theme}/images/fav.png" />
</head>
<body onResize="onBodyResize()" class="no_display" [not-logged]style="background:#fff"[/not-logged]>
<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">Наверх</div></div>
<div class="head">
 <div class="autowr">
  [logged]<a class="udinsMy" href="/news{news-link}" onClick="Page.Go(this.href); return false;" id="news_link"><span id="new_news">{new-news}</span></a>[/logged]
  [not-logged]<a href="/" class="udinsMy" style="margin-left:-10px"></a>[/not-logged]
  [logged]<div class="headmenu">
<a href="{my-page-link}" onclick="Page.Go(this.href); return false;">
  <div class="headm_posic">
    <img src="/templates/Default/images/spacer.gif" class="headm_ic_mypage">
    <br>
	 Страница
  </div>
</a>
  <a href="/messages" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <div id="new_msg"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_mess">
      <br>
	 Сообщения
    </div>
  </a>
  <a href="/friends" onclick="Page.Go(this.href); return false;" id="requests_link">
    <div class="headm_posic">
      <div id="new_requests"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_friend"><br/>
	 Друзья
    </div>
  </a>
  <a href="/albums/{my-id}" onclick="Page.Go(this.href); return false;" id="requests_link_new_photos">
    <div class="headm_posic">
      <div id="new_photos"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_photo">
      <br>
	 Фото
    </div>
  </a>
  <a href="/fave" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_fave">
      <br>
	 Закладки
    </div>
  </a>
  <a href="/videos" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_videos">
      <br>
	 Видео
    </div>
  </a>
  <a href="/audio" onclick="doLoad.js(0); player.open(); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_music" id="fplayer_pos">
      <br>
	 Музыка
    </div>
  </a>
  <a href="/apps" onclick="Page.Go(this.href); return false;" style="display:none">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_games">
      <br>
	 Игры
    </div>
  </a>
  <a href="/groups" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_groups">
      <br>
	 Группы
    </div>
  </a>
  <a href="/news" onclick="Page.Go(this.href); return false;" id="news_link">
    <div class="headm_posic">
      <div id="new_news"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_news">
      <br>
	 Лента
    </div>
  </a>
  <a href="/notes" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_notes">
      <br>
	 Заметки
    </div>
  </a>
  <a href="/?go=search" onclick="Page.Go(this.href); return false;" id="se_link">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_se">
      <br>
	 Поиск
    </div>
  </a>
  <a href="/settings" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_settings">
      <br>
	 Настройки
    </div>
  </a>
  <a href="/support" onclick="Page.Go(this.href); return false;">
    <div class="headm_posic">
      <div id="new_support"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_support">
      <br>
	 Помощь
    </div>
  </a>
  <a href="/balance" onclick="Page.Go(this.href); return false;" id="ubm_link">
    <div class="headm_posic">
      <div id="new_ubm"></div>
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_ubm">
      <br>
	 Баланс
    </div>
  </a>
  <a href="/?act=logout">
    <div class="headm_posic">
      <img src="/templates/Default/images/spacer.gif" class="headm_ic_logout">
      <br>
	 Выйти
    </div>
  </a>
  <!--search-->
  <div class="search_tab no_display" id="search_tab">
    <input type="text" value="Поиск" class="fave_input search_input" onblur="if(this.value=='') this.value='Поиск';this.style.color = '#c1cad0';" onfocus="if(this.value=='Поиск')this.value='';this.style.color = '#000'" onkeypress="if(event.keyCode == 13) gSearch.go();" onkeyup="FSE.Txt()" id="query" maxlength="65">
    <div id="search_types">
      <input type="hidden" value="1" id="se_type">
      <div class="search_type" id="search_selected_text" onclick="gSearch.open_types('#sel_types'); return false">по людям</div>
      <div class="search_alltype_sel no_display" id="sel_types">
        <div id="1" onclick="gSearch.select_type(this.id, 'по людям'); FSE.GoSe($('#query').val()); return false" class="search_type_selected">по людям</div>
        <div id="2" onclick="gSearch.select_type(this.id, 'по видеозаписям'); FSE.GoSe($('#query').val()); return false">по видеозаписям</div>
        <div id="3" onclick="gSearch.select_type(this.id, 'по заметкам');  FSE.GoSe($('#query').val()); return false">по заметкам</div>
        <div id="4" onclick="gSearch.select_type(this.id, 'по сообществам'); FSE.GoSe($('#query').val()); return false">по сообществам</div>
        <div id="5" onclick="gSearch.select_type(this.id, 'по аудиозаписям');  FSE.GoSe($('#query').val()); return false">по аудиозаписям</div>
      </div>
    </div>
    <div class="button_div fl_l margin_left">
      <button onclick="gSearch.go(); return false" id="se_but">Найти</button>
    </div>
  </div>
  <div class="fast_search_bg no_display">
    <a href="/" style="padding:12px;background:#eef3f5" onclick="gSearch.go(); return false" onmouseover="FSE.ClrHovered(this.id)" id="all_fast_res_clr1">
      <text>Искать</text>
      <b id="fast_search_txt"></b>
      <div class="fl_r fast_search_ic"></div>
    </a>
    <span id="reFastSearch"></span>
  </div>
  <!--/search-->
</div>
   </div>
   <!--/search-->
  </div>[/logged]
 </div>
</div>
<div class="clear"></div>
<div style="margin-top:35px"></div>
<div class="autowr">
[logged][/logged]
 [not-logged]<div class="leftpanel" style="margin-top:16px">
  <form method="POST" action="">
   <div class="flLg">Электронный адрес</div><input type="text" name="email" id="log_email" class="inplog" maxlength="50" />
   <div class="flLg">Пароль</div><input type="password" name="password" id="log_password" class="inplog" maxlength="50" />
   <div class="logpos">
    <div class="button_div"><button name="log_in" id="login_but" style="width:138px">Войти</button></div>
	<div style="margin-top:5px"><a href="/restore" onClick="Page.Go(this.href); return false">Не можете войти?</a></div>
   </div>
  </form>
 </div>[/not-logged]
 <div class="content" [logged]style="width:800px;"[/logged]>
  <div class="cont_border_left">
   <div class="cont_border_right">
    <div class="speedbar [speedbar]no_display[/speedbar]" id="speedbar">{speedbar}</div>
    <div class="padcont">
	 <div id="page">{info}{content}</div>
	 <div class="clear"></div>
	</div>
   </div>
  </div>
  <div class="cont_border_bottom"></div>
  <div class="footer">
   <a href="/?go=search" onClick="Page.Go(this.href); return false">люди</a>
   <a href="/?go=search&type=4" onClick="Page.Go(this.href); return false">сообщества</a>
   <a href="/?go=search&type=5" onClick="Page.Go(this.href); return false">музыка</a>
   <a href="/?go=search&type=2" onClick="Page.Go(this.href); return false">видео</a>
   <a href="/support" onClick="Page.Go(this.href); return false">помощь</a>
   <a href="/blog" onClick="Page.Go(this.href); return false">блог</a><br /><br />
FaceStor.Ru &copy; 2013<br />
   <small><a href="/u1" onClick="Page.Go(this.href); return false">Dev End</a></small><br/><br/>
  </div>
 </div>
</div>
[logged]<script type="text/javascript">
function upClose(xnid){
	$('#event'+xnid).remove();
	$('#updates').css('height', $('.update_box').size()*123+'px');
}
function GoPage(event, p){
	var oi = (event.target) ? event.target.id: ((event.srcElement) ? event.srcElement.id : null);
	if(oi == 'no_ev' || oi == 'update_close' || oi == 'update_close2') return false;
	else {
		pattern = new RegExp(/photo[0-9]/i);
		pattern2 = new RegExp(/video[0-9]/i);
		if(pattern.test(p))
			Photo.Show(p);
		else if(pattern2.test(p)){
			vid = p.replace('/video', '');
			vid = vid.split('_');
			videos.show(vid[1], p, location.href);
		} else
			Page.Go(p);
	}
}
$(document).ready(function(){
	setInterval(function(){
		$.post('/index.php?go=updates', function(d){
			row = d.split('|');
			if(d && row[1]){
				if(row[0] == 1) uTitle = 'Новый ответ на стене';
				else if(row[0] == 2) uTitle = 'Новый комментарий к фотографии';
				else if(row[0] == 3) uTitle = 'Новый комментарий к видеозаписи';
				else if(row[0] == 4) uTitle = 'Новый комментарий к заметке';
		else if(row[0] == 10) uTitle = 'Ваша запись понравилась';
else if(row[0] == 11) uTitle = 'Новая заявка';
				else if(row[0] == 12) uTitle = 'Заявка принята';
				else uTitle = 'Событие';
				temp = '<div class="update_box cursor_pointer" id="event'+row[4]+'" onClick="GoPage(event, \''+row[6]+'\'); upClose('+row[4]+')"><div class="update_box_margin"><div style="height:19px"><span>'+uTitle+'</span><div class="update_close fl_r no_display" id="update_close" onMouseDown="upClose('+row[4]+')"><div class="update_close_ic" id="update_close2"></div></div></div><div class="clear"></div><div class="update_inpad"><a href="/u'+row[2]+'" onClick="Page.Go(this.href); return false"><img src="'+row[5]+'" id="no_ev" /></a><div class="update_data"><a id="no_ev" href="/u'+row[2]+'" onClick="Page.Go(this.href); return false">'+row[1]+'</a>&nbsp;&nbsp;'+row[3]+'</div></div><div class="clear"></div></div></div>';
				$('#updates').html($('#updates').html()+temp);
				if($('.update_box').size() <= 5) $('#updates').animate({'height': (123*$('.update_box').size())+'px'});
				if($('.update_box').size() > 5){
					evFirst = $('.update_box:first').attr('id');
					$('#'+evFirst).animate({'margin-top': '-123px'}, 400, function(){
						$('#'+evFirst).fadeOut('fast', function(){
							$('#'+evFirst).remove();
						});
					});
				}
			}
		});
	}, 4000);
});
</script>[/logged]
<div id="updates"></div>
<div class="clear"></div>

</body>
</html>