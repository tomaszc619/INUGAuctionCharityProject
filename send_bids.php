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
$bidder_id = $user->user_data['id'];
foreach ($_POST as $key => &$value) {
	if(isset($value) && !empty($value) && is_numeric($value))
	{		
		$idarray = explode ("biditem_", $key);
		$itemId = $idarray[1];
		//insert mega cool code here
		
		$query = "SELECT bid, quantity FROM " . $DBPrefix . "bids WHERE bidder = " . $bidder_id . " AND auction = " . $itemId . " ORDER BY bid DESC LIMIT 1";
		$res = mysql_query($query);
		$system->check_mysql($res, $query, __LINE__, __FILE__);
		
		$NOW = time();
		$query = "INSERT INTO " . $DBPrefix . "bids VALUES (NULL, " . $itemId . ", " . $bidder_id . ", " . floatval($value) . ", '" . $NOW . "', 1)";
		$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
		$query = "UPDATE " . $DBPrefix . "counters SET bids = (bids + 1)";
		$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
		$query = "UPDATE " . $DBPrefix . "auctions SET current_bid = " . floatval($value) . ", num_bids = num_bids + 1 WHERE id = " . $itemId;
		$system->check_mysql(mysql_query($query), $query, __LINE__, __FILE__);
		
	}	
}


header('location: logout.php');

/*include 'header.php';
$template->set_filenames(array(
		'body' => 'confirmation_items.tpl'
));
$template->display('body');
include 'footer.php';*/

?>