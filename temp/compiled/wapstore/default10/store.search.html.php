
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<?php echo $this->_var['page_seo']; ?>
<link type="text/css" rel="stylesheet" href="<?php echo $this->res_base . "/" . 'css/common.css'; ?>">
<link type="text/css" rel="stylesheet" href="<?php echo $this->res_base . "/" . 'css/index.css'; ?>">
<link type="text/css" rel="stylesheet" href="<?php echo $this->res_base . "/" . 'css/flexslider.css'; ?>">

<script type="text/javascript" src="<?php echo $this->res_base . "/" . 'js/jquery.js'; ?>" charset="utf-8"></script>
<script type="text/javascript" src="<?php echo $this->res_base . "/" . 'js/jquery.flexslider.js'; ?>" charset="utf-8"></script>
<script type="text/javascript" src="<?php echo $this->res_base . "/" . 'js/sub_menu.js'; ?>" charset="utf-8"></script>
<script type="text/javascript" src="<?php echo $this->lib_base . "/" . 'ecmall.js'; ?>" charset="utf-8"></script>

</head>

<body>
<div id="page">
 <?php echo $this->fetch('header.html'); ?>
 
      <div class="paixu">
            <span class="red_btn">排序</span>
            <a href="index.php?app=store&act=search&id=<?php echo $this->_var['store']['store_id']; ?>&keyword=<?php echo $this->_var['keyword']; ?>&cate_id=<?php echo $this->_var['cate_id']; ?>&order=sales" class="white_btn <?php if ($this->_var['sort'] == '4'): ?>cur<?php endif; ?>">销量<i></i></a>
            <a href="index.php?app=store&act=search&id=<?php echo $this->_var['store']['store_id']; ?>&keyword=<?php echo $this->_var['keyword']; ?>&cate_id=<?php echo $this->_var['cate_id']; ?>&order=add_time" class="white_btn <?php if ($this->_var['sort'] == '1'): ?>cur<?php endif; ?>">新品<i></i></a>
            <a href="index.php?app=store&act=search&id=<?php echo $this->_var['store']['store_id']; ?>&keyword=<?php echo $this->_var['keyword']; ?>&cate_id=<?php echo $this->_var['cate_id']; ?>&order=price" class="white_btn <?php if ($this->_var['sort'] == '2'): ?>cur<?php endif; ?>">价格<i></i></a>
            <a href="index.php?app=store&act=search&id=<?php echo $this->_var['store']['store_id']; ?>&keyword=<?php echo $this->_var['keyword']; ?>&cate_id=<?php echo $this->_var['cate_id']; ?>&order=views" class="white_btn <?php if ($this->_var['sort'] == '3'): ?>cur<?php endif; ?>">人气<i></i></a>
        </div>
  
    <div class="lists lists1">
    	<ul>
    	  <?php if ($this->_var['searched_goods']): ?>
    	     <?php $_from = $this->_var['searched_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'sgoods');if (count($_from)):
    foreach ($_from AS $this->_var['sgoods']):
?>
            <a href="<?php echo url('app=goods&id=' . $this->_var['sgoods']['goods_id']. '&Debug=Wap'); ?>" class="goods">
	            <li>
		            <div class="g_box">
			            <img src="<?php echo $this->_var['site_url']; ?>/<?php echo $this->_var['sgoods']['default_image']; ?>" />
				      
			            <span><?php echo price_format($this->_var['sgoods']['price']); ?></span><i><?php if ($this->_var['sgoods']['cost_price'] == '0'): ?><?php echo price_format($this->_var['sgoods']['price']); ?>   <?php else: ?><?php echo price_format($this->_var['sgoods']['cost_price']); ?><?php endif; ?></i>
			         </div>
			           <p><?php echo htmlspecialchars($this->_var['sgoods']['goods_name']); ?></p>
	            </li>
            </a>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          <?php else: ?>
           <div style="padding:50px 60px; text-align:center;background:#fff;margin:5px 5px 0;">很抱歉! 没有找到相关商品</div>
           <?php endif; ?>
        </ul>
    </div>
    
    
    <div class="page">
    	 <?php echo $this->fetch('page.bottom.html'); ?>
    </div>
       <?php echo $this->fetch('footer.html'); ?>
       </div>
</body>
</html>