<!DOCTYPE html>
<html dir="{DOCDIR}" lang="{LANGUAGE}">
<head>
<title>{PAGE_TITLE}</title>
<meta http-equiv="Content-Type" content="text/html; charset={CHARSET}">
<meta name="description" content="{DESCRIPTION}">
<meta name="keywords" content="{KEYWORDS}">
<meta name="generator" content="WeBid">

<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/style.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/css/style.css">
<link rel="stylesheet" type="text/css" href="{INCURL}themes/{THEME}/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="{INCURL}inc/calendar.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<link rel="alternate" type="application/rss+xml" title="{L_924}" href="{SITEURL}rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="{L_925}" href="{SITEURL}rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="{L_926}" href="{SITEURL}rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="{L_927}" href="{SITEURL}rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="{L_928}" href="{SITEURL}rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="{L_929}" href="{SITEURL}rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="{L_930}" href="{SITEURL}rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="{L_931}" href="{SITEURL}rss.php?feed=8">

<script type="text/javascript" src="{INCURL}loader.php?js={JSFILES}"></script>
<!-- IF LOADCKEDITOR -->
	<script type="text/javascript" src="{INCURL}ckeditor/ckeditor.js"></script>
<!-- ENDIF -->

<script type="text/javascript">
$(document).ready(function() {
	$('a.new-window').click(function(){
		var posY = ($(window).height()-550)/2;
		var posX = ($(window).width())/2;
		window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX="+posX+",screenY="+posY+",status=0,menubar=0,width=550,height=550");
		return false;
	});
	var currenttime = '{ACTUALDATE}';
	var serverdate = new Date(currenttime);
	function padlength(what){
		var output=(what.toString().length==1)? "0"+what : what;
		return output;
	}
	function displaytime(){
		serverdate.setSeconds(serverdate.getSeconds()+1)
		var timestring=padlength(serverdate.getHours())+":"+padlength(serverdate.getMinutes())+":"+padlength(serverdate.getSeconds());
		$("#servertime").html(timestring);
	}
	setInterval(displaytime, 1000);
	$(function() {
		$('#gallery a').lightBox();
	});
});
</script>
</head>
<body>