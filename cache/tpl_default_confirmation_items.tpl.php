<form method="post" action="send_bids.php">
	<div class="bid-button-container ">
	<button type="submit" class="btn btn-primary bid-button">Confirm</button>
    </div>
	<div class="container">
      <img src="<?php echo (isset($this->_rootref['INCURL'])) ? $this->_rootref['INCURL'] : ''; ?>themes/<?php echo (isset($this->_rootref['THEME'])) ? $this->_rootref['THEME'] : ''; ?>/img/Ingenjorer_utan_granser_logo.png">
    </div>
	    <div class="container">
      <div class="container">
        <div class="row">
		<?php $_items_count = (isset($this->_tpldata['items'])) ? sizeof($this->_tpldata['items']) : 0;if ($_items_count) {for ($_items_i = 0; $_items_i < $_items_count; ++$_items_i){$_items_val = &$this->_tpldata['items'][$_items_i]; ?>
          <div class="item col-xs-12 col-sm-6 col-md-4 col-lg-4">
            <div class="row">
              <div class="col-xs-3 col-md-3">
				<div class="row">
					<img src="<?php echo $_items_val['IMAGE']; ?>" style="max-width:100%">
				</div>
				</div>
              <div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
                <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="text"><?php echo $_items_val['TITLE']; ?>
                    </div>
                  </div>
                </div>
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
                    <div class="text">ID: <?php echo $_items_val['ID']; ?></div>
                  </div>
				</div>
                			
                <div class="row">
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <div class="text">My Bid
                    </div>
                  </div>
                  <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    <input name="biditem_<?php echo $_items_val['ID']; ?>" type="text" class="form-control" value="<?php echo $_items_val['BIDVALUE']; ?>">
                  </div>
                </div>
              </div>
            </div>
          </div>
		  <?php }} ?>

		</div>
      </div>
      
    </div>
	</form>