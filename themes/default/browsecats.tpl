    <form method="post" action="confirmation_items.php">
	<table width="99%" border="0" cellspacing="1" cellpadding="4">
<!-- BEGIN items -->
		<tr align="center" >
			<td align="center" width="15%">
				<a href="{SITEURL}item.php?id={items.ID}"><img src="{items.IMAGE}" border="0"></a>
			</td>
			<td align="left"<!-- IF items.B_BOLD --> style="font-weight: bold;"<!-- ENDIF -->>
                <a href="{SITEURL}item.php?id={items.ID}" class="bigfont">{items.TITLE}{items.ID}</a>
				<!-- IF B_SUBTITLE && items.SUBTITLE ne '' --><p class="smallspan">Retail price; {items.SUBTITLE}</p><!-- ENDIF -->
				<p>{L_949} {items.CLOSES}</p>

			</td>
            <td>
	                <input type="number" name="biditem_{items.ID}" maxlength="8" />
            </td>
            <td>
                <p>{items.DESCRIPTION}</p>
            </td>
			<td align="center" width="15%">
	<!-- IF items.BUY_NOW neq '' -->
				<span class="redfont bigfont">{items.BUY_NOW}</span>
	<!-- ELSE -->
				<span class="grayfont">{L_951}</span>
	<!-- ENDIF -->
			</td>
			<td align="center" width="15%">
				<span class="bigfont">{items.BIDFORM}</span>
				<p class="smallspan">{items.NUMBIDS}</p>
			</td>
		</tr>
<!-- END items -->
		<tr align="center">
			<td colspan="4">{NUM_AUCTIONS}</td>
		</tr>
	</table>
		<input type="submit"/>
    </form>
	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td align="center">
				{L_5117}&nbsp;{PAGE}&nbsp;{L_5118}&nbsp;{PAGES}
				<br>
				{PREV}
<!-- BEGIN pages -->
				{pages.PAGE}&nbsp;&nbsp;
<!-- END pages -->
				{NEXT}
			</td>
		</tr>
	</table>