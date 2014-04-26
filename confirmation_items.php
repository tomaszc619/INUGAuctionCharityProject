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

$selectedItems = array();


function build_items($row)
{
	global $system, $uploaded_path;
	global $template, $PAGES, $PAGE;
	// image icon
	if (!empty($row['pict_url']))
	{
		$row['pict_url'] = $system->SETTINGS['siteurl'] . 'getthumb.php?w=' . $system->SETTINGS['thumb_list'] . '&fromfile=' . $uploaded_path . $row['id'] . '/' . $row['pict_url'];
	}
	else
	{
		$row['pict_url'] = get_lang_img('nopicture.gif');
	}

	if ($row['current_bid'] == 0)
	{
		$row['current_bid'] = $row['minimum_bid'];
	}

	if ($row['buy_now'] > 0 && $row['bn_only'] == 'n' && ($row['num_bids'] == 0 || ($row['reserve_price'] > 0 && $row['current_bid'] < $row['reserve_price'])))
	{
		$row['buy_now'] = '<a href="' . $system->SETTINGS['siteurl'] . 'buy_now.php?id=' . $row['id'] . '"><img src="' . get_lang_img('buy_it_now.gif') . '" border=0 class="buynow"></a>' . $system->print_money($row['buy_now']);
	}
	elseif ($row['buy_now'] > 0 && $row['bn_only'] == 'y')
	{
		$row['current_bid'] = $row['buy_now'];
		$row['buy_now'] = '<a href="' . $system->SETTINGS['siteurl'] . 'buy_now.php?id=' . $row['id'] . '"><img src="' . get_lang_img('buy_it_now.gif') . '" border=0 class="buynow"></a>' . $system->print_money($row['buy_now']) . ' <img src="' . get_lang_img('bn_only.png') . '" border="0" class="buynow">';
	}
	else
	{
		$row['buy_now'] = '';
	}

	return $row;
}
$k = 0;
foreach ($_POST as $key => &$value) {
	if(isset($value) && !empty($value) && is_numeric($value) && strpos($key,'biditem_') !== false)
	{		
		$idarray = explode ("biditem_", $key);
		$itemId = $idarray[1];
		//echo "<p>Id: ". $idarray[1]. " - " .$value."</p>";
		
		$query = "SELECT a.*, ac.counter, u.nick, u.reg_date, u.country, u.zip FROM " . $DBPrefix . "auctions a
		LEFT JOIN " . $DBPrefix . "users u ON (u.id = a.user)
		LEFT JOIN " . $DBPrefix . "auccounter ac ON (ac.auction_id = a.id)
		WHERE a.id = " . $itemId . " LIMIT 1";
		$result = mysql_query($query);
		$system->check_mysql($result, $query, __LINE__, __FILE__);
		if (mysql_num_rows($result) == 0)
		{
			$_SESSION['msg_title'] = $ERR_622;
			$_SESSION['msg_body'] = $ERR_623;
			header('location: message.php');
			exit;
		}

		$auction_data = mysql_fetch_assoc($result);
		$row = build_items($auction_data);
		
		// time left till the end of this auction
		$difference = $row['ends'] - time();
		$bgcolour = ($k % 2) ? 'bgcolor="#FFFEEE"' : '';
		
		$template->assign_block_vars('items', array(
				'ID' => $row['id'],
				'ROWCOLOUR' => ($row['highlighted'] == 'y') ? 'bgcolor="#fea100"' : $bgcolour,
				'IMAGE' => $row['pict_url'],
				'TITLE' => $row['title'],
				//INUG Subtitle is retail price
				'SUBTITLE' => $row['subtitle'],
				'BUY_NOW' => ($difference < 0) ? '' : $row['buy_now'],
				'BID' => $row['current_bid'],
				'BIDFORM' => $system->print_money($row['current_bid']),
				'CLOSES' => ArrangeDateNoCorrection($row['ends']),
				'NUMBIDS' => sprintf($MSG['950'], $row['num_bids']),
				'BIDVALUE' => $value,
				'DESCRIPTION' => $row['description'],
		
				'B_BOLD' => ($row['bold'] == 'y')
		));
		$k++;
	}	
}

include 'header.php';
$template->set_filenames(array(
		'body' => 'confirmation_items.tpl'
));
$template->display('body');
include 'footer.php';

?>