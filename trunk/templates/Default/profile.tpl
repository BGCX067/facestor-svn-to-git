<script type="text/javascript">[after-reg]Profile.LoadPhoto();[/after-reg]
$(document).ready(function(){
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	[owner]if($('.profile_onefriend_happy').size() > 4) $('#happyAllLnk').show();[/owner]
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
<div class="ava"> 
<span id="ava"><img src="{ava}" alt="" title="" id="ava_{user-id}" /></span>
<div class="menuleft" style="margin-top:5px">
[owner]<a href="/editmypage" onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><img class="icon edit_ic" src="{theme}/images/spacer.gif" alt="" /><div>������������� ��������</div></a>
</a><a href="/" onClick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;"><img class="icon editphoto_ic" src="{theme}/images/spacer.gif" alt="" /><div>�������� ����������</div></a><a href="/" onClick="Profile.miniature(); return false;"><img class="icon editphoto_ic" src="{theme}/images/spacer.gif" alt="" /><div>�������� ���������</div></a><a href="/" onClick="Profile.DelPhoto(); $('.profileMenu').hide(); return false;" id="del_pho_but" {display-ava}><img class="icon del_photo_ic" src="{theme}/images/spacer.gif" alt="" /><div>������� ����������</div></a><br />[/owner]
[not-owner][blacklist][privacy-msg]<a href="/" onClick="messages.new_({user-id}); return false"><img class="icon mail_ic" src="{theme}/images/spacer.gif" alt="" /><div>��������� ���������</div></a>[/privacy-msg][/blacklist]
[no-friends][blacklist]<a href="/" onClick="friends.add({user-id}); return false"><img class="icon addfr_ic" src="{theme}/images/spacer.gif" alt="" /><div>�������� � ������</div></a>[/blacklist][/no-friends]
[yes-friends]<a href="/" onClick="friends.delet({user-id}, 1); return false"><img class="icon del_friends" src="{theme}/images/spacer.gif" alt="" /><div>������ �� ������</div></a>[/yes-friends]
[blacklist][no-subscription]<a href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><img class="icon subs_ic" src="{theme}/images/spacer.gif" alt="" /><div><span id="text_add_subscription">����������� �� ����������</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addsubscription_load" class="no_display" style="margin-right:-13px" /></div></a>[/no-subscription][/blacklist]
[yes-subscription]<a href="/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><img class="icon subs_ic" src="{theme}/images/spacer.gif" alt="" /><div><span id="text_add_subscription">���������� �� ����������</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addsubscription_load" class="no_display" style="margin-right:-13px" /></div></a>[/yes-subscription]
<a href="/" onClick="gifts.box('{user-id}'); return false"><img class="icon new_gift" src="{theme}/images/spacer.gif" alt="" /><div>��������� �������</div></a>
[no-fave]<a href="/" onClick="fave.add({user-id}); return false" id="addfave_but"><img class="icon fav_ic" src="{theme}/images/spacer.gif" alt="" /><div><span id="text_add_fave">�������� � ��������</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addfave_load" class="no_display" /></div></a>[/no-fave]
[yes-fave]<a href="/" onClick="fave.delet({user-id}); return false" id="addfave_but"><img class="icon fav_ic" src="{theme}/images/spacer.gif" alt="" /><div><span id="text_add_fave">������� �� ��������</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addfave_load" class="no_display" /></div></a>[/yes-fave]
[no-blacklist]<a href="/" onClick="settings.addblacklist({user-id}); return false" id="addblacklist_but"><img class="icon compla_ic" src="{theme}/images/spacer.gif" alt="" /><div><span id="text_add_blacklist">�������������</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></div></a>[/no-blacklist]
[yes-blacklist]<a href="/" onClick="settings.delblacklist({user-id}, 1); return false" id="addblacklist_but"><img class="icon compla_ic" src="{theme}/images/spacer.gif" alt="" /><div><span id="text_add_blacklist">��������������</span> <img src="/templates/Default/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></div></a>[/yes-blacklist]
<br />
[/not-owner]
<br />
</div>
[blacklist]<div class="leftcbor">
 [owner][happy-friends]<div id="happyBLockSess"><div class="albtitle">��� �������� ������ <span>{happy-friends-num}</span><div class="profile_happy_hide"><img src="{theme}/images/hide_lef.gif" onMouseOver="myhtml.title('1', '������', 'happy_block_')" id="happy_block_1" onClick="HappyFr.HideSess(); return false" /></div></div>
 <div class="newmesnobg profile_block_happy_friends" style="padding:0px;padding-top:10px;">{happy-friends}<div class="clear"></div></div>
 <div class="cursor_pointer no_display" onMouseDown="HappyFr.Show(); return false" id="happyAllLnk"><div class="public_wall_all_comm profile_block_happy_friends_lnk">�������� ���</div></div></div>
 [/happy-friends][/owner]
 [friends]<div class="albtitle">������ <span>{friends-num}</span><div><div class="mono_ico" onmouseover="myhtml.title('1', '�������� ���� ������', 'newBBlockl')" id="newBBlockl1"></div></div></div>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{friends}<div class="clear"></div>
 </div>[/friends]
 [online-friends]<div class="albtitle">������ �� ����� <span>{online-friends-num}</span><div><div class="mono_ico_frOnline" onmouseover="myhtml.title('2', '�������� ���� ������ �� �����', 'newBBlockl')" id="newBBlockl2"></div></div></div>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{online-friends}<div class="clear"></div>
 </div>[/online-friends]
 [subscriptions]<div class="albtitle">���������� ���� <span>{subscriptions-num}</span><div><div class="mono_ico_subscr" onmouseover="myhtml.title('3', '�������� ���� ���������� �����', 'newBBlockl')" id="newBBlockl3"></div></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{subscriptions}<div class="clear"></div>
 </div>[/subscriptions]
 [groups]<div class="albtitle cursor_pointer" onClick="groups.all_groups_user('{user-id}')">���������� �������� <span id="groups_num">{groups-num}</span><div class="mono_ico_groups" onmouseover="myhtml.title('4', '�������� ��� ���������� ��������', 'newBBlockl')" id="newBBlockl4"></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{groups}<div class="clear"></div>
 </div>[/groups]
 [videos]<div class="albtitle">����������� <span>{videos-num}</span><div><a href="/videos/{user-id}" onClick="Page.Go(this.href); return false">���</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{videos}<div class="clear"></div>
 </div>[/videos]
 [notes]<div class="albtitle">������� <span>{notes-num}</span><div><a href="/notes/{user-id}" onClick="Page.Go(this.href); return false">���</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{notes}<div class="clear"></div>
 </div>[/notes]
 [docs]<div class="albtitle">��������� <span>{docs-num}</span><div><a href="/docs" onClick="Page.Go(this.href); return false">���</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{docs}<div class="clear"></div>
 </div>[/docs]
<div class="clear"></div>
</div>[/blacklist]
</div>

<div class="profiewr">
 [owner]<div class="set_status_bg no_display" id="set_status_bg">
  <input type="text" id="status_text" class="status_inp" value="{status-text}" style="width:500px;" maxlength="255" onKeyPress="if(event.keyCode == 13)gStatus.set()" />
  <div class="fl_l status_text"><span class="no_status_text [status]no_display[/status]">������� ����� ����� ������ �������.</span><a href="/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">������� ������</a></div>
  [status]<div class="button_div_gray fl_r status_but margin_left"><button>������</button></div>[/status]
  <div class="button_div fl_r status_but"><button id="status_but" onClick="gStatus.set()">���������</button></div>
 </div>[/owner]
 <div class="titleu">{name} {lastname} <div class="online_time">{online}</div>[owner]<a href="/editmypage" onClick="Page.Go(this.href); return false;" class="fl_r"><b>������������� ��������</b></a>[/owner]</div>
 <div class="status">
  <div>[owner]<a href="/" id="new_status" onClick="gStatus.open(); return false">[/owner][blacklist]{status-text}[/blacklist][owner]</a>[/owner]</div>
  [owner]<span id="tellBlockPos"></span>
  <div class="status_tell_friends no_display">
   <div class="status_str"></div>
   <div class="html_checkbox" id="tell_friends" onClick="myhtml.checkbox(this.id); gStatus.startTell()">���������� �������</div>
  </div>[/owner]
  [owner]<a href="#" onClick="gStatus.open(); return false" id="status_link" [status]class="no_display"[/status]>���������� ������</a>[/owner]
 </div>
 [not-all-country]<div class="flpodtext">������:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}" onClick="Page.Go(this.href); return false">{country}</a></div>[/not-all-country]
 [not-all-city]<div class="flpodtext">�����:</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}&city={city-id}" onClick="Page.Go(this.href); return false">{city}</a></div>[/not-all-city]
 [blacklist][not-all-birthday]<div class="flpodtext">���� ��������:</div> <div class="flpodinfo">{birth-day}</div>[/not-all-birthday]
 [privacy-info][sp]<div class="flpodtext">�������� ���������:</div> <div class="flpodinfo">{sp}</div>[/sp][/privacy-info]

  <br>
 <br>
 <div class="flpodtext"></div>
 <div class="cursor_pointer" onClick="Profile.MoreInfo(); return false" id="moreInfoLnk"><div class="public_wall_all_comm profile_hide_opne" id="moreInfoText">�������� ��������� ����������</div></div>
 <div id="moreInfo" class="no_display">
 [privacy-info][not-block-contact]<div class="fieldset"><div class="w2_a" [owner]style="width:230px;"[/owner]>���������� ���������� [owner]<span><a href="/editmypage/contact" onClick="Page.Go(this.href); return false;">�������������</a></span>[/owner]</div></div>
 [not-contact-phone]<div class="flpodtext">���. �������:</div> <div class="flpodinfo">{phone}</div>[/not-contact-phone]
 [not-contact-vk]<div class="flpodtext">� ��������:</div> <div class="flpodinfo">{vk}</div>[/not-contact-vk]
 [not-contact-od]<div class="flpodtext">�������������:</div> <div class="flpodinfo">{od}</div>[/not-contact-od]
 [not-contact-fb]<div class="flpodtext">FaceBook:</div> <div class="flpodinfo">{fb}</div>[/not-contact-fb]
 [not-contact-skype]<div class="flpodtext">Skype:</div> <div class="flpodinfo"><a href="skype:{skype}">{skype}</a></div>[/not-contact-skype]
 [not-contact-icq]<div class="flpodtext">ICQ:</div> <div class="flpodinfo">{icq}</div>[/not-contact-icq]
 [not-contact-site]<div class="flpodtext">���-����:</div> <div class="flpodinfo">{site}</div>[/not-contact-site][/not-block-contact]
 <div class="fieldset"><div class="w2_b" [owner]style="width:200px;"[/owner]>������ ���������� [owner]<span><a href="/editmypage/interests" onClick="Page.Go(this.href); return false;">�������������</a></span>[/owner]</div></div>{not-block-info}
 [not-info-activity]<div class="flpodtext">������������:</div> <div class="flpodinfo">{activity}</div>[/not-info-activity]
 [not-info-interests]<div class="flpodtext">��������:</div> <div class="flpodinfo">{interests}</div>[/not-info-interests]
 [not-info-music]<div class="flpodtext">������� ������:</div> <div class="flpodinfo">{music}</div>[/not-info-music]
 [not-info-kino]<div class="flpodtext">������� ������:</div> <div class="flpodinfo">{kino}</div>[/not-info-kino]
 [not-info-books]<div class="flpodtext">������� �����:</div> <div class="flpodinfo">{books}</div>[/not-info-books]
 [not-info-games]<div class="flpodtext">������� ����:</div> <div class="flpodinfo">{games}</div>[/not-info-games]
 [not-info-quote]<div class="flpodtext">������� ������:</div> <div class="flpodinfo">{quote}</div>[/not-info-quote]
 [not-info-myinfo]<div class="flpodtext">� ����:</div> <div class="flpodinfo">{myinfo}</div>[/not-info-myinfo][/privacy-info]
 </div>
 [albums]<a href="/albums/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">������� <span>{albums-num}</span><div><b>���</b></div></div></a>{albums}<div class="clear"></div>[/albums]
 [audios]<div id="jquery_jplayer"></div><input type="hidden" id="teck_id" value="1" /><a href="/audio{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">{audios-num}<div><b>���</b></div></div></a>{audios}<div class="clear"></div>[/audios]
 [gifts]<a href="/gifts{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="margin-top:5px">{gifts-text}<div><b>���</b></div></div><center>{gifts}</center><div class="clear"></div></a>[/gifts]
 <a href="/wall{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle" style="border-bottom:0px">����� <span id="wall_rec_num">{wall-rec-num}</span><div class="mono_ico_wall"></div></div></a>
 [privacy-wall]<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px">
  <input type="hidden" value="[owner]��� � ��� ������?[/owner][not-owner]�������� ���������...[/not-owner]" id="wall_input_text" />
  <input type="text" class="wall_inpst" value="[owner]��� � ��� ������?[/owner][not-owner]�������� ���������...[/not-owner]" onMouseDown="wall.form_open(); return false" id="wall_input" style="margin:0px" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta" style="width:534px"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)"
   >
   </textarea>
   <div id="attach_files" class="margin_top_10 no_display"></div>
   <div id="attach_block_lnk" class="no_display clear">
   <div class="attach_link_bg">
    <div align="center" id="loading_att_lnk"><img src="{theme}/images/loading_mini.gif" style="margin-bottom:-2px" /></div>
    <img src="" align="left" id="attatch_link_img" class="no_display cursor_pointer" onClick="wall.UrlNextImg()" />
	<div id="attatch_link_title"></div>
	<div id="attatch_link_descr"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">������: <a href="/" id="attatch_link_url" target="_blank"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', '�� �����������', 'attach_lnk_')" id="attach_lnk_1" onClick="wall.RemoveAttachLnk()" /></div>
   <input type="hidden" id="attach_lnk_stared" />
   <input type="hidden" id="teck_link_attach" />
   <span id="urlParseImgs" class="no_display"></span>
   </div>
   <div class="clear"></div>
   <div id="attach_block_vote" class="no_display">
   <div class="attach_link_bg">
	<div class="texta">���� ������:</div><input type="text" id="vote_title" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" 
		onKeyUp="$('#attatch_vote_title').text(this.value)"
	/><div class="mgclr"></div>
	<div class="texta">�������� ������:<br /><small><span id="addNewAnswer"><a class="cursor_pointer" onClick="Votes.AddInp()">��������</a></span> | <span id="addDelAnswer">�������</span></small></div><input type="text" id="vote_answer_1" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div class="texta">&nbsp;</div><input type="text" id="vote_answer_2" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div id="addAnswerInp"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">�����: <a id="attatch_vote_title" style="text-decoration:none;cursor:default"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', '�� �����������', 'attach_vote_')" id="attach_vote_1" onClick="Votes.RemoveForAttach()" /></div>
   <input type="hidden" id="answerNum" value="2" />
   </div>
   <div class="clear"></div>
   <input id="vaLattach_files" type="hidden" />
   <div class="clear"></div>
   <div class="button_div fl_l margin_top_10"><button onClick="wall.send(); return false" id="wall_send">���������</button></div>
   <div class="wall_attach fl_r" onClick="wall.attach_menu('open', this.id, 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', this.id, 'wall_attach_menu')" id="wall_attach">����������</div>
   <div class="wall_attach_menu no_display" onMouseOver="wall.attach_menu('open', 'wall_attach', 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', 'wall_attach', 'wall_attach_menu')" id="wall_attach_menu">
    <div class="wall_attach_icon_smile" id="wall_attach_link" onClick="wall.attach_addsmile()">�������</div>
    <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="wall.attach_addphoto()">����������</div>
    <div class="wall_attach_icon_video" id="wall_attach_link" onClick="wall.attach_addvideo()">�����������</div>
    <div class="wall_attach_icon_audio" id="wall_attach_link" onClick="wall.attach_addaudio()">�����������</div>
    <div class="wall_attach_icon_doc" id="wall_attach_link" onClick="wall.attach_addDoc()">��������</div>
    <div class="wall_attach_icon_vote" id="wall_attach_link" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')">�����</div>
   </div>
  </div>
  <div class="clear"></div>
 </div>[/privacy-wall]
 <div id="wall_records">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]>�� ����� ���� ��� �� ����� ������.</div>[/no-records]</div>
 [wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="wall_link">� ���������� �������</div></div>[/wall-link][/blacklist]
 [not-blacklist]<div class="err_yellow" style="font-weight:normal;margin-top:5px">{name} ���������� ������ � ����� ��������.</div>[/not-blacklist]
</div>
<div class="clear"></div>