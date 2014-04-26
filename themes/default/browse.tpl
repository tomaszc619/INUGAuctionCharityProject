<button type="button" class="btn btn-default bid-button">Bid</button>
<form method="post" action="/url">
    <div class="container">
      <img src="images/Ingenjorer_utan_granser_logo.png">
    </div>
    <div class="container">
      <div class="container">
        <div class="row">
		<!-- BEGIN items -->
          <div class="item col-xs-12 col-sm-6 col-md-4 col-lg-4">
            <div class="row">
              <div class="col-xs-3 col-md-3">
				<div class="row">
					<img src="https://builder.divshot.com/img/placeholder-100x100.gif" style="max-width:100%">
				</div>
				<div class="row">
					<a href="#" class="" data-toggle="modal" data-target="#myModal">
						More info
					</a>
				</div>
              </div>
              <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="text">Heading for the item being auctioned
                    </div>
                  </div>
                </div>
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <div class="text">ID: <?= $i ?></div>
                  </div>
				</div>
                <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">Minimum bid:
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">100kr
                    </div>
                  </div>
                </div>
				
                <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">My Bid
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <input type="text" class="form-control">
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <!-- END items -->

		</div>
      </div>
      
    </div>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Heading for the item being auctioned</h4>
      </div>
      <div class="modal-body">
		  
			<div class="row">
				  <div class="col-xs-3 col-md-3">
					<div class="row">
						<img src="images/Ingenjorer_utan_granser_logo.png" style="max-width:100%">
					</div>
				  </div>
				  <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<div class="row">
						<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
						<div class="text">ID: <?= $i ?></div>
					  </div>
					</div>
					<div class="row">
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">Minimum bid:
						</div>
					  </div>
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">100kr
						</div>
					  </div>
					</div>
					
					<div class="row">
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">Retail price
						</div>
					  </div>
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">2000kr
						</div>
					  </div>
					</div>
				  </div>
			  </div>
			<div class="row">
			Beskrivning
			</div>
		 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</form>

    <form method="post" action="/url">
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
                <input id="biditem_{items.ID}" maxlength="8" />
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