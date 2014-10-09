<?php

/* 微信公众平台 */

class WeixinApp extends MallbaseApp {

    var $ToUserName = '';
    var $FromUserName = '';
    var $my_wxconfig_mod;
    var $my_wxkeyword_mod;
    var $_store_id;

    function __construct() {
        $this->WeixinApp();
    }

    function WeixinApp() {
        parent::__construct();
        $this->my_wxkeyword_mod = & m('wxkeyword');
        $this->my_wxconfig_mod = & m('wxconfig');
    }

    function index() {
        $user_id = isset($_REQUEST['id']) ? intval($_REQUEST['id']) : 0;
        if (!$user_id) {
            exit;
        }

        $this->_store_id = $user_id;
        $wxconfig = $this->my_wxconfig_mod->get_info_user($user_id);
        //$model_setting = &af('settings');
        //$weixin_url = $model_setting->getOne('weixin_url');
        if (empty($wxconfig)) {
            exit;
        }
        $token = $wxconfig['token'];

        $signature = $_GET['signature'];
        $timestamp = $_GET['timestamp'];
        $nonce = $_GET['nonce'];
        $echostr = $_GET['echostr'];
        $arr = array($token, $timestamp, $nonce);
        //sort($arr);
		sort($arr, SORT_STRING);
        $result = sha1(join($arr));
        if ($result == $signature) {
            echo $echostr;
        }


        //接收微信公众账号接收到的信息
        $poststr = $GLOBALS["HTTP_RAW_POST_DATA"];
        $xmlObj = simplexml_load_string($poststr, 'SimpleXMLElement', LIBXML_NOCDATA);
        $this->ToUserName = $xmlObj->ToUserName;
        $this->FromUserName = $xmlObj->FromUserName;
        $CreateTime = $xmlObj->CreateTime;
        $MsgType = $xmlObj->MsgType;
        $MsgEvent = $xmlObj->Event;
        $EventKey = $xmlObj->EventKey;

        if ($MsgType == 'text') {
            $Content = $xmlObj->Content;
            
            
            //判断是否为系统默认的功能  
            if ($Content == '会员卡') {
                $store_id = $user_id;
                $membership_setting_mod = &m('membership_setting');
                $membership_setting = $membership_setting_mod->get($store_id);

                if (!empty($membership_setting)) {
                    $news[0]['title'] = $membership_setting['title'];
                    $news[0]['picurl'] = "http://" . $_SERVER['SERVER_NAME'] . '/' . $membership_setting['cover_image'];
                    $news[0]['url'] = SITE_URL . '/index.php?app=membership&id=' . $store_id;
                    echo $this->send_pic($this->ToUserName, $this->FromUserName, $news);
                    return;
                }
            }
            
            
            
            $weixin_info = $this->my_wxkeyword_mod->get_kword($Content, $user_id);
            if (!empty($weixin_info)) {
                if (is_array($weixin_info)) {
                    if (!empty($weixin_info['kecontent']) && $weixin_info['type'] == 1) {
                        echo $this->send($this->ToUserName, $this->FromUserName, $weixin_info['kecontent']);
                    } else {
                        $titles = unserialize($weixin_info['titles']);
                        $imageinfo = unserialize($weixin_info['imageinfo']);
                        $linkinfo = unserialize($weixin_info['linkinfo']);
                        $news = array();
                        for ($i = 0; $i < count($titles); $i++) {
                            $news[$i]['title'] = $titles[$i];
                            if (stristr($imageinfo[$i], $_SERVER['SERVER_NAME'])) {
                                $news[$i]['picurl'] = $imageinfo[$i];
                            } else {
                                $news[$i]['picurl'] = "http://" . $_SERVER['SERVER_NAME'] . '/' . $imageinfo[$i];
                            }
                            $news[$i]['url'] = $linkinfo[$i];
                        }

                        echo $this->send_pic($this->ToUserName, $this->FromUserName, $news);
                    }
                }
            } else {
                $id = $this->my_wxkeyword_mod->get_mess_id($user_id);
                $id = empty($id) ? 0 : $id;
                if ($id > 0) {
                    $wxmess = $this->my_wxkeyword_mod->get($id);
                    if (is_array($wxmess)) {
                        if (!empty($wxmess['kecontent']) && $wxmess['type'] == 1) {
                            echo $this->send($this->ToUserName, $this->FromUserName, $wxmess['kecontent']);
                        } else {
                            $titles = unserialize($wxmess['titles']);
                            $imageinfo = unserialize($wxmess['imageinfo']);
                            $linkinfo = unserialize($wxmess['linkinfo']);
                            $news = array();
                            for ($i = 0; $i < count($titles); $i++) {
                                $news[$i]['title'] = $titles[$i];
                                if (stristr($imageinfo[$i], $_SERVER['SERVER_NAME'])) {
                                    $news[$i]['picurl'] = $imageinfo[$i];
                                } else {
                                    $news[$i]['picurl'] = "http://" . $_SERVER['SERVER_NAME'] . '/' . $imageinfo[$i];
                                }
                                //$news[$i]['picurl'] =  str_replace('..',SITE_URL, $imageinfo[$i]);
                                $news[$i]['url'] = $linkinfo[$i];
                            }

                            echo $this->send_pic($this->ToUserName, $this->FromUserName, $news);
                        }
                    }//判断数组
                }//判断自动回复
            }//自动回复
        } else if ($MsgType == 'event') {
            if ($MsgEvent == 'subscribe') {
                $id = $this->my_wxkeyword_mod->get_follow_id($user_id);
                if ($id > 0) {
                    $wxfollow = $this->my_wxkeyword_mod->get($id);
                    if (is_array($wxfollow)) {
                        if ($wxfollow['type'] == 1) {
                            echo $this->send($this->ToUserName, $this->FromUserName, $wxfollow['kecontent']);
                        } else {

                            $titles = unserialize($wxfollow['titles']);
                            $imageinfo = unserialize($wxfollow['imageinfo']);
                            $linkinfo = unserialize($wxfollow['linkinfo']);
                            $news = array();
                            for ($i = 0; $i < count($titles); $i++) {
                                $news[$i]['title'] = $titles[$i];
                                if (stristr($imageinfo[$i], $_SERVER['SERVER_NAME'])) {
                                    $news[$i]['picurl'] = $imageinfo[$i];
                                } else {
                                    $news[$i]['picurl'] = "http://" . $_SERVER['SERVER_NAME'] . '/' . $imageinfo[$i];
                                }
                                $news[$i]['url'] = $linkinfo[$i];
                            }

                            echo $this->send_pic($this->ToUserName, $this->FromUserName, $news);
                        }
                    }//判断数组
                }//判断是否成在关注回复
            }//关注事件
            elseif ($MsgEvent == 'CLICK') {
                if ($EventKey != '') {
                    $this->my_wxmenu_mod = & m('wxmenu');
                    $custom_key = $this->my_wxmenu_mod->getOne("select weixin_keyword from {$this->my_wxmenu_mod->table} where weixin_key='" . $EventKey . "'");
                    $key_list = $this->my_wxkeyword_mod->get_kword($custom_key, $user_id);
                    if (is_array($key_list)) {
                        if ($key_list['type'] == 1) {//文本
                            echo $this->send($this->ToUserName, $this->FromUserName, $key_list['kecontent']);
                        } else { //图文
                            $titles = unserialize($key_list['titles']);
                            $imageinfo = unserialize($key_list['imageinfo']);
                            $linkinfo = unserialize($key_list['linkinfo']);
                            $news = array();
                            for ($i = 0; $i < count($titles); $i++) {
                                $news[$i]['title'] = $titles[$i];
                                if (stristr($imageinfo[$i], $_SERVER['SERVER_NAME'])) {
                                    $news[$i]['picurl'] = $imageinfo[$i];
                                } else {
                                    $news[$i]['picurl'] = "http://" . $_SERVER['SERVER_NAME'] . '/' . $imageinfo[$i];
                                }
                                $news[$i]['url'] = $linkinfo[$i];
                            }
                            echo $this->send_pic($this->ToUserName, $this->FromUserName, $news);
                        }
                    }
                }
            }
        }
    }

    /* 内部函数 */

    private function send($ToUserName, $FromUserName, $content) {
        $content = $this->wx_content($content);
        //global $ToUserName,$FromUserName;
        $str = "<xml>
				 <ToUserName><![CDATA[%s]]></ToUserName>
				 <FromUserName><![CDATA[%s]]></FromUserName>
				 <CreateTime>%s</CreateTime>
				 <MsgType><![CDATA[text]]></MsgType>
				 <Content><![CDATA[%s]]></Content>
				</xml>";
        return $resultstr = sprintf($str, $FromUserName, $ToUserName, time(), $content);
    }

    private function send_pic($ToUserName, $FromUserName, $arr) {
        //global $ToUserName,$FromUserName;
        $str = "<xml>
				 <ToUserName><![CDATA[" . $FromUserName . "]]></ToUserName>
				 <FromUserName><![CDATA[" . $ToUserName . "]]></FromUserName>
				 <CreateTime>" . time() . "</CreateTime>
				 <MsgType><![CDATA[news]]></MsgType>
				 <ArticleCount>" . count($arr) . "</ArticleCount>
				 <Articles>";
        foreach ($arr as $k => $v) {
            if ($k == 0) {
                $picurl = $v['picurl'];
            } else {
                $picurl = $v['picurl'];
            }
            $v['url'] = $this->wx_links($v['url']);
            $str .="
					 <item>
					 <Title><![CDATA[" . $v['title'] . "]]></Title> 
					 <Description><![CDATA[" . $v['description'] . "]]></Description>
					 <PicUrl><![CDATA[" . $picurl . "]]></PicUrl>
					 <Url><![CDATA[" . $v['url'] . "]]></Url>
					 </item>";
        }

        $str .= "</Articles></xml>";

        return $str;
    }
    
    
    
    
    /*
     * 链接处理  对用户新增的链接，加上  特定数值 用于自动登录  
     * 此处是处理 用户自动回复
     * user_openid    FromUserName
     * store_openid   ToUserName
     */
    private function wx_links($linkinfo) {//链接处理
        if (stristr($linkinfo, $_SERVER['SERVER_NAME'])) {
            if (stristr($linkinfo, "?")) {
                $links = $linkinfo . "&user_openid=" . $this->FromUserName . "&store_openid=" . $this->ToUserName."&wx_store_id=".$this->_store_id;
            } else {
                $links = $linkinfo . "?user_openid=" . $this->FromUserName . "&store_openid=" . $this->ToUserName."&wx_store_id=".$this->_store_id;
            }
        } else {
            $links = $linkinfo;
        }
        return $links;
    }
    
    private function wx_content($contentStr) {
        $str = $contentStr;
        $reg = '/\shref=[\'\"]([^\'"]*)[\'"]/i';
        preg_match_all($reg, $str, $out_ary); //正则：得到href的地址
        $src_ary = $out_ary[1];
        if (!empty($src_ary)) {//存在
            $comment = $src_ary[0];
            if (stristr($comment, $_SERVER['SERVER_NAME'])) {
                if (stristr($comment, "?")) {
                    $links = $comment . "&user_openid=" . $this->FromUserName . "&store_openid=" . $this->ToUserName."&wx_store_id=".$this->_store_id;
                    $contentStr = str_replace($comment, $links, $str);
                } else {
                    $links = $comment . "?user_openid=" . $this->FromUserName . "&store_openid=" . $this->ToUserName."&wx_store_id=".$this->_store_id;
                    $contentStr = str_replace($comment, $links, $str);
                }
            }
        }
        return $contentStr;
    }

    
    
    
    
    

}

?>