<!DOCTYPE html>
<html dir="<?php echo (isset($this->_rootref['DOCDIR'])) ? $this->_rootref['DOCDIR'] : ''; ?>" lang="<?php echo (isset($this->_rootref['LANGUAGE'])) ? $this->_rootref['LANGUAGE'] : ''; ?>">
<head>
<title><?php echo (isset($this->_rootref['PAGE_TITLE'])) ? $this->_rootref['PAGE_TITLE'] : ''; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo (isset($this->_rootref['CHARSET'])) ? $this->_rootref['CHARSET'] : ''; ?>">
<meta name="description" content="<?php echo (isset($this->_rootref['DESCRIPTION'])) ? $this->_rootref['DESCRIPTION'] : ''; ?>">
<meta name="keywords" content="<?php echo (isset($this->_rootref['KEYWORDS'])) ? $this->_rootref['KEYWORDS'] : ''; ?>">
<meta name="generator" content="WeBid">

<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/style.css">
<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/css/style.css">
<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/jquery.lightbox.css" media="screen">
<link rel="stylesheet" type="text/css" href="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>inc/calendar.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript" src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_924'])) ? $this->_rootref['L_924'] : ((isset($MSG['924'])) ? $MSG['924'] : '{ L_924 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=1">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_925'])) ? $this->_rootref['L_925'] : ((isset($MSG['925'])) ? $MSG['925'] : '{ L_925 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=2">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_926'])) ? $this->_rootref['L_926'] : ((isset($MSG['926'])) ? $MSG['926'] : '{ L_926 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=3">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_927'])) ? $this->_rootref['L_927'] : ((isset($MSG['927'])) ? $MSG['927'] : '{ L_927 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=4">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_928'])) ? $this->_rootref['L_928'] : ((isset($MSG['928'])) ? $MSG['928'] : '{ L_928 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=5">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_929'])) ? $this->_rootref['L_929'] : ((isset($MSG['929'])) ? $MSG['929'] : '{ L_929 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=6">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_930'])) ? $this->_rootref['L_930'] : ((isset($MSG['930'])) ? $MSG['930'] : '{ L_930 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=7">
<link rel="alternate" type="application/rss+xml" title="<?php echo ((isset($this->_rootref['L_931'])) ? $this->_rootref['L_931'] : ((isset($MSG['931'])) ? $MSG['931'] : '{ L_931 }')); ?>" href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>rss.php?feed=8">

<script type="text/javascript" src="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>loader.php?js=<?php echo (isset($this->_rootref['JSFILES'])) ? $this->_rootref['JSFILES'] : ''; ?>"></script>
<?php if ($this->_rootref['LOADCKEDITOR']) {  ?>
	<script type="text/javascript" src="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>ckeditor/ckeditor.js"></script>
<?php } ?>

<script type="text/javascript">
$(document).ready(function() {
	$('a.new-window').click(function(){
		var posY = ($(window).height()-550)/2;
		var posX = ($(window).width())/2;
		window.open(this.href, this.alt, "toolbar=0,location=0,directories=0,scrollbars=1,screenX="+posX+",screenY="+posY+",status=0,menubar=0,width=550,height=550");
		return false;
	});
	var currenttime = '<?php echo (isset($this->_rootref['ACTUALDATE'])) ? $this->_rootref['ACTUALDATE'] : ''; ?>';
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