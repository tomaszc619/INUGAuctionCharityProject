<?php
global $template, $PAGES, $PAGE;
include 'common.php';
include $include_path . 'dates.inc.php';
include $main_path . 'language/' . $language . '/categories.inc.php';
$catscontrol = new MPTTcategories();

include 'header.php';
$template->set_filenames(array(
		'body' => 'thankyoupage.tpl'
));
$template->display('body');
include 'footer.php';