
<div class="header">
    <a class="logo" href="<?php echo url('app=store&id=' . $this->_var['store']['store_id']. '&Debug=Wap'); ?>"><img src="<?php echo $this->_var['store']['store_logo']; ?>"></a>
    
    <div class="searchBar">
        <form    id="" name="" method="get" action="index.php">  
            <input type="hidden" name="app" value="store" />
            <input type="hidden" name="act" value="search" />
            <input type="hidden" name="id" value="<?php echo $this->_var['store']['store_id']; ?>" />
            <input type="text" name="keyword" placeholder="搜搜看吧" class="search_text" />
            <div class="search_btn_img"><img src="<?php echo $this->res_base . "/" . 'images/search_btn.png'; ?>" style="width:30px; margin-top:5px;"></div>
            <input type="submit" value="" class="search_btn">
        </form>
    </div>
</div>