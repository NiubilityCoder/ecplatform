<?php

class DefaultApp extends MallbaseApp
{
    function index()
    {
        $this->assign('index', 1); // 标识当前页面是首页，用于设置导航状态
        $this->assign('icp_number', Conf::get('icp_number'));

        $this->_config_seo(array(
            'title' => Lang::get('mall_index') . ' - ' . Conf::get('site_title'),
        ));
        $this->assign('page_description', Conf::get('site_description'));
        $this->assign('page_keywords', Conf::get('site_keywords'));
        $this->display('index.html');
    }
    function wapview()
    {
        /* 店铺预览 */
        $this->assign('id', intval($_GET['id']));
        $this->display('index.wapview.html');
    }
    
    function version(){
        echo 'ecmall_140525_687010903011654';
    }
}

?>