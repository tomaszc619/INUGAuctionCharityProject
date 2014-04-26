    <form method="post" action="send_bids.php">
	    <div class="container">
      <div class="container">
        <div class="row">
		<!-- BEGIN items -->
          <div class="item col-xs-12 col-sm-6 col-md-4 col-lg-4">
            <div class="row">
              <div class="col-xs-3 col-md-3">
				<div class="row">
					<img src="{items.IMAGE}" style="max-width:100%">
				</div>
				</div>
              <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="text">{items.TITLE}
                    </div>
                  </div>
                </div>
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <div class="text">ID: {items.ID}</div>
                  </div>
				</div>
                			
                <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">My Bid
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <input name="biditem_{items.ID}" type="text" class="form-control" value="{items.BIDVALUE}">
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <!-- END items -->

		</div>
      </div>
      
    </div>
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