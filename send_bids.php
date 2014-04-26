<?php
/***************************************************************************
 *   copyright				: (C) 2008 - 2013 WeBid
 *   site					: http://www.webidsupport.com/
 ***************************************************************************/

/***************************************************************************
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version. Although none of the code may be
 *   sold. If you have been sold this script, get a refund.
 ***************************************************************************/

global $template, $PAGES, $PAGE;
include 'common.php';
include $include_path . 'dates.inc.php';
include $main_path . 'language/' . $language . '/categories.inc.php';
$catscontrol = new MPTTcategories();

foreach ($_POST as $key => &$value) {
	if(isset($value) && !empty($value) && is_numeric($value))
	{		
		$idarray = explode ("biditem_", $key);
		$itemId = $idarray[1];
		echo "<p>Id: ". $idarray[1]. " - " .$value."</p>";
		//insert mega cool code here
		
	}	
}

include 'header.php';
$template->set_filenames(array(
		'body' => 'confirmation_items.tpl'
));
$template->display('body');
include 'footer.php';

?>