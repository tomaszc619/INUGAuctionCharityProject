	<form method="post" action="confirmation_items.php">
	<div class="bid-button-container ">
	<button type="submit" class="btn btn-primary bid-button">Bid</button>
    </div>
	<div class="container">
      <img src="{INCURL}themes/{THEME}/img/Ingenjorer_utan_granser_logo.png">
    </div>
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
				<div class="row">
					<a href="#" class="" data-toggle="modal" data-target="#myModal_{items.ID}">
						More info
					</a>
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
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">ID:</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">{items.ID}
						</div>
					</div>
				</div>
                <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">Minimum bid:
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">{items.MINIMUN_BID}
                    </div>
                  </div>
                </div>
				
                <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">My Bid
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <input name="biditem_{items.ID}" type="text" class="form-control">
                  </div>
                </div>
              </div>
            </div>
          </div>
		  
		  <div class="modal fade" id="myModal_{items.ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">{items.TITLE}</h4>
      </div>
      <div class="modal-body">
		  
			<div class="row">
				  <div class="col-xs-3 col-md-3">
					<div class="row">
						<img src="{items.IMAGE}" style="max-width:100%">
					</div>
				  </div>
				  <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">ID:</div>
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">{items.ID}
						</div>
					</div>
					</div>
					<div class="row">
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">Minimum bid:
						</div>
					  </div>
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">{items.MINIMUN_BID}
						</div>
					  </div>
					</div>
					
					<div class="row">
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">Retail price
						</div>
					  </div>
					  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
						<div class="text">{items.SUBTITLE}
						</div>
					  </div>
					</div>
				  </div>
			  </div>
			<div class="row">
			{items.DESCRIPTION}
			</div>
		 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
		  <!-- END items -->

		</div>
      </div>
      
    </div>
	
	
</form>