<div id="footer" class="w-full">
   <div class="foot-copyright">Copyright &copy; 2011-2014 <a href=""></a> 版权所有 <?php if ($this->_var['icp_number']): ?><?php echo $this->_var['icp_number']; ?><?php endif; ?> <?php echo $this->_var['statistics_code']; ?></div>
	<div class="foot-parter mb20">
		<a href="javascript:;"><img src="static/images/bt_logo_1.png" /></a>
		<a href="javascript:;"><img src="static/images/bt_logo_2.png" /></a>
		<a href="javascript:;"><img src="static/images/bt_logo_3.png" /></a>
	</div>
    <div class="QQbox" style="_top:300px;" id="divQQbox" >
	<div class="contentx">
        <div id="divOnline" style="display:none;">
            <div class="mainbox ob1 h_nav"><b></b><span>快速导航</span>
            	<ul>
                	<?php $_from = $this->_var['navs']['header']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'h_nav');$this->_foreach['h_nav'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['h_nav']['total'] > 0):
    foreach ($_from AS $this->_var['h_nav']):
        $this->_foreach['h_nav']['iteration']++;
?>
                	<li><a target="_blank" href="<?php echo $this->_var['h_nav']['link']; ?>" ><?php echo htmlspecialchars($this->_var['h_nav']['title']); ?></a></li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <!--<div class="mainbox ob2"><b></b><span>有奖反馈</span><div class="clr"></div></div>-->
            <div class="mainbox ob3"><a style="text-decoration:none;" href="http://wpa.qq.com/msgrd?v=3&uin=1366686219&site=qq&menu=yes" target="_blank"><b></b><span>在线客服</span><div class="clr"></div></a></div>
            <div class="mainbox ob4"><a style="text-decoration:none;" href="http://www.vchuang.cn" target="_blank"><b></b><span>关注微博</span><div class="clr"></div></a></div>
            <div class="mainbox ob5"><a style="float:left;text-decoration:none;" href="javascript:window.scroll(0,0);"><b></b><span>回到顶部</span><div class="clr"></div></a></div>
        </div>
        <div id="divMenu">
            <div class="eachx ob1"><span></span><div class="clr"></div></div>
            <div class="eachx ob2"><span></span><div class="clr"></div></div>
            <div class="eachx ob3"><span></span><div class="clr"></div></div>
            <div class="eachx ob4"><span></span><div class="clr"></div></div>
            <div class="eachx ob5"><span></span><div class="clr"></div></div>    
        </div>
    </div>
</div>
    
    
</div>
</body>
</html>