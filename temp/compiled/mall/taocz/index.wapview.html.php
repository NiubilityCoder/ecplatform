<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo $this->_var['charset']; ?>" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<?php echo $this->_var['page_seo']; ?>
<script type="text/javascript" src="<?php echo $this->res_base . "/" . 'js/jquery-1.8.0.min.js'; ?>"></script>
</head>
<style>
.mask{background:url(<?php echo $this->res_base . "/" . 'images/bg.jpg'; ?>); height:100%; width:100%; position:fixed; top:0; left:0;z-index:999; overflow:scroll;}
.mask .phone{background:url(<?php echo $this->res_base . "/" . 'images/phone.png'; ?>) no-repeat; width:800px; height:746px; position:relative; margin:0 auto; z-index:1000;}
.mask .phone_right{background:url(<?php echo $this->res_base . "/" . 'images/phone.png'; ?>) no-repeat right; width:50px; height:746px; position:absolute; right:400px; top:0; z-index:2222;}
.mask .preview{position:absolute; left:45px; top:156px; z-index:1234; background:#fff;}
.mask .right{width:316px;  overflow:hidden; position:absolute; right:50px; top:180px;}
.mask .right h1{color: #F5F5F5; font-size: 26px;font-weight: normal; margin: 35px 0 25px;text-align: center;text-shadow: 0 1px 3px #111111;}
.mask .right p{color:#B4B7BC; text-align:center;text-shadow: 0 -1px 0 #111112; font-size:12px;}
.mask .r_top{background:url(<?php echo $this->res_base . "/" . 'images/r_top.png'; ?>) no-repeat; height:25px; display:block;}
.mask .r_center{background:url(<?php echo $this->res_base . "/" . 'images/r_center.png'; ?>) repeat-y;  display:block; text-align:left; color:#fff; text-shadow: 0 -1px 0 #111112;color: #B4B7BC; padding:0 20px; width:276px; font-size:14px;}
.mask .r_bottom{background:url(<?php echo $this->res_base . "/" . 'images/r_bottom.png'; ?>) no-repeat; height:25px; display:block;}
</style>
<body>

<div class="mask">
    <div class="phone">
    	<div class="phone_right"></div>
        <div class="close"></div>
        <iframe class="preview" src="<?php echo url('app=store&id=' . $this->_var['id']. '&Debug=Wap'); ?>" width="337" height="454" frameborder="0" scrolling="auto"></iframe>
		
        <div class="right">
        	<h1>微信商城多用户商城在线预览</h1>
            <span class="r_top"></span>
            <span class="r_center">为了能正常显示，请在高版本浏览器上查看。该页面只支持预览功能,不能进行操作。</span>
            <span class="r_bottom"></span>
            <p>&copy; 2001-2013 微信商城多用户商城微信版权所有</p>
        </div>
    </div>
</div>

</body>
</html>