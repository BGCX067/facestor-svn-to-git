<?php
/* 
	Appointment: ����������� �������
	File: mod.php 
 
*/
if(!defined('MOZG'))
	die('Hacking attempt!');

if(isset($_GET['go']))
	$go = htmlspecialchars(strip_tags(stripslashes(trim(urldecode(mysql_escape_string($_GET['go']))))));
else
	$go = "main";

$mozg_module = $go;

check_xss();

switch($go){
	
	//�����������
	case "register":
		include ENGINE_DIR.'/modules/register.php';
	break;
	
	//������� ������������
	case "profile":
		$spBar = true;
		include ENGINE_DIR.'/modules/profile.php';
	break;
	
	//�������������� ���� ��������
	case "editprofile":
		$spBar = true;
		include ENGINE_DIR.'/modules/editprofile.php';
	break;
	
	//�������� �������
	case "loadcity":
		include ENGINE_DIR.'/modules/loadcity.php';
	break;
	
	//�������
	case "albums":
		$spBar = true;
		if($config['album_mod'] == 'yes')
			include ENGINE_DIR.'/modules/albums.php';
		else {
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;
	
	//�������� ����������
	case "photo":
		include ENGINE_DIR.'/modules/photo.php';
	break;
	
	//������
	case "friends":
		$spBar = true;
		include ENGINE_DIR.'/modules/friends.php';
	break;
	
	//��������
	case "fave":
		$spBar = true;
		include ENGINE_DIR.'/modules/fave.php';
	break;
	
	//���������
	case "messages":
		$spBar = true;
		include ENGINE_DIR.'/modules/messages.php';
	break;
	
	//�������
	case "im":
		include ENGINE_DIR.'/modules/im.php';
	break;

	//�������
	case "notes":
		$spBar = true;
		include ENGINE_DIR.'/modules/notes.php';
	break;
	
	//��������
	case "subscriptions":
		include ENGINE_DIR.'/modules/subscriptions.php';
	break;
	
	//�����
	case "videos":
		$spBar = true;
		if($config['video_mod'] == 'yes')
			include ENGINE_DIR.'/modules/videos.php';
		else {
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;
	
	//�����
	case "search":
		include ENGINE_DIR.'/modules/search.php';
	break;
	
	//�����
	case "wall":
		$spBar = true;
		include ENGINE_DIR.'/modules/wall.php';
	break;
	
	//������
	case "status":
		include ENGINE_DIR.'/modules/status.php';
	break;
	
	//�������
	case "news":
		$spBar = true;
		include ENGINE_DIR.'/modules/news.php';
	break;
	
	//���������
	case "settings":
		include ENGINE_DIR.'/modules/settings.php';
	break;
	
	//������
	case "support":
		include ENGINE_DIR.'/modules/support.php';
	break;
	
	//�������������� �������
	case "restore":
		include ENGINE_DIR.'/modules/restore.php';
	break;
	
	//�������� �������� ��� ������������ ������ �� �����, �������, ��� ���������
	case "attach":
		include ENGINE_DIR.'/modules/attach.php';
	break;
	
	//���� �����
	case "blog":
		$spBar = true;
		include ENGINE_DIR.'/modules/blog.php';
	break;

	//������
	case "balance":
		include ENGINE_DIR.'/modules/balance.php';
	break;
	
	//�������
	case "gifts":
		include ENGINE_DIR.'/modules/gifts.php';
	break;

	//����������
	case "groups":
		include ENGINE_DIR.'/modules/groups.php';
	break;
	
	//���������� -> ��������� ��������
	case "public":
		$spBar = true;
		include ENGINE_DIR.'/modules/public.php';
	break;
	
	//���������� -> �������� ����
	case "attach_groups":
		include ENGINE_DIR.'/modules/attach_groups.php';
	break;

	//������
	case "audio":
		if($config['audio_mod'] == 'yes')
			include ENGINE_DIR.'/modules/audio.php';
		else {
			$spBar = true;
			$user_speedbar = '����������';
			msgbox('', '������ ��������.', 'info');
		}
	break;

	//����������� ��������
	case "static":
		include ENGINE_DIR.'/modules/static.php';
	break;

	//�������� �������� �� ����
	case "distinguish":
		include ENGINE_DIR.'/modules/distinguish.php';
	break;

	//�������� ���� ��� �������� ������
	case "happy_friends_block_hide":
		$_SESSION['happy_friends_block_hide'] = 1;
		die();
	break;

	//�������� ���� ��� �������� ������
	case "fast_search":
		include ENGINE_DIR.'/modules/fast_search.php';
	break;

	//������
	case "report":
		include ENGINE_DIR.'/modules/report.php';
	break;

	//�������� ������ � ���������� ��� �����
	case "repost":
		include ENGINE_DIR.'/modules/repost.php';
	break;

	//������������ ����������
	case "updates":
		include ENGINE_DIR.'/modules/updates.php';
	break;

	//���������
	case "doc":
		include ENGINE_DIR.'/modules/doc.php';
	break;

	//������
	case "votes":
		include ENGINE_DIR.'/modules/votes.php';
	break;
	
	//���������� -> ��������� �������� -> �����������
	case "public_audio":
		include ENGINE_DIR.'/modules/public_audio.php';
	break;

		default:
			$spBar = true;
			
			/*if($logged)
				header("Location: /u{$user_info['user_id']}");
			else*/
				if($go != 'main')
					msgbox('', $lang['no_str_bar'], 'info');
}

if(!$metatags['title'])
	$metatags['title'] = $config['home'];
	
if($user_speedbar) 
	$speedbar = $user_speedbar;
else 
	$speedbar = $lang['welcome'];

$headers = '<title>'.$metatags['title'].'</title>
<meta name="generator" content="TOEngine" />
<meta http-equiv="content-type" content="text/html; charset=windows-1251" />';
?>