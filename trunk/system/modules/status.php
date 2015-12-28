<?php
/* 
	Appointment: Статус
	File: status.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

NoAjaxQuery();

if($logged){
	$user_id = $user_info['user_id'];
	$text = ajax_utf8(textFilter($_POST['text'], false, true));
	$db->query("UPDATE `".PREFIX."_users` SET user_status = '{$text}' WHERE user_id = '{$user_id}'");
	echo stripslashes(stripslashes(textFilter(ajax_utf8($_POST['text']))));
	//Чистим кеш
	mozg_clear_cache_file('user_'.$user_id.'/profile_'.$user_id);
	mozg_clear_cache();
}

die();
?>