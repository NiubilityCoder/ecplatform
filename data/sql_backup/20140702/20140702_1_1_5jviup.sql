-- TOTAL : 1
-- ECMall 2.0 SQL Dump Program
-- Apache/2.2.3 (CentOS)
-- 
-- DATE : 2014-07-02 16:22:26
-- MYSQL SERVER VERSION : 5.0.95
-- PHP VERSION : 5.2.17
-- ECMall VERSION : 2.3.0
-- Vol : 1
DROP TABLE IF EXISTS ecm_acategory;
CREATE TABLE ecm_acategory (
  cate_id int(10) unsigned NOT NULL auto_increment,
  cate_name varchar(100) NOT NULL default '',
  parent_id int(10) unsigned NOT NULL default '0',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  `code` varchar(10) default NULL,
  PRIMARY KEY  (cate_id)
) TYPE=MyISAM;
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('1','商城帮助','0','0','help');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('2','商城公告','0','0','notice');
INSERT INTO ecm_acategory ( `cate_id`, `cate_name`, `parent_id`, `sort_order`, `code` ) VALUES  ('3','内置文章','0','0','system');
DROP TABLE IF EXISTS ecm_address;
CREATE TABLE ecm_address (
  addr_id int(10) unsigned NOT NULL auto_increment,
  user_id int(10) unsigned NOT NULL default '0',
  consignee varchar(60) NOT NULL default '',
  region_id int(10) unsigned default NULL,
  region_name varchar(255) default NULL,
  address varchar(255) default NULL,
  zipcode varchar(20) default NULL,
  phone_tel varchar(60) default NULL,
  phone_mob varchar(60) default NULL,
  PRIMARY KEY  (addr_id),
  KEY user_id (user_id)
) TYPE=MyISAM;
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('1','3','超级买家','1','中国','请如实填写收货人详细地址','','','8888888');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('2','5','陌','1','中国','6987','','1896666333','1896666333');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('3','6','我','1','中国','我','','13117982756','13117982756');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('4','10','许康','1','中国','南京黄家圩','','15651738771','');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('5','14','123','1','中国','123456','','123456','123456');
INSERT INTO ecm_address ( `addr_id`, `user_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob` ) VALUES  ('6','15','图','1','中国','拖拉机','','15825488','');
DROP TABLE IF EXISTS ecm_article;
CREATE TABLE ecm_article (
  article_id int(10) unsigned NOT NULL auto_increment,
  `code` varchar(20) NOT NULL default '',
  title varchar(100) NOT NULL default '',
  cate_id int(10) NOT NULL default '0',
  store_id int(10) unsigned NOT NULL default '0',
  link varchar(255) default NULL,
  content text,
  sort_order tinyint(3) unsigned NOT NULL default '255',
  if_show tinyint(3) unsigned NOT NULL default '1',
  add_time int(10) unsigned default NULL,
  PRIMARY KEY  (article_id),
  KEY `code` (`code`),
  KEY cate_id (cate_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('1','eula','用户服务协议','3','0','','<p>特别提醒用户认真阅读本《用户服务协议》(下称《协议》) 中各条款。除非您接受本《协议》条款，否则您无权使用本网站提供的相关服务。您的使用行为将视为对本《协议》的接受，并同意接受本《协议》各项条款的约束。 <br /> <br /> <strong>一、定义</strong><br /></p>\r\n<ol>\r\n<li>\"用户\"指符合本协议所规定的条件，同意遵守本网站各种规则、条款（包括但不限于本协议），并使用本网站的个人或机构。</li>\r\n<li>\"卖家\"是指在本网站上出售物品的用户。\"买家\"是指在本网站购买物品的用户。</li>\r\n<li>\"成交\"指买家根据卖家所刊登的交易要求，在特定时间内提出最优的交易条件，因而取得依其提出的条件购买该交易物品的权利。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>二、用户资格</strong><br /> <br /> 只有符合下列条件之一的人员或实体才能申请成为本网站用户，可以使用本网站的服务。</p>\r\n<ol>\r\n<li>年满十八岁，并具有民事权利能力和民事行为能力的自然人；</li>\r\n<li>未满十八岁，但监护人（包括但不仅限于父母）予以书面同意的自然人；</li>\r\n<li>根据中国法律或设立地法律、法规和/或规章成立并合法存在的公司、企事业单位、社团组织和其他组织。</li>\r\n</ol>\r\n<p><br /> 无民事行为能力人、限制民事行为能力人以及无经营或特定经营资格的组织不当注册为本网站用户或超过其民事权利或行为能力范围从事交易的，其与本网站之间的协议自始无效，本网站一经发现，有权立即注销该用户，并追究其使用本网站\"服务\"的一切法律责任。<br /> <br /> <strong>三.用户的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>用户有权根据本协议的规定及本网站发布的相关规则，利用本网站网上交易平台登录物品、发布交易信息、查询物品信息、购买物品、与其他用户订立物品买卖合同、在本网站社区发帖、参加本网站的有关活动及有权享受本网站提供的其他的有关资讯及信息服务。</li>\r\n<li>用户有权根据需要更改密码和交易密码。用户应对以该用户名进行的所有活动和事件负全部责任。</li>\r\n<li>用户有义务确保向本网站提供的任何资料、注册信息真实准确，包括但不限于真实姓名、身份证号、联系电话、地址、邮政编码等。保证本网站及其他用户可以通过上述联系方式与自己进行联系。同时，用户也有义务在相关资料实际变更时及时更新有关注册资料。</li>\r\n<li>用户不得以任何形式擅自转让或授权他人使用自己在本网站的用户帐号。</li>\r\n<li>用户有义务确保在本网站网上交易平台上登录物品、发布的交易信息真实、准确，无误导性。</li>\r\n<li>用户不得在本网站网上交易平台买卖国家禁止销售的或限制销售的物品、不得买卖侵犯他人知识产权或其他合法权益的物品，也不得买卖违背社会公共利益或公共道德的物品。</li>\r\n<li>用户不得在本网站发布各类违法或违规信息。包括但不限于物品信息、交易信息、社区帖子、物品留言，店铺留言，评价内容等。</li>\r\n<li>用户在本网站交易中应当遵守诚实信用原则，不得以干预或操纵物品价格等不正当竞争方式扰乱网上交易秩序，不得从事与网上交易无关的不当行为，不得在交易平台上发布任何违法信息。</li>\r\n<li>用户不应采取不正当手段（包括但不限于虚假交易、互换好评等方式）提高自身或他人信用度，或采用不正当手段恶意评价其他用户，降低其他用户信用度。</li>\r\n<li>用户承诺自己在使用本网站网上交易平台实施的所有行为遵守国家法律、法规和本网站的相关规定以及各种社会公共利益或公共道德。对于任何法律后果的发生，用户将以自己的名义独立承担所有相应的法律责任。</li>\r\n<li>用户在本网站网上交易过程中如与其他用户因交易产生纠纷，可以请求本网站从中予以协调。用户如发现其他用户有违法或违反本协议的行为，可以向本网站举报。如用户因网上交易与其他用户产生诉讼的，用户有权通过司法部门要求本网站提供相关资料。</li>\r\n<li>用户应自行承担因交易产生的相关费用，并依法纳税。</li>\r\n<li>未经本网站书面允许，用户不得将本网站资料以及在交易平台上所展示的任何信息以复制、修改、翻译等形式制作衍生作品、分发或公开展示。</li>\r\n<li>用户同意接收来自本网站的信息，包括但不限于活动信息、交易信息、促销信息等。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>四、 本网站的权利和义务</strong><br /></p>\r\n<ol>\r\n<li>本网站不是传统意义上的\"拍卖商\"，仅为用户提供一个信息交流、进行物品买卖的平台，充当买卖双方之间的交流媒介，而非买主或卖主的代理商、合伙  人、雇员或雇主等经营关系人。公布在本网站上的交易物品是用户自行上传进行交易的物品，并非本网站所有。对于用户刊登物品、提供的信息或参与竞标的过程，  本网站均不加以监视或控制，亦不介入物品的交易过程，包括运送、付款、退款、瑕疵担保及其它交易事项，且不承担因交易物品存在品质、权利上的瑕疵以及交易  方履行交易协议的能力而产生的任何责任，对于出现在拍卖上的物品品质、安全性或合法性，本网站均不予保证。</li>\r\n<li>本网站有义务在现有技术水平的基础上努力确保整个网上交易平台的正常运行，尽力避免服务中断或将中断时间限制在最短时间内，保证用户网上交易活动的顺利进行。</li>\r\n<li>本网站有义务对用户在注册使用本网站网上交易平台中所遇到的问题及反映的情况及时作出回复。 </li>\r\n<li>本网站有权对用户的注册资料进行查阅，对存在任何问题或怀疑的注册资料，本网站有权发出通知询问用户并要求用户做出解释、改正，或直接做出处罚、删除等处理。</li>\r\n<li>用  户因在本网站网上交易与其他用户产生纠纷的，用户通过司法部门或行政部门依照法定程序要求本网站提供相关资料，本网站将积极配合并提供有关资料；用户将纠  纷告知本网站，或本网站知悉纠纷情况的，经审核后，本网站有权通过电子邮件及电话联系向纠纷双方了解纠纷情况，并将所了解的情况通过电子邮件互相通知对  方。 </li>\r\n<li>因网上交易平台的特殊性，本网站没有义务对所有用户的注册资料、所有的交易行为以及与交易有关的其他事项进行事先审查，但如发生以下情形，本网站有权限制用户的活动、向用户核实有关资料、发出警告通知、暂时中止、无限期地中止及拒绝向该用户提供服务：         \r\n<ul>\r\n<li>用户违反本协议或因被提及而纳入本协议的文件；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据，而本网站无法联系到该用户核证或验证该用户向本网站提供的任何资料；</li>\r\n<li>存在用户或其他第三方通知本网站，认为某个用户或具体交易事项存在违法或不当行为，并提供相关证据。本网站以普通非专业交易者的知识水平标准对相关内容进行判别，可以明显认为这些内容或行为可能对本网站用户或本网站造成财务损失或法律责任。 </li>\r\n</ul>\r\n</li>\r\n<li>在反网络欺诈行动中，本着保护广大用户利益的原则，当用户举报自己交易可能存在欺诈而产生交易争议时，本网站有权通过表面判断暂时冻结相关用户账号，并有权核对当事人身份资料及要求提供交易相关证明材料。</li>\r\n<li>根据国家法律法规、本协议的内容和本网站所掌握的事实依据，可以认定用户存在违法或违反本协议行为以及在本网站交易平台上的其他不当行为，本网站有权在本网站交易平台及所在网站上以网络发布形式公布用户的违法行为，并有权随时作出删除相关信息，而无须征得用户的同意。</li>\r\n<li>本  网站有权在不通知用户的前提下删除或采取其他限制性措施处理下列信息：包括但不限于以规避费用为目的；以炒作信用为目的；存在欺诈等恶意或虚假内容；与网  上交易无关或不是以交易为目的；存在恶意竞价或其他试图扰乱正常交易秩序因素；该信息违反公共利益或可能严重损害本网站和其他用户合法利益的。</li>\r\n<li>用  户授予本网站独家的、全球通用的、永久的、免费的信息许可使用权利，本网站有权对该权利进行再授权，依此授权本网站有权(全部或部份地)  使用、复制、修订、改写、发布、翻译、分发、执行和展示用户公示于网站的各类信息或制作其派生作品，以现在已知或日后开发的任何形式、媒体或技术，将上述  信息纳入其他作品内。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>五、服务的中断和终止</strong><br /></p>\r\n<ol>\r\n<li>在  本网站未向用户收取相关服务费用的情况下，本网站可自行全权决定以任何理由  (包括但不限于本网站认为用户已违反本协议的字面意义和精神，或用户在超过180天内未登录本网站等)  终止对用户的服务，并不再保存用户在本网站的全部资料（包括但不限于用户信息、商品信息、交易信息等）。同时本网站可自行全权决定，在发出通知或不发出通  知的情况下，随时停止提供全部或部分服务。服务终止后，本网站没有义务为用户保留原用户资料或与之相关的任何信息，或转发任何未曾阅读或发送的信息给用户  或第三方。此外，本网站不就终止对用户的服务而对用户或任何第三方承担任何责任。 </li>\r\n<li>如用户向本网站提出注销本网站注册用户身份，需经本网站审核同意，由本网站注销该注册用户，用户即解除与本网站的协议关系，但本网站仍保留下列权利：         \r\n<ul>\r\n<li>用户注销后，本网站有权保留该用户的资料,包括但不限于以前的用户资料、店铺资料、商品资料和交易记录等。 </li>\r\n<li>用户注销后，如用户在注销前在本网站交易平台上存在违法行为或违反本协议的行为，本网站仍可行使本协议所规定的权利。 </li>\r\n</ul>\r\n</li>\r\n<li>如存在下列情况，本网站可以通过注销用户的方式终止服务：         \r\n<ul>\r\n<li>在用户违反本协议相关规定时，本网站有权终止向该用户提供服务。本网站将在中断服务时通知用户。但如该用户在被本网站终止提供服务后，再一次直接或间接或以他人名义注册为本网站用户的，本网站有权再次单方面终止为该用户提供服务；</li>\r\n<li>一旦本网站发现用户注册资料中主要内容是虚假的，本网站有权随时终止为该用户提供服务； </li>\r\n<li>本协议终止或更新时，用户未确认新的协议的。 </li>\r\n<li>其它本网站认为需终止服务的情况。 </li>\r\n</ul>\r\n</li>\r\n<li>因用户违反相关法律法规或者违反本协议规定等原因而致使本网站中断、终止对用户服务的，对于服务中断、终止之前用户交易行为依下列原则处理：         \r\n<ul>\r\n<li>本网站有权决定是否在中断、终止对用户服务前将用户被中断或终止服务的情况和原因通知用户交易关系方，包括但不限于对该交易有意向但尚未达成交易的用户,参与该交易竞价的用户，已达成交易要约用户。</li>\r\n<li>服务中断、终止之前，用户已经上传至本网站的物品尚未交易或交易尚未完成的，本网站有权在中断、终止服务的同时删除此项物品的相关信息。 </li>\r\n<li>服务中断、终止之前，用户已经就其他用户出售的具体物品作出要约，但交易尚未结束，本网站有权在中断或终止服务的同时删除该用户的相关要约和信息。</li>\r\n</ul>\r\n</li>\r\n<li>本网站若因用户的行为（包括但不限于刊登的商品、在本网站社区发帖等）侵害了第三方的权利或违反了相关规定，而受到第三方的追偿或受到主管机关的处分时，用户应赔偿本网站因此所产生的一切损失及费用。</li>\r\n<li>对违反相关法律法规或者违反本协议规定，且情节严重的用户，本网站有权终止该用户的其它服务。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>六、协议的修订</strong><br /> <br /> 本协议可由本网站随时修订，并将修订后的协议公告于本网站之上，修订后的条款内容自公告时起生效，并成为本协议的一部分。用户若在本协议修改之后，仍继续使用本网站，则视为用户接受和自愿遵守修订后的协议。本网站行使修改或中断服务时，不需对任何第三方负责。<br /> <br /> <strong>七、 本网站的责任范围 </strong><br /> <br /> 当用户接受该协议时，用户应明确了解并同意∶</p>\r\n<ol>\r\n<li>是否经由本网站下载或取得任何资料，由用户自行考虑、衡量并且自负风险，因下载任何资料而导致用户电脑系统的任何损坏或资料流失，用户应负完全责任。</li>\r\n<li>用户经由本网站取得的建议和资讯，无论其形式或表现，绝不构成本协议未明示规定的任何保证。</li>\r\n<li>基于以下原因而造成的利润、商誉、使用、资料损失或其它无形损失，本网站不承担任何直接、间接、附带、特别、衍生性或惩罚性赔偿（即使本网站已被告知前款赔偿的可能性）：         \r\n<ul>\r\n<li>本网站的使用或无法使用。</li>\r\n<li>经由或通过本网站购买或取得的任何物品，或接收之信息，或进行交易所随之产生的替代物品及服务的购买成本。</li>\r\n<li>用户的传输或资料遭到未获授权的存取或变更。</li>\r\n<li>本网站中任何第三方之声明或行为。</li>\r\n<li>本网站其它相关事宜。</li>\r\n</ul>\r\n</li>\r\n<li>本网站只是为用户提供一个交易的平台，对于用户所刊登的交易物品的合法性、真实性及其品质，以及用户履行交易的能力等，本网站一律不负任何担保责任。用户如果因使用本网站，或因购买刊登于本网站的任何物品，而受有损害时，本网站不负任何补偿或赔偿责任。</li>\r\n<li>本  网站提供与其它互联网上的网站或资源的链接，用户可能会因此连结至其它运营商经营的网站，但不表示本网站与这些运营商有任何关系。其它运营商经营的网站均  由各经营者自行负责，不属于本网站控制及负责范围之内。对于存在或来源于此类网站或资源的任何内容、广告、产品或其它资料，本网站亦不予保证或负责。因使  用或依赖任何此类网站或资源发布的或经由此类网站或资源获得的任何内容、物品或服务所产生的任何损害或损失，本网站不负任何直接或间接的责任。</li>\r\n</ol>\r\n<p><br /> <br /> <strong>八.、不可抗力</strong><br /> <br /> 因不可抗力或者其他意外事件，使得本协议的履行不可能、不必要或者无意义的，双方均不承担责任。本合同所称之不可抗力意指不能预见、不能避免并不能克服的  客观情况，包括但不限于战争、台风、水灾、火灾、雷击或地震、罢工、暴动、法定疾病、黑客攻击、网络病毒、电信部门技术管制、政府行为或任何其它自然或人  为造成的灾难等客观情况。<br /> <br /> <strong>九、争议解决方式</strong><br /></p>\r\n<ol>\r\n<li>本协议及其修订本的有效性、履行和与本协议及其修订本效力有关的所有事宜，将受中华人民共和国法律管辖，任何争议仅适用中华人民共和国法律。</li>\r\n<li>因  使用本网站服务所引起与本网站的任何争议，均应提交深圳仲裁委员会按照该会届时有效的仲裁规则进行仲裁。相关争议应单独仲裁，不得与任何其它方的争议在任  何仲裁中合并处理，该仲裁裁决是终局，对各方均有约束力。如果所涉及的争议不适于仲裁解决，用户同意一切争议由人民法院管辖。</li>\r\n</ol>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('2','cert_autonym','什么是实名认证','3','0','','<p><strong>什么是实名认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('3','cert_material','什么是实体店铺认证','3','0','','<p><strong>什么是实体店铺认证？</strong></p>\r\n<p>&ldquo;认证店铺&rdquo;服务是一项对店主身份真实性识别服务。店主可以通过站内PM、电话或管理员EMail的方式 联系并申请该项认证。经过管理员审核确认了店主的真实身份，就可以开通该项认证。</p>\r\n<p>通过该认证，可以说明店主身份的真实有效性，为买家在网络交易的过程中提供一定的信心和保证。</p>\r\n<p><strong>认证申请的方式：</strong></p>\r\n<p>Email：XXXX@XX.com</p>\r\n<p>管理员：XXXXXX</p>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('4','setup_store','开店协议','3','0','','<p>使用本公司服务所须遵守的条款和条件。<br /><br />1.用户资格<br />本公司的服务仅向适用法律下能够签订具有法律约束力的合同的个人提供并仅由其使用。在不限制前述规定的前提下，本公司的服务不向18周岁以下或被临时或无限期中止的用户提供。如您不合资格，请勿使用本公司的服务。此外，您的帐户（包括信用评价）和用户名不得向其他方转让或出售。另外，本公司保留根据其意愿中止或终止您的帐户的权利。<br /><br />2.您的资料（包括但不限于所添加的任何商品）不得：<br />*具有欺诈性、虚假、不准确或具误导性；<br />*侵犯任何第三方著作权、专利权、商标权、商业秘密或其他专有权利或发表权或隐私权；<br />*违反任何适用的法律或法规（包括但不限于有关出口管制、消费者保护、不正当竞争、刑法、反歧视或贸易惯例/公平贸易法律的法律或法规）；<br />*有侮辱或者诽谤他人，侵害他人合法权益的内容；<br />*有淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的内容；<br />*包含可能破坏、改变、删除、不利影响、秘密截取、未经授权而接触或征用任何系统、数据或个人资料的任何病毒、特洛依木马、蠕虫、定时炸弹、删除蝇、复活节彩蛋、间谍软件或其他电脑程序；<br /><br />3.违约<br />如发生以下情形，本公司可能限制您的活动、立即删除您的商品、向本公司社区发出有关您的行为的警告、发出警告通知、暂时中止、无限期地中止或终止您的用户资格及拒绝向您提供服务：<br />(a)您违反本协议或纳入本协议的文件；<br />(b)本公司无法核证或验证您向本公司提供的任何资料；<br />(c)本公司相信您的行为可能对您、本公司用户或本公司造成损失或法律责任。<br /><br />4.责任限制<br />本公司、本公司的关联公司和相关实体或本公司的供应商在任何情况下均不就因本公司的网站、本公司的服务或本协议而产生或与之有关的利润损失或任何特别、间接或后果性的损害（无论以何种方式产生，包括疏忽）承担任何责任。您同意您就您自身行为之合法性单独承担责任。您同意，本公司和本公司的所有关联公司和相关实体对本公司用户的行为的合法性及产生的任何结果不承担责任。<br /><br />5.无代理关系<br />用户和本公司是独立的合同方，本协议无意建立也没有创立任何代理、合伙、合营、雇员与雇主或特许经营关系。本公司也不对任何用户及其网上交易行为做出明示或默许的推荐、承诺或担保。<br /><br />6.一般规定<br />本协议在所有方面均受中华人民共和国法律管辖。本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，该规定可被删除而其余条款应予以执行。</p>','255','1','1240122848');
INSERT INTO ecm_article ( `article_id`, `code`, `title`, `cate_id`, `store_id`, `link`, `content`, `sort_order`, `if_show`, `add_time` ) VALUES  ('5','msn_privacy','MSN在线通隐私策略','3','0','','<p>Msn在线通隐私策略旨在说明您在本网站使用Msn在线通功能时我们如何保护您的Msn帐号信息。<br /> 我们认为隐私权非常重要。我们希望此隐私保护中心有助于您在本网站更好使用Msn在线通<br /> <strong>我们收集的信息</strong></p><blockquote>* 您在本网站激活Msn在线通时,程序将会记录您的Msn在线通帐号</blockquote><p><br /> <strong>您的选择</strong></p><blockquote>* 您可以在本网站随时注销您的Msn在线通帐号</blockquote><p><br /> <strong>其他隐私声明</strong></p><blockquote>* 如果我们需要改变本网站Msn在线通的隐私策略, 我们会把相关的改动在此页面发布.</blockquote>','255','1','1240122848');
DROP TABLE IF EXISTS ecm_attribute;
CREATE TABLE ecm_attribute (
  attr_id int(10) unsigned NOT NULL auto_increment,
  attr_name varchar(60) NOT NULL default '',
  input_mode varchar(10) NOT NULL default 'text',
  def_value varchar(255) default NULL,
  PRIMARY KEY  (attr_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_brand;
CREATE TABLE ecm_brand (
  brand_id int(10) unsigned NOT NULL auto_increment,
  brand_name varchar(100) NOT NULL default '',
  brand_logo varchar(255) default NULL,
  sort_order tinyint(3) unsigned NOT NULL default '255',
  recommended tinyint(3) unsigned NOT NULL default '0',
  store_id int(10) unsigned NOT NULL default '0',
  if_show tinyint(2) unsigned NOT NULL default '1',
  tag varchar(100) NOT NULL default '',
  PRIMARY KEY  (brand_id),
  KEY tag (tag)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_cart;
CREATE TABLE ecm_cart (
  rec_id int(10) unsigned NOT NULL auto_increment,
  user_id int(10) unsigned NOT NULL default '0',
  session_id varchar(32) NOT NULL default '',
  store_id int(10) unsigned NOT NULL default '0',
  goods_id int(10) unsigned NOT NULL default '0',
  goods_name varchar(255) NOT NULL default '',
  spec_id int(10) unsigned NOT NULL default '0',
  specification varchar(255) default NULL,
  price decimal(10,2) unsigned NOT NULL default '0.00',
  quantity int(10) unsigned NOT NULL default '1',
  goods_image varchar(255) default NULL,
  PRIMARY KEY  (rec_id),
  KEY session_id (session_id),
  KEY user_id (user_id)
) TYPE=MyISAM;
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('8','0','','2','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('20','0','ba4c3be9d6c40fb61a4cd70935af0768','2','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('16','9','bc4d872ca6fdd1ad3ff3c0520719578b','2','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('13','0','3037af8798137381cc0d60dc8a38d88d','2','99','测试商品','102','颜色:绿色 尺码:M','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('19','0','ba4c3be9d6c40fb61a4cd70935af0768','2','90','品诚尚品惠 Midea/美的 DE12G13 全不锈钢豆浆机多功能无网 3.4KG','90','','270.00','1','data/files/store_2/goods_60/small_201312262301006712.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('23','11','24423462f95e563f5f5ee514eec80594','2','90','品诚尚品惠 Midea/美的 DE12G13 全不锈钢豆浆机多功能无网 3.4KG','90','','270.00','1','data/files/store_2/goods_60/small_201312262301006712.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('22','12','','2','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('24','13','254fe5c1d7911054fb13b1f9061366fb','2','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('26','0','19c53cda912501b64a4d2d274b06334d','2','88','美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆','88','','249.00','1','data/files/store_2/goods_124/small_201312262258442397.jpg');
INSERT INTO ecm_cart ( `rec_id`, `user_id`, `session_id`, `store_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image` ) VALUES  ('28','16','fba06560a803aaf117126e38d3813acf','2','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg');
DROP TABLE IF EXISTS ecm_cate_pvs;
CREATE TABLE ecm_cate_pvs (
  cate_id int(11) NOT NULL,
  pvs text NOT NULL
) TYPE=MyISAM;
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('19','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('20','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
INSERT INTO ecm_cate_pvs ( `cate_id`, `pvs` ) VALUES  ('97','1:1;1:6;2:2;2:7;2:8;2:9;3:3;3:10;4:4;4:11;5:5;5:12;5:13;5:14');
DROP TABLE IF EXISTS ecm_category_goods;
CREATE TABLE ecm_category_goods (
  cate_id int(10) unsigned NOT NULL default '0',
  goods_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cate_id,goods_id),
  KEY goods_id (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','1');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','2');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','3');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','4');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','5');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','6');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','7');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','8');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','9');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','10');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','12');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','13');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','14');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('448','15');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','16');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','19');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','20');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','21');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','22');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','23');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','24');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('449','25');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','30');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','31');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','34');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','35');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','36');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('450','37');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','28');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','29');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','40');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','42');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','43');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','44');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','45');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','46');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','47');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','48');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('451','49');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','50');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','51');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','52');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','53');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','54');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','55');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','56');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','57');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('453','59');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','58');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','60');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','61');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','62');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','63');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','64');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','65');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','66');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','67');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','68');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('454','69');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','81');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','82');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','83');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','85');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','86');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','87');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','88');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','89');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','90');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('456','93');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','70');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','71');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','72');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','73');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','75');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','76');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','77');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('457','80');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','91');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','92');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','94');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','95');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','96');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','97');
INSERT INTO ecm_category_goods ( `cate_id`, `goods_id` ) VALUES  ('459','98');
DROP TABLE IF EXISTS ecm_category_store;
CREATE TABLE ecm_category_store (
  cate_id int(10) unsigned NOT NULL default '0',
  store_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (cate_id,store_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_collect;
CREATE TABLE ecm_collect (
  user_id int(10) unsigned NOT NULL default '0',
  `type` varchar(10) NOT NULL default 'goods',
  item_id int(10) unsigned NOT NULL default '0',
  keyword varchar(60) default NULL,
  add_time int(10) unsigned default NULL,
  PRIMARY KEY  (user_id,`type`,item_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_coupon;
CREATE TABLE ecm_coupon (
  coupon_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  coupon_name varchar(100) NOT NULL default '',
  coupon_value decimal(10,2) unsigned NOT NULL default '0.00',
  use_times int(10) unsigned NOT NULL default '0',
  start_time int(10) unsigned NOT NULL default '0',
  end_time int(10) unsigned NOT NULL default '0',
  min_amount decimal(10,2) unsigned NOT NULL default '0.00',
  if_issue tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (coupon_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_coupon_sn;
CREATE TABLE ecm_coupon_sn (
  coupon_sn varchar(20) NOT NULL,
  coupon_id int(10) unsigned NOT NULL default '0',
  remain_times int(10) NOT NULL default '-1',
  PRIMARY KEY  (coupon_sn),
  KEY coupon_id (coupon_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_friend;
CREATE TABLE ecm_friend (
  owner_id int(10) unsigned NOT NULL default '0',
  friend_id int(10) unsigned NOT NULL default '0',
  add_time varchar(10) NOT NULL default '',
  PRIMARY KEY  (owner_id,friend_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_function;
CREATE TABLE ecm_function (
  func_code varchar(20) NOT NULL default '',
  func_name varchar(60) NOT NULL default '',
  `privileges` varchar(255) NOT NULL default '',
  PRIMARY KEY  (func_code)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_gcategory;
CREATE TABLE ecm_gcategory (
  cate_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  cate_name varchar(100) NOT NULL default '',
  parent_id int(10) unsigned NOT NULL default '0',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  if_show tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (cate_id),
  KEY store_id (store_id,parent_id)
) TYPE=MyISAM;
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('1','0','网上菜场、果蔬生鲜','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('2','0','休闲食品、酒水饮料','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('3','0','进口食品、进口乳品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('4','0','粮油干货、厨房调料','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('5','0','美容化妆、个人护理','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('6','0','母婴用品、 玩具','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('7','0','厨房、清洁、卫浴用品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('8','0','家居生活、汽车用品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('9','0','大家电、生活电器','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('10','0','服饰箱包鞋靴、 运动','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('11','0','钟表、 礼品、 图书报刊','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('12','0','电脑办公、 手机数码','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('13','0','微店铺、乐生活','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('14','0','水果','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('15','0','蔬菜','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('16','0','肉类','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('17','0','面豆制品','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('18','0','南北干货','1','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('19','0','苹果','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('20','0','葡萄','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('21','0','红提','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('22','0','柚子','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('23','0','西瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('24','0','甜瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('25','0','芒果','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('26','0','橙梨','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('27','0','柠檬','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('28','0','桃子','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('29','0','石榴','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('30','0','蓝莓','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('31','0','木瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('32','0','哈密瓜','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('33','0','火龙果','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('34','0','车厘子','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('35','0','黑布林','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('36','0','猕猴桃','14','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('37','0','美食净菜','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('38','0','葱姜蒜','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('39','0','菌菇类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('40','0','有机类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('41','0','瓜果类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('42','0','叶菜','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('43','0','根类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('44','0','豆类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('45','0','茎类','15','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('46','0','牛肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('47','0','猪肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('48','0','鸡肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('49','0','鸭肉','16','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('50','0','生鲜豆品','17','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('51','0','熟食豆品','17','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('52','0','淀粉制品','17','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('53','0','香菇','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('54','0','枸杞','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('55','0','桂圆','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('56','0','莲子','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('57','0','木耳','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('58','0','银耳','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('59','0','黄花菜','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('60','0','百合干','18','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('61','0','休闲零食','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('62','0','饼干糕点','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('63','0','牛奶乳品','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('64','0','酒类商城','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('65','0','糖/巧克力','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('66','0','饮料饮品','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('67','0','冲调饮品','2','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('68','0','坚果','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('69','0','鱼干/海味即食','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('70','0','薯片','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('71','0','枣类','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('72','0','炒货','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('73','0','禽类','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('74','0','葡萄干','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('75','0','蜜饯','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('76','0','小食','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('77','0','肉干肉脯/豆干/熟食','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('78','0','新疆红枣','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('79','0','膨化','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('80','0','果冻/布丁','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('81','0','海苔','61','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('82','0','饼干','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('83','0','蛋糕','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('84','0','传统糕点','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('85','0','月饼','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('86','0','西式糕点','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('87','0','其它小点心','62','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('88','0','风味奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('89','0','纯牛奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('90','0','酸奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('91','0','儿童奶','63','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('92','0','啤酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('93','0','进口啤酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('94','0','进口葡萄酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('95','0','白酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('96','0','黄酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('97','0','葡萄酒/红酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('98','0','滋补酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('99','0','果酒','64','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('100','0','巧克力','65','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('101','0','糖果','65','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('102','0','口香糖','65','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('103','0','功能饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('104','0','碳酸饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('105','0','果汁/蔬菜汁','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('106','0','茶饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('107','0','水','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('108','0','果味饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('109','0','咖啡饮料','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('110','0','乳品','66','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('111','0','茶叶','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('112','0','咖啡','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('113','0','奶茶','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('114','0','奶粉','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('115','0','藕粉','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('116','0','冲饮麦片','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('117','0','芝麻糊','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('118','0','冲饮果汁','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('119','0','豆奶','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('120','0','姜汤','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('121','0','蜂蜜','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('122','0','咖啡伴侣','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('123','0','其它冲饮品','67','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('124','0','进口零食','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('125','0','饼干糕点','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('126','0','糖巧克力','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('127','0','牛奶乳品','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('128','0','水及饮料','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('129','0','进口冲饮','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('130','0','进口米面','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('131','0','果干坚果','3','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('132','0','进口膨化/薯片','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('133','0','进口海产品','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('134','0','进口果冻/布丁','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('135','0','进口话梅','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('136','0','进口肉制品','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('137','0','进口山楂类','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('138','0','进口凉果/蜜饯','124','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('139','0','进口饼干','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('140','0','进口曲奇','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('141','0','进口威化','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('142','0','进口糕点','125','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('143','0','进口糖果','126','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('144','0','进口巧克力','126','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('145','0','粮油米面','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('146','0','调味果酱','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('147','0','水果蔬菜生鲜','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('148','0','方便速食','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('149','0','冷冻食品','4','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('150','0','杂粮','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('151','0','国产大米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('152','0','面粉/食用粉','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('153','0','豆类','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('154','0','玉米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('155','0','黑米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('156','0','糯米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('157','0','糙米','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('158','0','食用油','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('159','0','粉丝','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('160','0','面条/挂面','145','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('161','0','面部护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('162','0','男士护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('163','0','魅力香氛','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('164','0','女性护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('165','0','成人用品','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('166','0','彩妆个护','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('167','0','口腔护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('168','0','洗发护发','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('169','0','身体护理','5','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('170','0','乳液','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('171','0','面霜','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('172','0','精华','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('173','0','防晒','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('174','0','眼膜','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('175','0','眼霜/眼部精华','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('176','0','唇部护理','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('177','0','面膜','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('178','0','护肤套装','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('179','0','卸妆','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('180','0','洁面','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('181','0','去角质','161','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('182','0','哺育用品','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('183','0','妈妈专区','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('184','0','奶粉','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('185','0','纸尿裤/湿巾','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('186','0','婴儿辅食','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('187','0','孕婴营养品','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('188','0','玩具','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('189','0','洗护用品','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('190','0','童车童床','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('191','0','服饰寝具','6','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('192','0','奶瓶','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('193','0','奶嘴','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('194','0','吸奶器','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('195','0','暖奶/消毒餐具','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('196','0','水具','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('197','0','牙胶/安抚辅助用品','182','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('198','0','家纺日用','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('199','0','居家日用','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('200','0','宠物用品','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('201','0','家具灯具','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('202','0','汽车用品','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('203','0','家装建材','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('204','0','园艺用品','8','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('205','0','床品件套','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('206','0','枕芯枕套','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('207','0','被子','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('208','0','床单被罩','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('209','0','毛毯/被','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('210','0','抱枕坐垫','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('211','0','蚊帐/凉席','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('212','0','毛巾家纺','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('213','0','床垫/床褥','198','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('214','0','大家电','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('215','0','厨房电器','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('216','0','生活电器','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('217','0','影音电器','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('218','0','个护健康','9','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('219','0','冰箱','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('220','0','空调','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('221','0','洗衣机','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('222','0','电视机','214','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('223','0','女装精品','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('224','0','男装精品','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('225','0','内衣服饰','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('226','0','户外鞋服','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('227','0','户外装备','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('228','0','体育娱乐','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('229','0','健身运动','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('230','0','饰品配件','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('231','0','童装','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('232','0','鞋子','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('233','0','箱包','10','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('234','0','皮草/皮衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('235','0','羽绒服','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('236','0','羊毛/羊绒','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('237','0','棉衣/棉服','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('238','0','呢大衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('239','0','连衣裙','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('240','0','T恤','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('241','0','衬衫','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('242','0','裤子','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('243','0','半身裙','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('244','0','马夹','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('245','0','蕾丝衫/雪纺衫','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('246','0','针织衫/毛衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('247','0','外套','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('248','0','西装','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('249','0','卫衣/绒衫','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('250','0','风衣','223','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('251','0','皮衣/皮草','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('252','0','羽绒服','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('253','0','棉衣','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('254','0','毛衫/羊绒','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('255','0','夹克','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('256','0','T恤','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('257','0','卫衣','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('258','0','衬衫','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('259','0','长裤','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('260','0','短裤/中裤','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('261','0','风衣','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('262','0','西服','224','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('263','0','图书','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('264','0','杂志','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('265','0','钟表','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('266','0','翡翠玉石','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('267','0','时尚饰品','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('268','0','保健滋补','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('269','0','特色礼品','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('270','0','珍珠/水晶','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('271','0','金/银/钻饰','11','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('272','0','金镶玉','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('273','0','和田玉','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('274','0','翡翠','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('275','0','彩色宝石','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('276','0','琥珀','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('277','0','其他玉石','266','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('278','0','手机通讯','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('279','0','手机配件','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('280','0','数码影音','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('281','0','数码配件','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('282','0','电脑配件','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('283','0','电脑整机','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('284','0','办公设备','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('285','0','学习用品','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('286','0','网络产品','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('287','0','办公用品','12','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('288','0','手机','278','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('289','0','对讲机','278','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('290','0','舌尖上的美食','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('291','0','我的个性我做主','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('292','0','今天我要嫁给你','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('293','0','小情调，乐生活','13','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('294','0','休闲零食','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('295','0','特产美食','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('296','0','其他','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('297','0','蛋糕','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('298','0','甜品小食','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('299','0','饮品','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('300','0','手工饼干','290','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('301','0','婚礼用品','292','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('302','0','首饰','292','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('303','0','化妆工具','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('304','0','特色服务','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('305','0','手工DIY','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('306','0','应季配饰','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('307','0','流行小饰品','291','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('308','0','鲜花绿植','293','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('309','0','特色服装','293','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('310','0','家居饰品','293','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('311','0','风味奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('312','0','纯牛奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('313','0','酸奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('314','0','儿童奶','127','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('315','0','进口果汁饮料','128','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('316','0','进口咖啡','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('317','0','进口茶叶','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('318','0','进口蜂蜜','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('319','0','进口奶茶/柚子茶','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('320','0','进口麦片','129','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('321','0','进口速食','130','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('322','0','进口调味品','130','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('323','0','进口油','130','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('324','0','进口果干','131','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('325','0','进口坚果','131','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('326','0','酱油','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('327','0','食糖','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('328','0','鸡精/味精','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('329','0','盐','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('330','0','醋制品','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('331','0','腌制酱菜','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('332','0','调味料','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('333','0','腐乳','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('334','0','调味酱','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('335','0','料酒','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('336','0','调味油','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('337','0','果酱','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('338','0','其它调味品','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('339','0','烘焙原料/辅料','146','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('340','0','香水','163','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('341','0','精油芳疗','163','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('342','0','香体走珠','163','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('343','0','避孕套','165','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('344','0','润滑剂','165','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('345','0','成人卫生垫','165','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('346','0','牙膏','167','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('347','0','牙刷','167','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('348','0','漱口水','167','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('349','0','洗浴用品','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('350','0','手足护理','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('351','0','身体乳','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('352','0','美体塑身','169','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('353','0','1段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('354','0','2段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('355','0','3段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('356','0','4段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('357','0','5段奶粉','184','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('358','0','米粉/米糊/汤粥','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('359','0','面食类','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('360','0','饼干/磨牙棒','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('361','0','肉松/鱼松','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('362','0','婴幼儿降火食品','186','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('363','0','宝宝护肤','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('364','0','护理用品','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('365','0','洗浴用品','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('366','0','清洁用品','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('367','0','礼盒套装','189','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('368','0','婴儿服','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('369','0','婴儿家纺','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('370','0','婴儿鞋袜','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('371','0','安全用品','191','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('372','0','床','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('373','0','沙发','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('374','0','柜类','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('375','0','架类','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('376','0','桌/椅/凳','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('377','0','灯具','201','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('378','0','鲜花','204','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('379','0','盆栽','204','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('380','0','园艺工具','204','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('381','0','音响/音箱','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('382','0','影碟机/DVD','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('383','0','耳机/耳麦','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('384','0','收音机','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('385','0','其它影音产品','217','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('386','0','靴子','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('387','0','单鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('388','0','休闲鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('389','0','凉鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('390','0','皮鞋','232','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('391','0','太阳眼镜','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('392','0','腰带/皮带','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('393','0','手套','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('394','0','围巾/围脖','230','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('395','0','网球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('396','0','足球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('397','0','排球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('398','0','乒乓球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('399','0','篮球','228','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('400','0','户外服装','226','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('401','0','户外鞋袜','226','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('402','0','户外配饰','226','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('403','0','时尚生活杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('404','0','娱乐休闲杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('405','0','教育科技杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('406','0','商业时政杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('407','0','文化艺术杂志','264','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('408','0','美食礼品','269','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('409','0','美酒礼品','269','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('410','0','茗茶礼品','269','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('411','0','摄像机','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('412','0','MP3/MP4/iPod','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('413','0','录音笔','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('414','0','耳机/耳麦','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('415','0','音箱','280','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('416','0','光驱/刻录/DVD','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('417','0','机箱','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('418','0','电脑包','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('419','0','散热器','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('420','0','笔记本电脑桌','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('421','0','内存','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('422','0','硬盘','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('423','0','主板','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('424','0','显卡','282','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('425','0','电话机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('426','0','传真机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('427','0','打印机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('428','0','一体机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('429','0','复合机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('430','0','碎纸机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('431','0','扫描仪','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('432','0','保险柜','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('433','0','投影机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('434','0','点钞机','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('435','0','墨盒','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('436','0','硒鼓/粉盒','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('437','0','墨粉/碳粉','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('438','0','色带/碳带','284','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('439','0','网络存储','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('440','0','网卡','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('441','0','路由器','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('442','0','交换机','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('443','0','其他','286','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('444','0','方便面','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('445','0','速食品','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('446','0','罐头','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('447','0','冷藏即食','148','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('448','2','果蔬','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('449','2','酒水','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('450','2','食品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('451','2','粮油干货','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('452','2','美容护肤','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('453','2','玩具用品','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('454','2','生活百货','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('455','2','家用汽车','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('456','2','电器','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('457','2','服装鞋','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('458','2','图书钟表','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('459','2','电脑手机','0','255','1');
INSERT INTO ecm_gcategory ( `cate_id`, `store_id`, `cate_name`, `parent_id`, `sort_order`, `if_show` ) VALUES  ('460','2','土特产','0','255','1');
DROP TABLE IF EXISTS ecm_goods;
CREATE TABLE ecm_goods (
  goods_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  `type` varchar(10) NOT NULL default 'material',
  goods_name varchar(255) NOT NULL default '',
  description text,
  cate_id int(10) unsigned NOT NULL default '0',
  cate_name varchar(255) NOT NULL default '',
  brand varchar(100) NOT NULL,
  spec_qty tinyint(4) unsigned NOT NULL default '0',
  spec_name_1 varchar(60) NOT NULL default '',
  spec_name_2 varchar(60) NOT NULL default '',
  if_show tinyint(3) unsigned NOT NULL default '1',
  closed tinyint(3) unsigned NOT NULL default '0',
  close_reason varchar(255) default NULL,
  add_time int(10) unsigned NOT NULL default '0',
  last_update int(10) unsigned NOT NULL default '0',
  default_spec int(11) unsigned NOT NULL default '0',
  default_image varchar(255) NOT NULL default '',
  recommended tinyint(4) unsigned NOT NULL default '0',
  cate_id_1 int(10) unsigned NOT NULL default '0',
  cate_id_2 int(10) unsigned NOT NULL default '0',
  cate_id_3 int(10) unsigned NOT NULL default '0',
  cate_id_4 int(10) unsigned NOT NULL default '0',
  price decimal(10,2) NOT NULL default '0.00',
  tags varchar(102) NOT NULL,
  PRIMARY KEY  (goods_id),
  KEY store_id (store_id),
  KEY cate_id (cate_id),
  KEY cate_id_1 (cate_id_1),
  KEY cate_id_2 (cate_id_2),
  KEY cate_id_3 (cate_id_3),
  KEY cate_id_4 (cate_id_4),
  KEY brand (brand(10)),
  KEY tags (tags)
) TYPE=MyISAM;
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('1','2','material','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033366','1388033366','1','data/files/store_2/goods_110/small_201312262048304586.jpg','1','1','14','19','0','8.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('2','2','material','袋装水果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033524','1388033524','2','data/files/store_2/goods_198/small_201312262049586818.jpg','1','1','14','19','0','100.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('3','2','material','海泉 野生苹果 新品上架 馈赠佳品 有糖心哦~','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033588','1388033588','3','data/files/store_2/goods_148/small_201312262052284448.jpg','1','1','14','19','0','68.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('4','2','material','杰记 新鲜脆甜 高山红苹果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033671','1388033671','4','data/files/store_2/goods_57/small_201312262054174988.jpg','1','1','14','19','0','69.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('5','2','material','杰记 新鲜脆甜 高山红苹果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033715','1388033715','5','data/files/store_2/goods_99/small_201312262054594117.jpg','1','1','14','19','0','10.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('6','2','material','杰记 进口 新鲜 新西兰 爵士 苹果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033757','1388033757','6','data/files/store_2/goods_136/small_201312262055366831.jpg','1','1','14','19','0','32.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('7','2','material','杰记 进口 新鲜 果大味甜 红蛇果','','19','网上菜场、果蔬生鲜	水果	苹果','','0','','','1','0',null,'1388033798','1388033798','7','data/files/store_2/goods_180/small_201312262056209107.jpg','1','1','14','19','0','65.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('8','2','material','杰记美国无籽黑提（清香蜜甜，爽脆无渣）','','20','网上菜场、果蔬生鲜	水果	葡萄','','0','','','1','0',null,'1388033867','1388033867','8','data/files/store_2/goods_63/small_201312262057435880.jpg','1','1','14','20','0','38.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('9','2','material','海泉 进口红提 新鲜配送','','21','网上菜场、果蔬生鲜	水果	红提','','0','','','1','0',null,'1388033923','1388033923','9','data/files/store_2/goods_120/small_201312262058402887.jpg','1','1','14','21','0','50.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('10','2','material','杰记 国产 新鲜 香甜 库尔勒香梨礼盒','','26','网上菜场、果蔬生鲜	水果	橙梨','','0','','','1','0',null,'1388034036','1388034036','10','data/files/store_2/goods_31/small_201312262100319871.jpg','1','1','14','26','0','108.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('11','2','material','海泉 贡梨','','26','网上菜场、果蔬生鲜	水果	橙梨','','0','','','1','0',null,'1388034078','1388034078','11','data/files/store_2/goods_75/small_201312262101158858.jpg','1','1','14','26','0','25.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('12','2','material','杰记 国产 红肉 新鲜 红心蜜柚','','22','网上菜场、果蔬生鲜	水果	柚子','','0','','','1','0',null,'1388034154','1388034154','12','data/files/store_2/goods_144/small_201312262102246687.jpg','1','1','14','22','0','28.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('13','2','material','海泉 进口车厘子 圣诞款','','34','网上菜场、果蔬生鲜	水果	车厘子','','0','','','1','0',null,'1388034228','1388034228','13','data/files/store_2/goods_2/small_201312262103227833.jpg','1','1','14','34','0','108.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('14','2','material','海泉 进口 红心火龙果 新鲜配送','','33','网上菜场、果蔬生鲜	水果	火龙果','','0','','','1','0',null,'1388034294','1388034294','14','data/files/store_2/goods_77/small_201312262104371080.jpg','1','1','14','33','0','21.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('15','2','material','海泉 进口柠檬 尤力克 新鲜配送','','27','网上菜场、果蔬生鲜	水果	柠檬','','0','','','1','0',null,'1388034356','1388034356','15','data/files/store_2/goods_153/small_201312262105539118.jpg','1','1','14','27','0','30.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('16','2','material','椰岛鹿龟酒二星礼盒（500ml*2）','','98','休闲食品、酒水饮料	酒类商城	滋补酒','','0','','','1','0',null,'1388034478','1388034478','16','data/files/store_2/goods_69/small_201312262107499378.jpg','1','2','64','98','0','92.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('17','2','material','椰岛鹿龟酒三星（露酒）礼盒2瓶装（500ml*2） 养生保健补酒','','98','休闲食品、酒水饮料	酒类商城	滋补酒','','0','','','1','0',null,'1388034535','1388034535','17','data/files/store_2/goods_129/small_201312262108507192.jpg','1','2','64','98','0','110.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('18','2','material','沙洲优黄花开富贵480ml/瓶','','96','休闲食品、酒水饮料	酒类商城	黄酒','','0','','','1','0',null,'1388034582','1388034582','18','data/files/store_2/goods_166/small_201312262109269656.jpg','1','2','64','96','0','32.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('19','2','material','50°红心如意郎酒500ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388034641','1388034641','19','data/files/store_2/goods_28/small_201312262110282113.jpg','1','2','64','97','0','52.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('20','2','material','口子窖白酒（五年）46度 400ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388034702','1388034702','20','data/files/store_2/goods_51/small_201312262110515808.jpg','1','2','64','97','0','95.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('21','2','material','【量贩购】张裕窖藏二年干红葡萄酒750ml×2瓶（每个ID限购5组）','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388034760','1388034760','21','data/files/store_2/goods_124/small_201312262112041198.jpg','1','2','64','97','0','72.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('22','2','material','华佗十全补酒700ml','','95','休闲食品、酒水饮料	酒类商城	白酒','','0','','','1','0',null,'1388034838','1388034838','22','data/files/store_2/goods_6/small_201312262113269791.jpg','1','2','64','95','0','36.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('23','2','material','双沟珍宝坊 君坊 41.8度 480ml+68度 20ml','','94','休闲食品、酒水饮料	酒类商城	进口葡萄酒','','0','','','1','0',null,'1388034891','1388034891','23','data/files/store_2/goods_71/small_201312262114315846.jpg','1','2','64','94','0','128.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('24','2','material','42°洋河大曲青瓷500ml','','99','休闲食品、酒水饮料	酒类商城	果酒','','0','','','1','0',null,'1388034944','1388034944','24','data/files/store_2/goods_141/small_201312262115417011.jpg','1','2','64','99','0','62.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('25','2','material','沙洲优黄(干黄) 480ml/瓶','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388035006','1388035006','25','data/files/store_2/goods_3/small_201312262116433996.jpg','1','2','64','97','0','350.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('26','2','material','乌毡帽十年陈 350ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388035091','1388035091','26','data/files/store_2/goods_86/small_201312262118061068.jpg','1','2','64','97','0','100.00',',330,');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('27','2','material','上海老酒六年陈500ml','','97','休闲食品、酒水饮料	酒类商城	葡萄酒/红酒','','0','','','1','0',null,'1388035163','1388035163','27','data/files/store_2/goods_160/small_201312262119204138.jpg','1','2','64','97','0','666.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('28','2','material','【量贩购】多力橄榄葵花油2.5L×2瓶 礼盒装 过节送礼更合适（每个I...','','158','粮油干货、厨房调料	粮油米面	食用油','','0','','','1','0',null,'1388036097','1388036097','28','data/files/store_2/goods_92/small_201312262134527551.jpg','1','4','145','158','0','108.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('29','2','material','银鹭好粥道 黑米杂粮八宝粥280g','','150','粮油干货、厨房调料	粮油米面	杂粮','','0','','','1','0',null,'1388036198','1388036198','29','data/files/store_2/goods_192/small_201312262136326387.jpg','1','4','145','150','0','3.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('30','2','material','纽天然三叶草蜂蜜250g（新西兰）','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036332','1388036332','30','data/files/store_2/goods_111/small_201312262138315559.jpg','1','3','124','132','0','59.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('31','2','material','台湾进口零食品 张君雅系列 拉面条饼和风鸡汁味 嘴馋了','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036394','1388036394','31','data/files/store_2/goods_189/small_201312262139497936.jpg','1','3','124','132','0','6.90','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('32','2','material','正宗99能量棒 台湾北田棒蛋黄夹心 180克 特价 嘴馋了','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036467','1388036467','32','data/files/store_2/goods_62/small_201312262141025440.jpg','1','3','124','132','0','10.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('33','2','material','印度尼西亚进口啪啪通虾片85克','','132','进口食品、进口乳品	进口零食	进口膨化/薯片','','0','','','1','0',null,'1388036528','1388036528','33','data/files/store_2/goods_125/small_201312262142056946.jpg','1','3','124','132','0','16.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('34','2','material','正品马来西亚 可康牌多口味果冻（含椰果）480g 嘴馋了','','134','进口食品、进口乳品	进口零食	进口果冻/布丁','','0','','','1','0',null,'1388036590','1388036590','34','data/files/store_2/goods_185/small_201312262143054186.jpg','1','3','124','134','0','12.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('35','2','material','可康果冻布丁 480g(80gX6杯) 邻客小食','','134','进口食品、进口乳品	进口零食	进口果冻/布丁','','0','','','1','0',null,'1388036650','1388036650','35','data/files/store_2/goods_42/small_201312262144021189.jpg','1','3','124','134','0','12.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('36','2','material','泰国进口天然零食品 特级泰国植生桂圆肉干 龙眼肉 果干蜜饯 140g...','','138','进口食品、进口乳品	进口零食	进口凉果/蜜饯','','0','','','1','0',null,'1388036717','1388036717','36','data/files/store_2/goods_113/small_201312262145134866.jpg','1','3','124','138','0','22.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('37','2','material','优之良品贵妃梅200克','','138','进口食品、进口乳品	进口零食	进口凉果/蜜饯','','0','','','1','0',null,'1388036809','1388036809','37','data/files/store_2/goods_7/small_201312262146474624.jpg','1','3','124','138','0','20.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('38','2','material','澳门香记特产 XO酱金钱猪肉脯/肉干 250g 特价 嘴馋了','','136','进口食品、进口乳品	进口零食	进口肉制品','','0','','','1','0',null,'1388036884','1388036884','38','data/files/store_2/goods_80/small_201312262148001815.jpg','1','3','124','136','0','21.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('39','2','material','韩国进口小零食 托马斯小火车鳕鱼肠400g','','136','进口食品、进口乳品	进口零食	进口肉制品','','0','','','1','0',null,'1388036943','1388036943','39','data/files/store_2/goods_139/small_201312262148598688.jpg','1','3','124','136','0','80.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('40','2','material','味好美脆皮香酥炸鸡配料45g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037104','1388037104','40','data/files/store_2/goods_95/small_201312262151359791.jpg','1','4','146','332','0','2.20','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('41','2','material','味好美鱼香肉丝调料35g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037142','1388037142','41','data/files/store_2/goods_130/small_201312262152104798.jpg','1','4','146','332','0','2.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('42','2','material','王守义十三香40g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037251','1388037251','42','data/files/store_2/goods_47/small_201312262154079508.jpg','1','4','146','332','0','2.30','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('43','2','material','味好美咖喱粉30g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037302','1388037302','43','data/files/store_2/goods_93/small_201312262154537504.jpg','1','4','146','332','0','7.30','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('44','2','material','川南火锅底料150g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037356','1388037356','44','data/files/store_2/goods_144/small_201312262155447040.jpg','1','4','146','332','0','4.10','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('45','2','material','郫县红油豆瓣 1.05kg','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037389','1388037389','45','data/files/store_2/goods_178/small_201312262156186146.jpg','1','4','146','332','0','14.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('46','2','material','川郫红油郫县豆瓣500g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037427','1388037427','46','data/files/store_2/goods_11/small_201312262156516537.jpg','1','4','146','332','0','5.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('47','2','material','川南干爹风味豆豉210g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037481','1388037481','47','data/files/store_2/goods_76/small_201312262157569987.jpg','1','4','146','332','0','5.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('48','2','material','川崎火锅调料海鲜100g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037529','1388037529','48','data/files/store_2/goods_111/small_201312262158319438.jpg','1','4','146','332','0','2.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('49','2','material','川崎火锅调料海麻辣100g','','332','粮油干货、厨房调料	调味果酱	调味料','','0','','','1','0',null,'1388037569','1388037569','49','data/files/store_2/goods_162/small_201312262159227323.jpg','1','4','146','332','0','2.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('50','2','material','新安怡 婴儿保湿润肤乳液200ML','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388037930','1388037930','50','data/files/store_2/goods_127/small_201312262205276887.jpg','1','6','189','364','0','74.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('51','2','material','飞利浦新安怡标准口径奶嘴','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388037976','1388037976','51','data/files/store_2/goods_173/small_201312262206139520.jpg','1','6','189','364','0','14.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('52','2','material','飞利浦新安怡幼儿食物储存盒','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038076','1388038076','52','data/files/store_2/goods_72/small_201312262207528762.jpg','1','6','189','364','0','144.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('53','2','material','Pigeon贝亲 婴儿沐浴露','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038125','1388038125','53','data/files/store_2/goods_102/small_201312262208227300.jpg','1','6','189','364','0','17.50','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('54','2','material','飞利浦新安怡微波炉蒸汽消毒锅套餐','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038164','1388038164','54','data/files/store_2/goods_135/small_201312262208557042.jpg','1','6','189','364','0','354.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('55','2','material','飞利浦新安怡4合1电子蒸汽消毒锅','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038205','1388038205','55','data/files/store_2/goods_176/small_201312262209361435.jpg','1','6','189','364','0','679.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('56','2','material','飞利浦新安怡手动吸乳器外出旅行组合套装','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038246','1388038246','56','data/files/store_2/goods_16/small_201312262210162177.jpg','1','6','189','364','0','606.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('57','2','material','飞利浦新安怡对装乳头矫正器','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038292','1388038292','57','data/files/store_2/goods_57/small_201312262210575290.jpg','1','6','189','364','0','374.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('58','2','material','飞利浦新安怡智能蒸汽消毒锅','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038343','1388038343','58','data/files/store_2/goods_106/small_201312262211467126.jpg','1','6','189','364','0','774.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('59','2','material','飞利浦新安怡标准口径奶嘴','','364','母婴用品、 玩具	洗护用品	护理用品','','0','','','1','0',null,'1388038380','1388038380','59','data/files/store_2/goods_152/small_201312262212327144.jpg','1','6','189','364','0','12.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('60','2','material','希乐上品真空保温泡茶杯 XS-400-3','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038694','1388038694','60','data/files/store_2/goods_90/small_201312262218109004.jpg','1','7','0','0','0','35.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('61','2','material','妙洁圆形耐热玻璃保鲜盒800ml MCOGBC80','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038738','1388038738','61','data/files/store_2/goods_114/small_201312262218342575.jpg','1','7','0','0','0','24.90','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('62','2','material','(原装进口)韩国爱敬aekyung全彩护色洗衣液1L','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038787','1388038787','62','data/files/store_2/goods_153/small_201312262219138421.jpg','1','7','0','0','0','46.60','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('63','2','material','品诚尚品惠 Supor/苏泊尔 T0908Q厨具套装典雅系列不锈钢锅铲汤勺...','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038827','1388038827','63','data/files/store_2/goods_6/small_201312262220067431.jpg','1','7','0','0','0','215.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('64','2','material','乐扣保鲜盒6件多规格套装微波炉烤箱耐热玻璃LLG224S902 44763当...','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038876','1388038876','64','data/files/store_2/goods_41/small_201312262220415407.jpg','1','7','0','0','0','202.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('65','2','material','妙洁手压旋拖1*4','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388038973','1388038973','65','data/files/store_2/goods_143/small_201312262222237668.jpg','1','7','0','0','0','158.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('66','2','material','2支装妙洁C型点断式垃圾袋(中)','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039008','1388039008','66','data/files/store_2/goods_186/small_201312262223061143.jpg','1','7','0','0','0','2.90','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('67','2','material','妙洁C型魔吸胶棉拖把','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039047','1388039047','67','data/files/store_2/goods_26/small_201312262223464846.jpg','1','7','0','0','0','23.80','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('68','2','material','汰渍全效炫白加衣领净精华洗衣粉560克','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039114','1388039114','68','data/files/store_2/goods_91/small_201312262224518849.jpg','1','7','0','0','0','5.10','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('69','2','material','【量贩购】奥妙 全自动含金纺馨香精华深层洁净洗衣液 3kg（怡神薰...','','7','厨房、清洁、卫浴用品','','0','','','1','0',null,'1388039145','1388039145','69','data/files/store_2/goods_131/small_201312262225311490.jpg','1','7','0','0','0','45.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('70','2','material','韩版夏季新款连衣裙 纯色露肩 雪纺假两件套 连衣短裙5776','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039629','1388039629','70','data/files/store_2/goods_195/small_201312262233156335.jpg','1','10','223','239','0','850.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('71','2','material','春装新款 韩版 气质修身 蕾丝拼接 圆领长袖 性感 连衣短裙L4666','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039672','1388039672','71','data/files/store_2/goods_44/small_201312262234045839.jpg','1','10','223','239','0','750.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('72','2','material','时尚休闲 气质雪纺条纹两件套 长袖不规则连衣裙7938','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039729','1388039729','72','data/files/store_2/goods_113/small_201312262235137180.jpg','1','10','223','239','0','690.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('73','2','material','新品女装 荷叶边外衫 碎花裙 裙子夏季两件套 麻棉长袖连衣裙F512...','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039774','1388039774','73','data/files/store_2/goods_142/small_201312262235429182.jpg','1','10','223','239','0','850.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('74','2','material','皇后大街2013春装新款圆领收腰中袖蕾丝连衣裙修身显瘦打底裙L234...','','239','服饰箱包鞋靴、 运动	女装精品	连衣裙','','0','','','1','0',null,'1388039823','1388039823','74','data/files/store_2/goods_189/small_201312262236298305.jpg','1','10','223','239','0','2090.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('75','2','material','棉先生原创 2012新品 韩版黑色西服两粒扣休闲小西装外套 S5455','','262','服饰箱包鞋靴、 运动	男装精品	西服','','0','','','1','0',null,'1388039883','1388039883','75','data/files/store_2/goods_38/small_201312262237189780.jpg','1','10','224','262','0','173.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('76','2','material','Miiow猫人 2013新款夏季女士性感豹纹印花舒适中腰提臀三角裤1397...','','249','服饰箱包鞋靴、 运动	女装精品	卫衣/绒衫','','0','','','1','0',null,'1388039951','1388039951','76','data/files/store_2/goods_98/small_201312262238182827.jpg','1','10','223','249','0','390.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('77','2','material','韩国品牌 SATSUN 专柜正品 超弹修身小腿裤 明线装饰 特价促销','','245','服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫','','0','','','1','0',null,'1388040028','1388040028','77','data/files/store_2/goods_179/small_201312262239393163.jpg','1','10','223','245','0','169.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('78','2','material','（冰爽特价）韩国品牌 SATSUN 专柜正品 拉链装饰牛仔短裤','','245','服饰箱包鞋靴、 运动	女装精品	蕾丝衫/雪纺衫','','0','','','1','0',null,'1388040081','1388040081','78','data/files/store_2/goods_54/small_201312262240547284.jpg','1','10','223','245','0','129.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('79','2','material','全棉弹力抓绒小腿裤 保暖舒适 雪花修身小腿裤 春...','','235','服饰箱包鞋靴、 运动	女装精品	羽绒服','','0','','','1','0',null,'1388040133','1388040133','79','data/files/store_2/goods_97/small_201312262241379970.jpg','1','10','223','235','0','69.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('80','2','material','【量贩购】顶瓜瓜专柜 顶呱呱男女保暖内衣 加厚加绒套装DNBMD-T2...','','236','服饰箱包鞋靴、 运动	女装精品	羊毛/羊绒','','0','','','1','0',null,'1388040198','1388040198','80','data/files/store_2/goods_156/small_201312262242365477.jpg','1','10','223','236','0','89.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('81','2','material','艾美特PTC陶瓷暖风机HP2028UR 取暖器 电暖器 遥控加湿','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040743','1388040743','81','data/files/store_2/goods_111/small_201312262251512164.jpg','1','9','216','0','0','699.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('82','2','material','飞利浦 充电剃须刀HQ6076 弹出式修发器刀头水洗','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040835','1388040835','82','data/files/store_2/goods_9/small_201312262253293800.jpg','1','9','216','0','0','499.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('83','2','material','Joyoung/九阳 JYC-21GS08 电磁炉 健康双环火 触摸 节能 正品特价...','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040935','1388040935','83','data/files/store_2/goods_80/small_201312262254404774.jpg','1','9','216','0','0','269.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('84','2','material','Joyoung/九阳JYK-17F05A特价不锈钢多功能电热开水煲壶联保正品 ...','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388040980','1388040980','84','data/files/store_2/goods_155/small_201312262255558436.jpg','1','9','216','0','0','170.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('85','2','material','先锋 电暖气CY11BB-11 DS1102 油汀11片 赠晾衣架加湿盒','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041028','1388041028','85','data/files/store_2/goods_6/small_201312262256466045.jpg','1','9','216','0','0','399.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('86','2','material','Joyoung/九阳 C21-SC007 九阳电磁炉 超薄 二级能效 整板触摸屏','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041065','1388041065','86','data/files/store_2/goods_49/small_201312262257294186.jpg','1','9','216','0','0','259.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('87','2','material','道尔顿PF前置折叠棉滤芯','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041106','1388041106','87','data/files/store_2/goods_86/small_201312262258066317.jpg','1','9','216','0','0','88.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('88','2','material','美妙足浴盆MM-13H全盖泡脚加热足浴器足浴盆泡脚盆','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041146','1388041146','88','data/files/store_2/goods_124/small_201312262258442397.jpg','1','9','216','0','0','249.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('89','2','material','美妙足浴盆MM-12E/02E足浴器按摩正品 洗脚盆加热泡脚盆','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041200','1388041200','89','data/files/store_2/goods_180/small_201312262259401924.jpg','1','9','216','0','0','239.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('90','2','material','品诚尚品惠 Midea/美的 DE12G13 全不锈钢豆浆机多功能无网 3.4KG','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041280','1388041280','90','data/files/store_2/goods_60/small_201312262301006712.jpg','1','9','216','0','0','270.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('91','2','material','HTC T528t 双卡双待双通TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041380','1388041380','91','data/files/store_2/goods_155/small_201312262302356953.jpg','1','9','216','0','0','1298.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('92','2','material','中兴（ZTE）U960s3 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041427','1388041427','92','data/files/store_2/goods_3/small_201312262303231812.jpg','1','9','216','0','0','495.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('93','2','material','三星(samsung)s5698 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041471','1388041471','93','data/files/store_2/goods_48/small_201312262304085587.jpg','1','9','216','0','0','199.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('94','2','material','华为（Huawei）T8951（G510）3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041510','1388041510','94','data/files/store_2/goods_93/small_201312262304537590.jpg','1','9','216','0','0','599.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('95','2','material','HTC 8S（A620t）3G手机TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041548','1388041548','95','data/files/store_2/goods_134/small_201312262305341913.jpg','1','9','216','0','0','688.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('96','2','material','诺基亚（NOKIA） Lumia 720T 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041597','1388041597','96','data/files/store_2/goods_170/small_201312262306104597.jpg','1','9','216','0','0','1749.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('97','2','material','三星（SAMSUNG）I8558 3G手机 TD-SCDMA/GSM 双卡双待','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041645','1388041645','97','data/files/store_2/goods_27/small_201312262307078496.jpg','1','9','216','0','0','1549.00','');
INSERT INTO ecm_goods ( `goods_id`, `store_id`, `type`, `goods_name`, `description`, `cate_id`, `cate_name`, `brand`, `spec_qty`, `spec_name_1`, `spec_name_2`, `if_show`, `closed`, `close_reason`, `add_time`, `last_update`, `default_spec`, `default_image`, `recommended`, `cate_id_1`, `cate_id_2`, `cate_id_3`, `cate_id_4`, `price`, `tags` ) VALUES  ('98','2','material','酷派(Coolpad)8730 3G手机 TD-SCDMA/GSM','','216','大家电、生活电器	生活电器','','0','','','1','0',null,'1388041757','1388041757','98','data/files/store_2/goods_107/small_201312262308271759.jpg','1','9','216','0','0','1588.00','');
DROP TABLE IF EXISTS ecm_goods_attr;
CREATE TABLE ecm_goods_attr (
  gattr_id int(10) unsigned NOT NULL auto_increment,
  goods_id int(10) unsigned NOT NULL default '0',
  attr_name varchar(60) NOT NULL default '',
  attr_value varchar(255) NOT NULL default '',
  attr_id int(10) unsigned default NULL,
  sort_order tinyint(3) unsigned default NULL,
  PRIMARY KEY  (gattr_id),
  KEY goods_id (goods_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_goods_image;
CREATE TABLE ecm_goods_image (
  image_id int(10) unsigned NOT NULL auto_increment,
  goods_id int(10) unsigned NOT NULL default '0',
  image_url varchar(255) NOT NULL default '',
  thumbnail varchar(255) NOT NULL default '',
  sort_order tinyint(4) unsigned NOT NULL default '0',
  file_id int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (image_id),
  KEY goods_id (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('1','1','data/files/store_2/goods_110/201312262048304586.jpg','data/files/store_2/goods_110/small_201312262048304586.jpg','1','1');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('2','2','data/files/store_2/goods_198/201312262049586818.jpg','data/files/store_2/goods_198/small_201312262049586818.jpg','1','2');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('3','3','data/files/store_2/goods_148/201312262052284448.jpg','data/files/store_2/goods_148/small_201312262052284448.jpg','1','3');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('4','4','data/files/store_2/goods_57/201312262054174988.jpg','data/files/store_2/goods_57/small_201312262054174988.jpg','1','4');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('5','5','data/files/store_2/goods_99/201312262054594117.jpg','data/files/store_2/goods_99/small_201312262054594117.jpg','1','5');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('6','6','data/files/store_2/goods_136/201312262055366831.jpg','data/files/store_2/goods_136/small_201312262055366831.jpg','1','6');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('7','7','data/files/store_2/goods_180/201312262056209107.jpg','data/files/store_2/goods_180/small_201312262056209107.jpg','1','7');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('8','8','data/files/store_2/goods_63/201312262057435880.jpg','data/files/store_2/goods_63/small_201312262057435880.jpg','1','8');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('9','9','data/files/store_2/goods_120/201312262058402887.jpg','data/files/store_2/goods_120/small_201312262058402887.jpg','1','9');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('10','10','data/files/store_2/goods_31/201312262100319871.jpg','data/files/store_2/goods_31/small_201312262100319871.jpg','1','10');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('11','11','data/files/store_2/goods_75/201312262101158858.jpg','data/files/store_2/goods_75/small_201312262101158858.jpg','1','11');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('12','12','data/files/store_2/goods_144/201312262102246687.jpg','data/files/store_2/goods_144/small_201312262102246687.jpg','1','12');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('13','13','data/files/store_2/goods_2/201312262103227833.jpg','data/files/store_2/goods_2/small_201312262103227833.jpg','1','13');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('14','14','data/files/store_2/goods_77/201312262104371080.jpg','data/files/store_2/goods_77/small_201312262104371080.jpg','1','14');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('15','15','data/files/store_2/goods_153/201312262105539118.jpg','data/files/store_2/goods_153/small_201312262105539118.jpg','1','15');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('16','16','data/files/store_2/goods_69/201312262107499378.jpg','data/files/store_2/goods_69/small_201312262107499378.jpg','1','16');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('17','17','data/files/store_2/goods_129/201312262108507192.jpg','data/files/store_2/goods_129/small_201312262108507192.jpg','1','17');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('18','17','data/files/store_2/goods_130/201312262108508363.jpg','data/files/store_2/goods_130/small_201312262108508363.jpg','255','18');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('19','18','data/files/store_2/goods_166/201312262109269656.jpg','data/files/store_2/goods_166/small_201312262109269656.jpg','1','19');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('20','19','data/files/store_2/goods_28/201312262110282113.jpg','data/files/store_2/goods_28/small_201312262110282113.jpg','1','20');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('21','20','data/files/store_2/goods_51/201312262110515808.jpg','data/files/store_2/goods_51/small_201312262110515808.jpg','1','21');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('22','21','data/files/store_2/goods_124/201312262112041198.jpg','data/files/store_2/goods_124/small_201312262112041198.jpg','1','22');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('23','22','data/files/store_2/goods_6/201312262113269791.jpg','data/files/store_2/goods_6/small_201312262113269791.jpg','1','23');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('24','23','data/files/store_2/goods_71/201312262114315846.jpg','data/files/store_2/goods_71/small_201312262114315846.jpg','1','24');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('25','24','data/files/store_2/goods_141/201312262115417011.jpg','data/files/store_2/goods_141/small_201312262115417011.jpg','1','25');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('26','25','data/files/store_2/goods_3/201312262116433996.jpg','data/files/store_2/goods_3/small_201312262116433996.jpg','1','26');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('27','26','data/files/store_2/goods_86/201312262118061068.jpg','data/files/store_2/goods_86/small_201312262118061068.jpg','1','27');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('28','27','data/files/store_2/goods_160/201312262119204138.jpg','data/files/store_2/goods_160/small_201312262119204138.jpg','1','28');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('29','28','data/files/store_2/goods_92/201312262134527551.jpg','data/files/store_2/goods_92/small_201312262134527551.jpg','1','29');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('30','29','data/files/store_2/goods_192/201312262136326387.jpg','data/files/store_2/goods_192/small_201312262136326387.jpg','1','30');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('31','30','data/files/store_2/goods_111/201312262138315559.jpg','data/files/store_2/goods_111/small_201312262138315559.jpg','1','31');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('32','31','data/files/store_2/goods_189/201312262139497936.jpg','data/files/store_2/goods_189/small_201312262139497936.jpg','1','32');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('33','32','data/files/store_2/goods_62/201312262141025440.jpg','data/files/store_2/goods_62/small_201312262141025440.jpg','1','33');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('34','33','data/files/store_2/goods_125/201312262142056946.jpg','data/files/store_2/goods_125/small_201312262142056946.jpg','1','34');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('35','34','data/files/store_2/goods_185/201312262143054186.jpg','data/files/store_2/goods_185/small_201312262143054186.jpg','1','35');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('36','35','data/files/store_2/goods_42/201312262144021189.jpg','data/files/store_2/goods_42/small_201312262144021189.jpg','1','36');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('37','36','data/files/store_2/goods_113/201312262145134866.jpg','data/files/store_2/goods_113/small_201312262145134866.jpg','1','37');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('38','37','data/files/store_2/goods_7/201312262146474624.jpg','data/files/store_2/goods_7/small_201312262146474624.jpg','1','38');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('39','38','data/files/store_2/goods_80/201312262148001815.jpg','data/files/store_2/goods_80/small_201312262148001815.jpg','1','39');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('40','39','data/files/store_2/goods_139/201312262148598688.jpg','data/files/store_2/goods_139/small_201312262148598688.jpg','1','40');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('41','40','data/files/store_2/goods_95/201312262151359791.jpg','data/files/store_2/goods_95/small_201312262151359791.jpg','1','41');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('42','41','data/files/store_2/goods_130/201312262152104798.jpg','data/files/store_2/goods_130/small_201312262152104798.jpg','1','42');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('43','42','data/files/store_2/goods_47/201312262154079508.jpg','data/files/store_2/goods_47/small_201312262154079508.jpg','1','43');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('44','43','data/files/store_2/goods_93/201312262154537504.jpg','data/files/store_2/goods_93/small_201312262154537504.jpg','1','44');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('45','44','data/files/store_2/goods_144/201312262155447040.jpg','data/files/store_2/goods_144/small_201312262155447040.jpg','1','45');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('46','45','data/files/store_2/goods_178/201312262156186146.jpg','data/files/store_2/goods_178/small_201312262156186146.jpg','1','46');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('47','46','data/files/store_2/goods_11/201312262156516537.jpg','data/files/store_2/goods_11/small_201312262156516537.jpg','1','47');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('48','47','data/files/store_2/goods_76/201312262157569987.jpg','data/files/store_2/goods_76/small_201312262157569987.jpg','1','48');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('49','48','data/files/store_2/goods_111/201312262158319438.jpg','data/files/store_2/goods_111/small_201312262158319438.jpg','1','49');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('50','49','data/files/store_2/goods_162/201312262159227323.jpg','data/files/store_2/goods_162/small_201312262159227323.jpg','1','50');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('51','50','data/files/store_2/goods_127/201312262205276887.jpg','data/files/store_2/goods_127/small_201312262205276887.jpg','1','51');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('52','51','data/files/store_2/goods_173/201312262206139520.jpg','data/files/store_2/goods_173/small_201312262206139520.jpg','1','52');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('53','52','data/files/store_2/goods_72/201312262207528762.jpg','data/files/store_2/goods_72/small_201312262207528762.jpg','1','53');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('54','53','data/files/store_2/goods_102/201312262208227300.jpg','data/files/store_2/goods_102/small_201312262208227300.jpg','1','54');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('55','54','data/files/store_2/goods_135/201312262208557042.jpg','data/files/store_2/goods_135/small_201312262208557042.jpg','1','55');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('56','55','data/files/store_2/goods_176/201312262209361435.jpg','data/files/store_2/goods_176/small_201312262209361435.jpg','1','56');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('57','56','data/files/store_2/goods_16/201312262210162177.jpg','data/files/store_2/goods_16/small_201312262210162177.jpg','1','57');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('58','57','data/files/store_2/goods_57/201312262210575290.jpg','data/files/store_2/goods_57/small_201312262210575290.jpg','1','58');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('59','58','data/files/store_2/goods_106/201312262211467126.jpg','data/files/store_2/goods_106/small_201312262211467126.jpg','1','59');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('60','59','data/files/store_2/goods_152/201312262212327144.jpg','data/files/store_2/goods_152/small_201312262212327144.jpg','1','60');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('61','60','data/files/store_2/goods_90/201312262218109004.jpg','data/files/store_2/goods_90/small_201312262218109004.jpg','1','61');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('62','61','data/files/store_2/goods_114/201312262218342575.jpg','data/files/store_2/goods_114/small_201312262218342575.jpg','1','62');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('63','62','data/files/store_2/goods_153/201312262219138421.jpg','data/files/store_2/goods_153/small_201312262219138421.jpg','1','63');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('64','63','data/files/store_2/goods_6/201312262220067431.jpg','data/files/store_2/goods_6/small_201312262220067431.jpg','1','64');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('65','64','data/files/store_2/goods_41/201312262220415407.jpg','data/files/store_2/goods_41/small_201312262220415407.jpg','1','65');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('66','65','data/files/store_2/goods_143/201312262222237668.jpg','data/files/store_2/goods_143/small_201312262222237668.jpg','1','66');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('67','66','data/files/store_2/goods_186/201312262223061143.jpg','data/files/store_2/goods_186/small_201312262223061143.jpg','1','67');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('68','67','data/files/store_2/goods_26/201312262223464846.jpg','data/files/store_2/goods_26/small_201312262223464846.jpg','1','68');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('70','68','data/files/store_2/goods_91/201312262224518849.jpg','data/files/store_2/goods_91/small_201312262224518849.jpg','1','70');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('71','69','data/files/store_2/goods_131/201312262225311490.jpg','data/files/store_2/goods_131/small_201312262225311490.jpg','1','71');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('72','70','data/files/store_2/goods_195/201312262233156335.jpg','data/files/store_2/goods_195/small_201312262233156335.jpg','1','72');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('73','71','data/files/store_2/goods_44/201312262234045839.jpg','data/files/store_2/goods_44/small_201312262234045839.jpg','1','73');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('74','72','data/files/store_2/goods_113/201312262235137180.jpg','data/files/store_2/goods_113/small_201312262235137180.jpg','1','74');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('75','73','data/files/store_2/goods_142/201312262235429182.jpg','data/files/store_2/goods_142/small_201312262235429182.jpg','1','75');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('76','74','data/files/store_2/goods_189/201312262236298305.jpg','data/files/store_2/goods_189/small_201312262236298305.jpg','1','76');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('77','75','data/files/store_2/goods_38/201312262237189780.jpg','data/files/store_2/goods_38/small_201312262237189780.jpg','1','77');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('78','76','data/files/store_2/goods_98/201312262238182827.jpg','data/files/store_2/goods_98/small_201312262238182827.jpg','1','78');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('79','77','data/files/store_2/goods_179/201312262239393163.jpg','data/files/store_2/goods_179/small_201312262239393163.jpg','1','79');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('80','78','data/files/store_2/goods_54/201312262240547284.jpg','data/files/store_2/goods_54/small_201312262240547284.jpg','1','80');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('81','79','data/files/store_2/goods_97/201312262241379970.jpg','data/files/store_2/goods_97/small_201312262241379970.jpg','1','81');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('82','80','data/files/store_2/goods_156/201312262242365477.jpg','data/files/store_2/goods_156/small_201312262242365477.jpg','1','82');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('83','81','data/files/store_2/goods_111/201312262251512164.jpg','data/files/store_2/goods_111/small_201312262251512164.jpg','1','83');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('84','82','data/files/store_2/goods_9/201312262253293800.jpg','data/files/store_2/goods_9/small_201312262253293800.jpg','1','84');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('85','83','data/files/store_2/goods_80/201312262254404774.jpg','data/files/store_2/goods_80/small_201312262254404774.jpg','1','85');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('86','84','data/files/store_2/goods_155/201312262255558436.jpg','data/files/store_2/goods_155/small_201312262255558436.jpg','1','86');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('87','85','data/files/store_2/goods_6/201312262256466045.jpg','data/files/store_2/goods_6/small_201312262256466045.jpg','1','87');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('88','86','data/files/store_2/goods_49/201312262257294186.jpg','data/files/store_2/goods_49/small_201312262257294186.jpg','1','88');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('89','87','data/files/store_2/goods_86/201312262258066317.jpg','data/files/store_2/goods_86/small_201312262258066317.jpg','1','89');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('90','88','data/files/store_2/goods_124/201312262258442397.jpg','data/files/store_2/goods_124/small_201312262258442397.jpg','1','90');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('91','89','data/files/store_2/goods_180/201312262259401924.jpg','data/files/store_2/goods_180/small_201312262259401924.jpg','1','91');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('92','90','data/files/store_2/goods_60/201312262301006712.jpg','data/files/store_2/goods_60/small_201312262301006712.jpg','1','92');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('93','91','data/files/store_2/goods_155/201312262302356953.jpg','data/files/store_2/goods_155/small_201312262302356953.jpg','1','93');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('94','92','data/files/store_2/goods_3/201312262303231812.jpg','data/files/store_2/goods_3/small_201312262303231812.jpg','1','94');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('95','93','data/files/store_2/goods_48/201312262304085587.jpg','data/files/store_2/goods_48/small_201312262304085587.jpg','1','95');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('96','94','data/files/store_2/goods_93/201312262304537590.jpg','data/files/store_2/goods_93/small_201312262304537590.jpg','1','96');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('97','95','data/files/store_2/goods_134/201312262305341913.jpg','data/files/store_2/goods_134/small_201312262305341913.jpg','1','97');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('98','96','data/files/store_2/goods_170/201312262306104597.jpg','data/files/store_2/goods_170/small_201312262306104597.jpg','1','98');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('99','97','data/files/store_2/goods_27/201312262307078496.jpg','data/files/store_2/goods_27/small_201312262307078496.jpg','1','99');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('101','98','data/files/store_2/goods_107/201312262308271759.jpg','data/files/store_2/goods_107/small_201312262308271759.jpg','1','101');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('102','98','data/files/store_2/goods_113/201312262308337745.jpg','data/files/store_2/goods_113/small_201312262308337745.jpg','255','102');
INSERT INTO ecm_goods_image ( `image_id`, `goods_id`, `image_url`, `thumbnail`, `sort_order`, `file_id` ) VALUES  ('103','98','data/files/store_2/goods_154/201312262309145699.jpg','data/files/store_2/goods_154/small_201312262309145699.jpg','255','103');
DROP TABLE IF EXISTS ecm_goods_prop;
CREATE TABLE ecm_goods_prop (
  pid int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  sort_order int(11) NOT NULL,
  PRIMARY KEY  (pid)
) TYPE=MyISAM;
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('1','品牌','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('2','类别','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('3','规格','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('4','产地','1','255');
INSERT INTO ecm_goods_prop ( `pid`, `name`, `status`, `sort_order` ) VALUES  ('5','价格区间','1','255');
DROP TABLE IF EXISTS ecm_goods_prop_value;
CREATE TABLE ecm_goods_prop_value (
  vid int(11) NOT NULL auto_increment,
  pid int(11) NOT NULL,
  prop_value varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  sort_order int(11) NOT NULL,
  PRIMARY KEY  (vid)
) TYPE=MyISAM;
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('1','1','红富士','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('2','2','苹果','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('3','3','礼盒装','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('4','4','国产','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('5','5','0-50','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('6','1','杰记水果','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('7','2','梨子','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('8','2','葡萄','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('9','2','红提','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('10','3','礼袋装','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('11','4','进口','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('12','5','50-100','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('13','5','100-200','1','255');
INSERT INTO ecm_goods_prop_value ( `vid`, `pid`, `prop_value`, `status`, `sort_order` ) VALUES  ('14','5','200-500','1','255');
DROP TABLE IF EXISTS ecm_goods_pvs;
CREATE TABLE ecm_goods_pvs (
  goods_id int(11) NOT NULL,
  pvs text NOT NULL,
  PRIMARY KEY  (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('1','5:12;4:11;3:3;2:2;1:6');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('2','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('3','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('4','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('5','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('6','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('7','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('8','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('19','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('20','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('21','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('25','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('26','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('27','');
INSERT INTO ecm_goods_pvs ( `goods_id`, `pvs` ) VALUES  ('99','');
DROP TABLE IF EXISTS ecm_goods_qa;
CREATE TABLE ecm_goods_qa (
  ques_id int(10) unsigned NOT NULL auto_increment,
  question_content varchar(255) NOT NULL,
  user_id int(10) unsigned NOT NULL,
  store_id int(10) unsigned NOT NULL,
  email varchar(60) NOT NULL,
  item_id int(10) unsigned NOT NULL default '0',
  item_name varchar(255) NOT NULL default '',
  reply_content varchar(255) NOT NULL,
  time_post int(10) unsigned NOT NULL,
  time_reply int(10) unsigned NOT NULL,
  if_new tinyint(3) unsigned NOT NULL default '1',
  `type` varchar(10) NOT NULL default 'goods',
  PRIMARY KEY  (ques_id),
  KEY user_id (user_id),
  KEY goods_id (item_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_goods_spec;
CREATE TABLE ecm_goods_spec (
  spec_id int(10) unsigned NOT NULL auto_increment,
  goods_id int(10) unsigned NOT NULL default '0',
  spec_1 varchar(60) NOT NULL default '',
  spec_2 varchar(60) NOT NULL default '',
  color_rgb varchar(7) NOT NULL default '',
  price decimal(10,2) NOT NULL default '0.00',
  stock int(11) NOT NULL default '0',
  sku varchar(60) NOT NULL default '',
  PRIMARY KEY  (spec_id),
  KEY goods_id (goods_id),
  KEY price (price)
) TYPE=MyISAM;
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('1','1','','','','8.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('2','2','','','','100.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('3','3','','','','68.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('4','4','','','','69.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('5','5','','','','10.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('6','6','','','','32.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('7','7','','','','65.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('8','8','','','','38.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('9','9','','','','50.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('10','10','','','','108.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('11','11','','','','25.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('12','12','','','','28.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('13','13','','','','108.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('14','14','','','','21.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('15','15','','','','30.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('16','16','','','','92.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('17','17','','','','110.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('18','18','','','','32.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('19','19','','','','52.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('20','20','','','','95.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('21','21','','','','72.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('22','22','','','','36.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('23','23','','','','128.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('24','24','','','','62.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('25','25','','','','350.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('26','26','','','','100.00','0','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('27','27','','','','666.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('28','28','','','','108.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('29','29','','','','3.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('30','30','','','','59.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('31','31','','','','6.90','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('32','32','','','','10.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('33','33','','','','16.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('34','34','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('35','35','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('36','36','','','','22.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('37','37','','','','20.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('38','38','','','','21.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('39','39','','','','80.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('40','40','','','','2.20','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('41','41','','','','2.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('42','42','','','','2.30','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('43','43','','','','7.30','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('44','44','','','','4.10','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('45','45','','','','14.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('46','46','','','','5.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('47','47','','','','5.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('48','48','','','','2.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('49','49','','','','2.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('50','50','','','','74.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('51','51','','','','14.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('52','52','','','','144.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('53','53','','','','17.50','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('54','54','','','','354.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('55','55','','','','679.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('56','56','','','','606.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('57','57','','','','374.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('58','58','','','','774.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('59','59','','','','12.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('60','60','','','','35.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('61','61','','','','24.90','0','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('62','62','','','','46.60','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('63','63','','','','215.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('64','64','','','','202.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('65','65','','','','158.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('66','66','','','','2.90','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('67','67','','','','23.80','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('68','68','','','','5.10','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('69','69','','','','45.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('70','70','','','','850.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('71','71','','','','750.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('72','72','','','','690.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('73','73','','','','850.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('74','74','','','','2090.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('75','75','','','','173.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('76','76','','','','390.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('77','77','','','','169.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('78','78','','','','129.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('79','79','','','','69.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('80','80','','','','89.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('81','81','','','','699.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('82','82','','','','499.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('83','83','','','','269.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('84','84','','','','170.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('85','85','','','','399.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('86','86','','','','259.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('87','87','','','','88.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('88','88','','','','249.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('89','89','','','','239.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('90','90','','','','270.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('91','91','','','','1298.00','99','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('92','92','','','','495.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('93','93','','','','199.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('94','94','','','','599.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('95','95','','','','688.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('96','96','','','','1749.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('97','97','','','','1549.00','100','');
INSERT INTO ecm_goods_spec ( `spec_id`, `goods_id`, `spec_1`, `spec_2`, `color_rgb`, `price`, `stock`, `sku` ) VALUES  ('98','98','','','','1588.00','100','');
DROP TABLE IF EXISTS ecm_goods_statistics;
CREATE TABLE ecm_goods_statistics (
  goods_id int(10) unsigned NOT NULL default '0',
  views int(10) unsigned NOT NULL default '0',
  collects int(10) unsigned NOT NULL default '0',
  carts int(10) unsigned NOT NULL default '0',
  orders int(10) unsigned NOT NULL default '0',
  sales int(10) unsigned NOT NULL default '0',
  comments int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('1','10','0','3','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('2','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('3','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('4','4','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('5','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('6','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('7','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('8','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('9','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('10','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('11','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('12','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('13','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('14','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('15','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('16','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('17','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('18','7','0','1','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('19','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('20','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('21','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('22','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('23','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('24','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('25','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('26','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('27','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('28','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('29','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('30','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('31','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('32','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('33','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('34','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('35','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('36','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('37','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('38','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('39','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('40','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('41','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('42','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('43','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('44','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('45','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('46','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('47','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('48','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('49','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('50','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('51','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('52','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('53','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('54','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('55','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('56','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('57','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('58','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('59','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('60','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('61','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('62','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('63','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('64','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('65','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('66','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('67','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('68','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('69','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('70','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('71','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('72','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('73','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('74','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('75','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('76','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('77','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('78','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('79','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('80','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('81','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('82','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('83','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('84','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('85','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('86','0','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('87','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('88','2','0','1','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('89','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('90','6','0','2','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('91','5','0','1','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('92','1','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('93','3','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('94','2','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('95','7','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('96','11','0','2','1','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('97','7','0','0','0','0','0');
INSERT INTO ecm_goods_statistics ( `goods_id`, `views`, `collects`, `carts`, `orders`, `sales`, `comments` ) VALUES  ('98','38','0','0','0','0','0');
DROP TABLE IF EXISTS ecm_groupbuy;
CREATE TABLE ecm_groupbuy (
  group_id int(10) unsigned NOT NULL auto_increment,
  group_name varchar(255) NOT NULL default '',
  group_image varchar(255) NOT NULL,
  group_desc varchar(255) NOT NULL default '',
  start_time int(10) unsigned NOT NULL default '0',
  end_time int(10) unsigned NOT NULL default '0',
  goods_id int(10) unsigned NOT NULL default '0',
  store_id int(10) unsigned NOT NULL default '0',
  spec_price text NOT NULL,
  min_quantity smallint(5) unsigned NOT NULL default '0',
  max_per_user smallint(5) unsigned NOT NULL default '0',
  state tinyint(3) unsigned NOT NULL default '0',
  recommended tinyint(3) unsigned NOT NULL default '0',
  views int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (group_id),
  KEY goods_id (goods_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_groupbuy ( `group_id`, `group_name`, `group_image`, `group_desc`, `start_time`, `end_time`, `goods_id`, `store_id`, `spec_price`, `min_quantity`, `max_per_user`, `state`, `recommended`, `views` ) VALUES  ('2','盛夏促销 团购','data/files/store_2/group/201407021611082171.jpg','','1404259868','1436428799','16','2','a:1:{i:16;a:1:{s:5:\"price\";s:5:\"70.00\";}}','1000','0','1','0','2');
DROP TABLE IF EXISTS ecm_groupbuy_log;
CREATE TABLE ecm_groupbuy_log (
  group_id int(10) unsigned NOT NULL default '0',
  user_id int(10) unsigned NOT NULL default '0',
  user_name varchar(60) NOT NULL default '',
  quantity smallint(5) unsigned NOT NULL default '0',
  spec_quantity text NOT NULL,
  linkman varchar(60) NOT NULL default '',
  tel varchar(60) NOT NULL default '',
  order_id int(10) unsigned NOT NULL default '0',
  add_time int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (group_id,user_id)
) TYPE=MyISAM;
INSERT INTO ecm_groupbuy_log ( `group_id`, `user_id`, `user_name`, `quantity`, `spec_quantity`, `linkman`, `tel`, `order_id`, `add_time` ) VALUES  ('2','16','159369','1','a:1:{i:16;a:2:{s:4:\"spec\";s:12:\"默认规格\";s:3:\"qty\";s:1:\"1\";}}','问我','1893496485','0','1404260233');
DROP TABLE IF EXISTS ecm_kmenus;
CREATE TABLE ecm_kmenus (
  kmenus_id int(10) unsigned NOT NULL,
  stypeinfo tinyint(3) unsigned NOT NULL default '1',
  `status` tinyint(3) unsigned NOT NULL default '0',
  stype tinyint(3) unsigned NOT NULL default '1',
  PRIMARY KEY  (kmenus_id)
) TYPE=MyISAM;
INSERT INTO ecm_kmenus ( `kmenus_id`, `stypeinfo`, `status`, `stype` ) VALUES  ('2','3','0','1');
DROP TABLE IF EXISTS ecm_kmenusinfo;
CREATE TABLE ecm_kmenusinfo (
  kmenusinfo_id int(10) unsigned NOT NULL auto_increment,
  kmenus_id int(10) unsigned NOT NULL default '0',
  title varchar(60) NOT NULL default '',
  color varchar(20) NOT NULL default '',
  loadurl varchar(255) NOT NULL default '',
  imgurl varchar(255) NOT NULL default '',
  nums tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (kmenusinfo_id)
) TYPE=MyISAM;
INSERT INTO ecm_kmenusinfo ( `kmenusinfo_id`, `kmenus_id`, `title`, `color`, `loadurl`, `imgurl`, `nums` ) VALUES  ('1','2','','2929FF','tel:12345678','http://localhost/mall/kmenus/plugmenu1.png','0');
INSERT INTO ecm_kmenusinfo ( `kmenusinfo_id`, `kmenus_id`, `title`, `color`, `loadurl`, `imgurl`, `nums` ) VALUES  ('2','2','客服QQ','FF0000','http://sighttp.qq.com/authd?IDKEY=085cff0e6008e55c75314f9c122b819fbf71375a74810acf','http://localhost/mall/kmenus/plugmenu20.png','0');
INSERT INTO ecm_kmenusinfo ( `kmenusinfo_id`, `kmenus_id`, `title`, `color`, `loadurl`, `imgurl`, `nums` ) VALUES  ('3','2','首页','FF0303','http://mall.xxtwy.com/index.php?app=store&id=2','http://mall.xxtwy.com/mall/kmenus/plugmenu6.png','0');
DROP TABLE IF EXISTS ecm_lottery;
CREATE TABLE ecm_lottery (
  id int(10) unsigned NOT NULL auto_increment,
  title varchar(60) NOT NULL default '' COMMENT '活动名称',
  store_id int(10) unsigned NOT NULL default '0',
  statdate int(10) unsigned NOT NULL default '0' COMMENT '开始时间',
  enddate int(10) unsigned NOT NULL default '0' COMMENT '结束时间',
  startinfo varchar(255) NOT NULL default '' COMMENT '活动规则',
  info varchar(255) NOT NULL default '' COMMENT '活动说明',
  startpicurl varchar(255) NOT NULL default '' COMMENT '开始图片',
  endinfo varchar(255) NOT NULL default '' COMMENT '结束说明',
  endpicurl varchar(255) NOT NULL default '' COMMENT '结束图片',
  fist varchar(255) NOT NULL default '',
  fistnums int(10) unsigned NOT NULL default '0',
  `second` varchar(255) NOT NULL default '',
  secondnums int(10) unsigned NOT NULL default '0',
  third varchar(255) NOT NULL default '',
  thirdnums int(10) unsigned NOT NULL default '0',
  dayflag tinyint(4) unsigned NOT NULL default '0' COMMENT '抽奖方式',
  allpeople varchar(255) NOT NULL default '' COMMENT '中奖概率',
  joinnum int(10) unsigned NOT NULL default '0' COMMENT '加入人数',
  checkpwd varchar(255) NOT NULL default '' COMMENT '兑奖密码',
  displayjpnums tinyint(4) unsigned NOT NULL default '1' COMMENT '是否显示奖品数量',
  click int(10) unsigned NOT NULL default '0' COMMENT '点击数量',
  `status` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (id)
) TYPE=MyISAM;
INSERT INTO ecm_lottery ( `id`, `title`, `store_id`, `statdate`, `enddate`, `startinfo`, `info`, `startpicurl`, `endinfo`, `endpicurl`, `fist`, `fistnums`, `second`, `secondnums`, `third`, `thirdnums`, `dayflag`, `allpeople`, `joinnum`, `checkpwd`, `displayjpnums`, `click`, `status` ) VALUES  ('4','大转盘活动','2','1400025600','1400544000','123123','亲，请点击进入大转盘活123动页面，祝您好运哦！','','亲，活动已经结束，请继续关注我们的后续活动哦。','','1','2','1','2','1','2','1','1','2','','0','0','1');
INSERT INTO ecm_lottery ( `id`, `title`, `store_id`, `statdate`, `enddate`, `startinfo`, `info`, `startpicurl`, `endinfo`, `endpicurl`, `fist`, `fistnums`, `second`, `secondnums`, `third`, `thirdnums`, `dayflag`, `allpeople`, `joinnum`, `checkpwd`, `displayjpnums`, `click`, `status` ) VALUES  ('3','1212','2','1400112000','1401494400','活动规则','1','data/files/store_2/lottery/201405211419571075.png','2','data/files/store_2/lottery/201405211419576308.png','1','1','2','2','3','3','1','1','2','123456','0','0','0');
DROP TABLE IF EXISTS ecm_mail_queue;
CREATE TABLE ecm_mail_queue (
  queue_id int(11) unsigned NOT NULL auto_increment,
  mail_to varchar(150) NOT NULL default '',
  mail_encoding varchar(50) NOT NULL default '',
  mail_subject varchar(255) NOT NULL default '',
  mail_body text NOT NULL,
  priority tinyint(1) unsigned NOT NULL default '2',
  err_num tinyint(1) unsigned NOT NULL default '0',
  add_time int(11) NOT NULL default '0',
  lock_expiry int(11) NOT NULL default '0',
  PRIMARY KEY  (queue_id)
) TYPE=MyISAM;
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('1','123456@qq.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1335948628。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.taocz.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=1\">http://ecmall.taocz.60data.com/index.php?app=buyer_order&amp;act=view&amp;order_id=1</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2013-12-26 23:31</p>','1','0','1388043112','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('2','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1335948628，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.taocz.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=1\">http://ecmall.taocz.60data.com/index.php?app=seller_order&amp;act=view&amp;order_id=1</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://ecmall.taocz.60data.com/index.php?app=seller_order\">http://ecmall.taocz.60data.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2013-12-26 23:31</p>','1','0','1388043113','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('3','5887@123.cba','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的333666999:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413780437。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=2\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 12:32</p>','1','0','1400358731','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('4','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413780437，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=2\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 12:32</p>','1','0','1400358731','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('5','1139893504@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413788741。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=3\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=3</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:29</p>','1','0','1400369382','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('6','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413788741，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=3\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=3</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:29</p>','1','0','1400369382','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('7','1139893504@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413713002。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=4\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=4</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:46</p>','1','0','1400370394','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('8','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413713002，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=4\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=4</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:46</p>','1','0','1400370394','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('9','1139893504@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413782352。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=5\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:48</p>','1','0','1400370536','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('10','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413782352，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=5\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:48</p>','1','0','1400370536','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('11','1139893504@qq.com','utf-8','微创动力微信商城提醒:店铺超级店铺已确认收到了您线下支付的货款','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经确认了收到了您的订单1413782352的付款，请耐心等待卖家发货。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=5\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 15:59</p>','1','0','1400371142','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('12','123456@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413754142。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=6\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 16:31</p>','1','0','1400373075','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('13','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413754142，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=6\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 16:31</p>','1','0','1400373075','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('14','123456@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413795083。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=7\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 16:32</p>','1','0','1400373125','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('15','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413795083，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=7\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 16:32</p>','1','0','1400373125','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('16','599488251@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的renzhe350:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413794670。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=8\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 17:06</p>','1','0','1400375188','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('17','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413794670，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=8\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 17:06</p>','1','0','1400375188','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('18','568610760@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的123456:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413745054。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=9\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 22:05</p>','1','0','1400393112','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('19','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413745054，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=9\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-18 22:05</p>','1','0','1400393112','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('20','123456@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413703049。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=10\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=10</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 00:14</p>','1','0','1400400898','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('21','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413703049，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=10\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=10</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 00:14</p>','1','0','1400400898','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('22','C910647258@gmai.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的Dab:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413841744。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=11\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=11</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 12:49</p>','1','0','1400446167','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('23','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413841744，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=11\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=11</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 12:49</p>','1','0','1400446167','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('24','27166485@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的许康:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413873431。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=12\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=12</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 14:41</p>','1','0','1400452890','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('25','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413873431，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=12\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=12</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 14:41</p>','1','0','1400452890','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('26','36688685668@qq.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的门:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413833843。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=13\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=13</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 16:27</p>','1','0','1400459251','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('27','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413833843，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=13\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=13</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 16:27</p>','1','0','1400459251','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('28','123456@sina.com','utf-8','微创动力微信商城提醒:您的订单已生成','<p>尊敬的123456123456:</p>\r\n<p style=\"padding-left: 30px;\">您在微创动力微信商城上下的订单已生成，订单号1413899707。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=14\">http://vmall.vchuang.cn/index.php?app=buyer_order&amp;act=view&amp;order_id=14</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 18:42</p>','1','0','1400467373','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('29','123456@qq.com','utf-8','微创动力微信商城提醒:您有一个新订单需要处理','<p>尊敬的超级店铺:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1413899707，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=14\">http://vmall.vchuang.cn/index.php?app=seller_order&amp;act=view&amp;order_id=14</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://vmall.vchuang.cn/index.php?app=seller_order\">http://vmall.vchuang.cn/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">微创动力微信商城</p>\r\n<p style=\"text-align: right;\">2014-05-19 18:42</p>','1','0','1400467373','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('30','1139893504@qq.com','utf-8','ECMall提醒:您的订单1413782352已被取消','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413782352。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=5\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=5</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('31','123456@qq.com','utf-8','ECMall提醒:您的订单1413754142已被取消','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413754142。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=6\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=6</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('32','123456@qq.com','utf-8','ECMall提醒:您的订单1413795083已被取消','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413795083。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=7\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=7</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('33','599488251@qq.com','utf-8','ECMall提醒:您的订单1413794670已被取消','<p>尊敬的renzhe350:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413794670。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=8\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=8</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('34','568610760@qq.com','utf-8','ECMall提醒:您的订单1413745054已被取消','<p>尊敬的123456:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413745054。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=9\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=9</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('35','123456@qq.com','utf-8','ECMall提醒:您的订单1413703049已被取消','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413703049。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=10\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=10</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('36','C910647258@gmai.com','utf-8','ECMall提醒:您的订单1413841744已被取消','<p>尊敬的Dab:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413841744。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=11\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=11</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('37','27166485@qq.com','utf-8','ECMall提醒:您的订单1413873431已被取消','<p>尊敬的许康:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413873431。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=12\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=12</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('38','36688685668@qq.com','utf-8','ECMall提醒:您的订单1413833843已被取消','<p>尊敬的门:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413833843。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=13\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=13</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('39','123456@sina.com','utf-8','ECMall提醒:您的订单1413899707已被取消','<p>尊敬的123456123456:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413899707。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=14\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=14</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 20:35</p>','1','0','1404045339','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('40','123456@qq.com','utf-8','ECMall提醒:您的订单1335948628已被取消','<p>尊敬的buyer:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1335948628。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=1\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=1</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 21:01</p>','1','0','1404046902','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('41','5887@123.cba','utf-8','ECMall提醒:您的订单1413780437已被取消','<p>尊敬的333666999:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413780437。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=2\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=2</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 21:01</p>','1','0','1404046902','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('42','1139893504@qq.com','utf-8','ECMall提醒:您的订单1413788741已被取消','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413788741。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=3\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=3</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 21:01</p>','1','0','1404046902','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('43','1139893504@qq.com','utf-8','ECMall提醒:您的订单1413713002已被取消','<p>尊敬的我:</p>\r\n<p style=\"padding-left: 30px;\">与您交易的店铺超级店铺已经取消了您的订单1413713002。</p>\r\n<p style=\"padding-left: 30px;\"></p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=4\">http://localhost/index.php?app=buyer_order&amp;act=view&amp;order_id=4</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-06-29 21:01</p>','1','0','1404046902','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('44','1@4.com','utf-8','ECMall提醒:您的订单已生成','<p>尊敬的111111:</p>\r\n<p style=\"padding-left: 30px;\">您在ECMall上下的订单已生成，订单号1418213802。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://mall.xxtwy.com/index.php?app=buyer_order&amp;act=view&amp;order_id=15\">http://mall.xxtwy.com/index.php?app=buyer_order&amp;act=view&amp;order_id=15</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-07-02 12:13</p>','1','0','1404245605','0');
INSERT INTO ecm_mail_queue ( `queue_id`, `mail_to`, `mail_encoding`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry` ) VALUES  ('45','123456@qq.com','utf-8','ECMall提醒:您有一个新订单需要处理','<p>尊敬的晓晓微营:</p>\r\n<p style=\"padding-left: 30px;\">您有一个新的订单需要处理，订单号1418213802，请尽快处理。</p>\r\n<p style=\"padding-left: 30px;\">查看订单详细信息请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://mall.xxtwy.com/index.php?app=seller_order&amp;act=view&amp;order_id=15\">http://mall.xxtwy.com/index.php?app=seller_order&amp;act=view&amp;order_id=15</a></p>\r\n<p style=\"padding-left: 30px;\">查看您的订单列表管理页请点击以下链接</p>\r\n<p style=\"padding-left: 30px;\"><a href=\"http://mall.xxtwy.com/index.php?app=seller_order\">http://mall.xxtwy.com/index.php?app=seller_order</a></p>\r\n<p style=\"text-align: right;\">ECMall</p>\r\n<p style=\"text-align: right;\">2014-07-02 12:13</p>','1','0','1404245605','0');
DROP TABLE IF EXISTS ecm_member;
CREATE TABLE ecm_member (
  user_id int(10) unsigned NOT NULL auto_increment,
  user_name varchar(60) NOT NULL default '',
  email varchar(60) NOT NULL default '',
  `password` varchar(32) NOT NULL default '',
  real_name varchar(60) default NULL,
  gender tinyint(3) unsigned NOT NULL default '0',
  birthday date default NULL,
  phone_tel varchar(60) default NULL,
  phone_mob varchar(60) default NULL,
  im_qq varchar(60) default NULL,
  im_msn varchar(60) default NULL,
  im_skype varchar(60) default NULL,
  im_yahoo varchar(60) default NULL,
  im_aliww varchar(60) default NULL,
  reg_time int(10) unsigned default '0',
  last_login int(10) unsigned default NULL,
  last_ip varchar(15) default NULL,
  logins int(10) unsigned NOT NULL default '0',
  ugrade tinyint(3) unsigned NOT NULL default '0',
  portrait varchar(255) default NULL,
  outer_id int(10) unsigned NOT NULL default '0',
  activation varchar(60) default NULL,
  feed_config text NOT NULL,
  PRIMARY KEY  (user_id),
  KEY user_name (user_name),
  KEY email (email),
  KEY outer_id (outer_id)
) TYPE=MyISAM;
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('1','admin','admin@qq.com','7fef6171469e80d32c0559f88b377245','','0',null,null,null,'','',null,null,null,'1388016632','1404260524','175.167.136.16','37','0','','0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('2','seller','123456@qq.com','e10adc3949ba59abbe56e057f20f883e','','0','0000-00-00',null,null,'361818525','',null,null,null,'1388031020','1404244744','175.167.152.46','57','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('3','buyer','123456@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1388031042','1400400883','223.73.99.8','4','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('4','yifei','yifei@163.com','96e79218965eb72c92a549dd5a330112',null,'0',null,null,null,null,null,null,null,null,'1400315514','1400315551','218.5.125.106','2','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('5','333666999','5887@123.cba','25519d2791fe08f7414887655644bf96',null,'0',null,null,null,null,null,null,null,null,'1400358673','1400358673','180.212.223.114','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('6','我','1139893504@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1400369245','1400369245','182.96.53.67','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('7','renzhe350','599488251@qq.com','5e96531d0f38493de0bc27880f5f1a20',null,'0',null,null,null,null,null,null,null,null,'1400375167','1400375167','182.41.210.30','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('8','123456','568610760@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1400393081','1400393081','123.116.34.24','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('9','Dab','C910647258@gmai.com','e10adc3949ba59abbe56e057f20f883e','','0',null,null,null,'','',null,null,null,'1400444076','1400449315','220.135.163.118','2','0','','0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('10','许康','27166485@qq.com','43e2b8e449aa83f5a21bfa788efbec54',null,'0',null,null,null,null,null,null,null,null,'1400452775','1400452775','122.96.45.94','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('11','门','36688685668@qq.com','82bbf7cd991a582234898722d7dad347',null,'0',null,null,null,null,null,null,null,null,'1400459162','1400459162','111.112.98.189','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('13','爱在我心','1139893504@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1400465865','1400465865','115.152.99.61','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('12','liyuliang','1121139696@qq.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1400460400','1400461345','112.239.139.145','2','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('14','123456123456','123456@sina.com','e10adc3949ba59abbe56e057f20f883e',null,'0',null,null,null,null,null,null,null,null,'1400467308','1400467308','180.103.248.228','1','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('15','111111','1@4.com','96e79218965eb72c92a549dd5a330112',null,'0',null,null,null,null,null,null,null,null,'1404245563','1404260334','220.249.163.181','2','0',null,'0',null,'');
INSERT INTO ecm_member ( `user_id`, `user_name`, `email`, `password`, `real_name`, `gender`, `birthday`, `phone_tel`, `phone_mob`, `im_qq`, `im_msn`, `im_skype`, `im_yahoo`, `im_aliww`, `reg_time`, `last_login`, `last_ip`, `logins`, `ugrade`, `portrait`, `outer_id`, `activation`, `feed_config` ) VALUES  ('16','159369','1@4.com','96e79218965eb72c92a549dd5a330112',null,'0',null,null,null,null,null,null,null,null,'1404260167','1404260167','220.249.163.181','1','0',null,'0',null,'');
DROP TABLE IF EXISTS ecm_membership_card_info;
CREATE TABLE ecm_membership_card_info (
  membership_card_info_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  user_id int(10) unsigned NOT NULL default '0',
  user_name varchar(100) NOT NULL default '',
  card_num int(10) NOT NULL,
  phone varchar(20) NOT NULL default '',
  sex tinyint(1) unsigned NOT NULL default '0',
  region_id int(10) unsigned default NULL,
  region_name varchar(100) default '',
  address varchar(255) NOT NULL default '',
  create_time int(10) unsigned default NULL,
  `status` tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (membership_card_info_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_membership_setting;
CREATE TABLE ecm_membership_setting (
  membership_setting_id int(10) unsigned NOT NULL default '0',
  title varchar(60) NOT NULL default '',
  cover_image varchar(100) NOT NULL default '',
  region_id int(10) unsigned default NULL,
  region_name varchar(100) default NULL,
  address varchar(100) default NULL,
  phone varchar(100) default NULL,
  card_name varchar(60) NOT NULL default '',
  card_name_color varchar(10) NOT NULL default '',
  bg varchar(255) NOT NULL default '',
  card_bg varchar(100) NOT NULL default '',
  card_num_color varchar(10) NOT NULL default '',
  card_description varchar(255) NOT NULL default '',
  PRIMARY KEY  (membership_setting_id)
) TYPE=MyISAM;
INSERT INTO ecm_membership_setting ( `membership_setting_id`, `title`, `cover_image`, `region_id`, `region_name`, `address`, `phone`, `card_name`, `card_name_color`, `bg`, `card_bg`, `card_num_color`, `card_description` ) VALUES  ('2','晓晓微营会员卡','','1','中国','北京','010-12345678','晓晓微营会员卡','FFFFFF','','themes/mall/taocz/styles/default/images/huodong/membership_card/card_bg/card_bg05.png','FFFFFF','会员卡说明');
DROP TABLE IF EXISTS ecm_message;
CREATE TABLE ecm_message (
  msg_id int(10) unsigned NOT NULL auto_increment,
  from_id int(10) unsigned NOT NULL default '0',
  to_id int(10) unsigned NOT NULL default '0',
  title varchar(100) NOT NULL default '',
  content text NOT NULL,
  add_time int(10) unsigned NOT NULL default '0',
  last_update int(10) unsigned NOT NULL default '0',
  `new` tinyint(3) unsigned NOT NULL default '0',
  parent_id int(10) unsigned NOT NULL default '0',
  `status` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (msg_id),
  KEY from_id (from_id),
  KEY to_id (to_id),
  KEY parent_id (parent_id)
) TYPE=MyISAM;
INSERT INTO ecm_message ( `msg_id`, `from_id`, `to_id`, `title`, `content`, `add_time`, `last_update`, `new`, `parent_id`, `status` ) VALUES  ('1','0','2','','恭喜，您的店铺已开通，赶快来用户中心发布商品吧。','1388031275','1388031275','0','0','3');
INSERT INTO ecm_message ( `msg_id`, `from_id`, `to_id`, `title`, `content`, `add_time`, `last_update`, `new`, `parent_id`, `status` ) VALUES  ('2','2','9','','OK~','1400446643','1400446643','1','0','3');
INSERT INTO ecm_message ( `msg_id`, `from_id`, `to_id`, `title`, `content`, `add_time`, `last_update`, `new`, `parent_id`, `status` ) VALUES  ('3','0','2','','请尽快到“已结束的团购”完成该团购活动，以便买家可以完成交易，如结束后5天未确认完成，该活动将被自动取消,查看[url=http://localhost/index.php?app=seller_groupbuy&state=end]已结束的团购[/url]','1404124379','1404124379','1','0','3');
INSERT INTO ecm_message ( `msg_id`, `from_id`, `to_id`, `title`, `content`, `add_time`, `last_update`, `new`, `parent_id`, `status` ) VALUES  ('4','0','1','','团购活动结束5天后卖家未确认完成，活动自动取消，[url=http://localhost/index.php?app=groupbuy&amp;id=1]查看详情[/url]','1404124379','1404124379','1','0','3');
DROP TABLE IF EXISTS ecm_module;
CREATE TABLE ecm_module (
  module_id varchar(30) NOT NULL default '',
  module_name varchar(100) NOT NULL default '',
  module_version varchar(5) NOT NULL default '',
  module_desc text NOT NULL,
  module_config text NOT NULL,
  enabled tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (module_id)
) TYPE=MyISAM;
INSERT INTO ecm_module ( `module_id`, `module_name`, `module_version`, `module_desc`, `module_config`, `enabled` ) VALUES  ('datacall','数据调用','1.0','可以在商城以外调用商城的数据','','1');
DROP TABLE IF EXISTS ecm_navigation;
CREATE TABLE ecm_navigation (
  nav_id int(10) unsigned NOT NULL auto_increment,
  `type` varchar(10) NOT NULL default '',
  title varchar(60) NOT NULL default '',
  link varchar(255) NOT NULL default '',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  open_new tinyint(3) unsigned NOT NULL default '0',
  hot tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (nav_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_order;
CREATE TABLE ecm_order (
  order_id int(10) unsigned NOT NULL auto_increment,
  order_sn varchar(20) NOT NULL default '',
  `type` varchar(10) NOT NULL default 'material',
  extension varchar(10) NOT NULL default '',
  seller_id int(10) unsigned NOT NULL default '0',
  seller_name varchar(100) default NULL,
  buyer_id int(10) unsigned NOT NULL default '0',
  buyer_name varchar(100) default NULL,
  buyer_email varchar(60) NOT NULL default '',
  `status` tinyint(3) unsigned NOT NULL default '0',
  add_time int(10) unsigned NOT NULL default '0',
  payment_id int(10) unsigned default NULL,
  payment_name varchar(100) default NULL,
  payment_code varchar(20) NOT NULL default '',
  out_trade_sn varchar(20) NOT NULL default '',
  pay_time int(10) unsigned default NULL,
  pay_message varchar(255) NOT NULL default '',
  ship_time int(10) unsigned default NULL,
  invoice_no varchar(255) default NULL,
  finished_time int(10) unsigned NOT NULL default '0',
  goods_amount decimal(10,2) unsigned NOT NULL default '0.00',
  discount decimal(10,2) unsigned NOT NULL default '0.00',
  order_amount decimal(10,2) unsigned NOT NULL default '0.00',
  evaluation_status tinyint(1) unsigned NOT NULL default '0',
  evaluation_time int(10) unsigned NOT NULL default '0',
  anonymous tinyint(3) unsigned NOT NULL default '0',
  postscript varchar(255) NOT NULL default '',
  pay_alter tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (order_id),
  KEY order_sn (order_sn,seller_id),
  KEY seller_name (seller_name),
  KEY buyer_name (buyer_name),
  KEY add_time (add_time)
) TYPE=MyISAM;
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('1','1335948628','material','normal','2','超级店铺','3','buyer','123456@qq.com','0','1388043112','1','支付宝','alipay','1335948628',null,'',null,null,'0','32.00','0.00','32.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('2','1413780437','material','normal','2','超级店铺','5','333666999','5887@123.cba','0','1400358731','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.20','0','0','0','69','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('3','1413788741','material','normal','2','超级店铺','6','我','1139893504@qq.com','0','1400369382','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.20','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('4','1413713002','material','normal','2','超级店铺','6','我','1139893504@qq.com','0','1400370394','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','8.00','0.00','8.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('5','1413782352','material','normal','2','超级店铺','6','我','1139893504@qq.com','0','1400370536','4','支付宝免签接口','alipayfree','','1400371142','',null,null,'0','0.10','0.00','0.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('6','1413754142','material','normal','2','超级店铺','3','buyer','123456@qq.com','0','1400373075','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('7','1413795083','material','normal','2','超级店铺','3','buyer','123456@qq.com','0','1400373125','2','银行汇款','bank','',null,'',null,null,'0','0.10','0.00','0.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('8','1413794670','material','normal','2','超级店铺','7','renzhe350','599488251@qq.com','0','1400375188','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('9','1413745054','material','normal','2','超级店铺','8','123456','568610760@qq.com','0','1400393112','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('10','1413703049','material','normal','2','超级店铺','3','buyer','123456@qq.com','0','1400400898','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','1749.00','0.00','1749.00','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('11','1413841744','material','normal','2','超级店铺','9','Dab','C910647258@gmai.com','0','1400446167','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','2.10','0.00','2.10','0','0','0','As nowhu','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('12','1413873431','material','normal','2','超级店铺','10','许康','27166485@qq.com','0','1400452890','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.10','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('13','1413833843','material','normal','2','超级店铺','11','门','36688685668@qq.com','0','1400459251','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.20','0.00','0.20','0','0','0','','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('14','1413899707','material','normal','2','超级店铺','14','123456123456','123456@sina.com','0','1400467373','4','支付宝免签接口','alipayfree','',null,'',null,null,'0','0.10','0.00','0.10','0','0','0','12456','0');
INSERT INTO ecm_order ( `order_id`, `order_sn`, `type`, `extension`, `seller_id`, `seller_name`, `buyer_id`, `buyer_name`, `buyer_email`, `status`, `add_time`, `payment_id`, `payment_name`, `payment_code`, `out_trade_sn`, `pay_time`, `pay_message`, `ship_time`, `invoice_no`, `finished_time`, `goods_amount`, `discount`, `order_amount`, `evaluation_status`, `evaluation_time`, `anonymous`, `postscript`, `pay_alter` ) VALUES  ('15','1418213802','material','normal','2','晓晓微营','15','111111','1@4.com','11','1404245601',null,null,'','',null,'',null,null,'0','1298.00','0.00','1298.00','0','0','0','','0');
DROP TABLE IF EXISTS ecm_order_extm;
CREATE TABLE ecm_order_extm (
  order_id int(10) unsigned NOT NULL default '0',
  consignee varchar(60) NOT NULL default '',
  region_id int(10) unsigned default NULL,
  region_name varchar(255) default NULL,
  address varchar(255) default NULL,
  zipcode varchar(20) default NULL,
  phone_tel varchar(60) default NULL,
  phone_mob varchar(60) default NULL,
  shipping_id int(10) unsigned default NULL,
  shipping_name varchar(100) default NULL,
  shipping_fee decimal(10,2) NOT NULL default '0.00',
  PRIMARY KEY  (order_id),
  KEY consignee (consignee)
) TYPE=MyISAM;
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('1','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('2','陌','1','中国','6987','','1896666333','1896666333','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('3','我','1','中国','我','','13117982756','13117982756','1','快递','0.10');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('4','我','1','中国','我','','13117982756','13117982756','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('5','我','1','中国','我','','13117982756','13117982756','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('6','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('7','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('8','恩恩','1','中国','鹅鹅鹅鹅鹅鹅','','','13303636366','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('9','123','1','中国','123','','123456789','12345678','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('10','超级买家','1','中国','请如实填写收货人详细地址','','','8888888','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('11','Ghhhh','1','中国','Dfghujikjhg hjkihgffrt begging','','132466667778','34567890','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('12','许康','1','中国','南京黄家圩','','15651738771','','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('13','门','1','中国','太忙了口膜','','1358688688','135685899','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('14','123','1','中国','123456','','123456','123456','1','快递','0.00');
INSERT INTO ecm_order_extm ( `order_id`, `consignee`, `region_id`, `region_name`, `address`, `zipcode`, `phone_tel`, `phone_mob`, `shipping_id`, `shipping_name`, `shipping_fee` ) VALUES  ('15','图','1','中国','拖拉机','','15825488','','1','快递','0.00');
DROP TABLE IF EXISTS ecm_order_goods;
CREATE TABLE ecm_order_goods (
  rec_id int(10) unsigned NOT NULL auto_increment,
  order_id int(10) unsigned NOT NULL default '0',
  goods_id int(10) unsigned NOT NULL default '0',
  goods_name varchar(255) NOT NULL default '',
  spec_id int(10) unsigned NOT NULL default '0',
  specification varchar(255) default NULL,
  price decimal(10,2) unsigned NOT NULL default '0.00',
  quantity int(10) unsigned NOT NULL default '1',
  goods_image varchar(255) default NULL,
  evaluation tinyint(1) unsigned NOT NULL default '0',
  `comment` varchar(255) NOT NULL default '',
  credit_value tinyint(1) NOT NULL default '0',
  is_valid tinyint(1) unsigned NOT NULL default '1',
  PRIMARY KEY  (rec_id),
  KEY order_id (order_id,goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('1','1','18','沙洲优黄花开富贵480ml/瓶','18','','32.00','1','data/files/store_2/goods_166/small_201312262109269656.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('2','2','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('3','3','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('4','4','1','合家欢 新鲜西红柿 酸酸甜甜 凌晨采购 全程冷链','1','','8.00','1','data/files/store_2/goods_110/small_201312262048304586.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('5','5','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('6','6','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('7','7','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('8','8','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('9','9','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('10','10','96','诺基亚（NOKIA） Lumia 720T 3G手机 TD-SCDMA/GSM','96','','1749.00','1','data/files/store_2/goods_170/small_201312262306104597.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('11','11','99','测试商品','102','颜色:绿色 尺码:M','0.10','21','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('12','12','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('13','13','99','测试商品','100','颜色:红色 尺码:M','0.10','2','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('14','14','99','测试商品','99','颜色:红色 尺码:S','0.10','1','data/files/store_2/goods_149/small_201405180022293085.jpg','0','','0','1');
INSERT INTO ecm_order_goods ( `rec_id`, `order_id`, `goods_id`, `goods_name`, `spec_id`, `specification`, `price`, `quantity`, `goods_image`, `evaluation`, `comment`, `credit_value`, `is_valid` ) VALUES  ('15','15','91','HTC T528t 双卡双待双通TD-SCDMA/GSM','91','','1298.00','1','data/files/store_2/goods_155/small_201312262302356953.jpg','0','','0','1');
DROP TABLE IF EXISTS ecm_order_log;
CREATE TABLE ecm_order_log (
  log_id int(10) unsigned NOT NULL auto_increment,
  order_id int(10) unsigned NOT NULL default '0',
  operator varchar(60) NOT NULL default '',
  order_status varchar(60) NOT NULL default '',
  changed_status varchar(60) NOT NULL default '',
  remark varchar(255) default NULL,
  log_time int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (log_id),
  KEY order_id (order_id)
) TYPE=MyISAM;
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('1','5','seller','等待买家付款','买家已付款','','1400371142');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('2','5','seller','买家已付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('3','6','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('4','7','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('5','8','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('6','9','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('7','10','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('8','11','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('9','12','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('10','13','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('11','14','seller','等待买家付款','交易关闭','无法备齐货物','1404045339');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('12','1','seller','等待买家付款','交易关闭','其他原因','1404046901');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('13','2','seller','等待买家付款','交易关闭','其他原因','1404046902');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('14','3','seller','等待买家付款','交易关闭','其他原因','1404046902');
INSERT INTO ecm_order_log ( `log_id`, `order_id`, `operator`, `order_status`, `changed_status`, `remark`, `log_time` ) VALUES  ('15','4','seller','等待买家付款','交易关闭','其他原因','1404046902');
DROP TABLE IF EXISTS ecm_pageview;
CREATE TABLE ecm_pageview (
  rec_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  view_date date NOT NULL default '0000-00-00',
  view_times int(10) unsigned NOT NULL default '1',
  PRIMARY KEY  (rec_id),
  UNIQUE KEY storedate (store_id,view_date)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_partner;
CREATE TABLE ecm_partner (
  partner_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  title varchar(100) NOT NULL default '',
  link varchar(255) NOT NULL default '',
  logo varchar(255) default NULL,
  sort_order tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (partner_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_payment;
CREATE TABLE ecm_payment (
  payment_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  payment_code varchar(20) NOT NULL default '',
  payment_name varchar(100) NOT NULL default '',
  payment_desc varchar(255) default NULL,
  config text,
  is_online tinyint(3) unsigned NOT NULL default '1',
  enabled tinyint(3) unsigned NOT NULL default '1',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (payment_id),
  KEY store_id (store_id),
  KEY payment_code (payment_code)
) TYPE=MyISAM;
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('6','2','cod','货到付款','','','0','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('5','2','alipayplat','支付宝平台支付','','a:2:{s:18:\"alipayplat_account\";s:17:\"mhl198596@163.com\";s:5:\"pcode\";s:0:\"\";}','1','1','0');
INSERT INTO ecm_payment ( `payment_id`, `store_id`, `payment_code`, `payment_name`, `payment_desc`, `config`, `is_online`, `enabled`, `sort_order` ) VALUES  ('4','2','alipayfree','支付宝免签接口','','a:2:{s:18:\"alipayfree_account\";s:17:\"mhl198596@163.com\";s:5:\"pcode\";s:0:\"\";}','1','1','0');
DROP TABLE IF EXISTS ecm_privilege;
CREATE TABLE ecm_privilege (
  priv_code varchar(20) NOT NULL default '',
  priv_name varchar(60) NOT NULL default '',
  parent_code varchar(20) default NULL,
  owner varchar(10) NOT NULL default 'mall',
  PRIMARY KEY  (priv_code)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_recommend;
CREATE TABLE ecm_recommend (
  recom_id int(10) unsigned NOT NULL auto_increment,
  recom_name varchar(100) NOT NULL default '',
  store_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (recom_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_recommend ( `recom_id`, `recom_name`, `store_id` ) VALUES  ('1','果蔬','0');
INSERT INTO ecm_recommend ( `recom_id`, `recom_name`, `store_id` ) VALUES  ('2','酒水','0');
DROP TABLE IF EXISTS ecm_recommended_goods;
CREATE TABLE ecm_recommended_goods (
  recom_id int(10) unsigned NOT NULL default '0',
  goods_id int(10) unsigned NOT NULL default '0',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (recom_id,goods_id)
) TYPE=MyISAM;
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','27','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','26','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','25','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','24','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','23','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','22','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','21','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','20','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','19','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','18','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','17','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('2','16','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','15','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','14','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','13','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','12','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','11','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','10','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','9','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','8','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','7','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','6','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','5','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','4','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','3','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','2','255');
INSERT INTO ecm_recommended_goods ( `recom_id`, `goods_id`, `sort_order` ) VALUES  ('1','1','255');
DROP TABLE IF EXISTS ecm_region;
CREATE TABLE ecm_region (
  region_id int(10) unsigned NOT NULL auto_increment,
  region_name varchar(100) NOT NULL default '',
  parent_id int(10) unsigned NOT NULL default '0',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (region_id),
  KEY parent_id (parent_id)
) TYPE=MyISAM;
INSERT INTO ecm_region ( `region_id`, `region_name`, `parent_id`, `sort_order` ) VALUES  ('1','中国','0','255');
DROP TABLE IF EXISTS ecm_scategory;
CREATE TABLE ecm_scategory (
  cate_id int(10) unsigned NOT NULL auto_increment,
  cate_name varchar(100) NOT NULL default '',
  parent_id int(10) unsigned NOT NULL default '0',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (cate_id),
  KEY parent_id (parent_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_sessions;
CREATE TABLE ecm_sessions (
  sesskey char(32) NOT NULL default '',
  expiry int(11) NOT NULL default '0',
  userid int(11) NOT NULL default '0',
  adminid int(11) NOT NULL default '0',
  ip char(15) NOT NULL default '',
  `data` char(255) NOT NULL default '',
  is_overflow tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (sesskey),
  KEY expiry (expiry)
) TYPE=MyISAM;
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('791bcb097fd4220ac156465f8df8c26f','1404246005','0','0','175.167.152.46','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1404242831\";s:10:\"last_login\";N;s:7:\"last_ip\";N;}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('362541297db54ff32c1a4ff45e277ddf','1404246012','0','0','175.167.152.46','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('2a4f226b621148f882feabce0e136141','1404246112','0','0','175.167.152.46','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1404132439\";s:7:\"last_ip\";s:9:\"127.0.0.1\";}','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0c75d797d9d34eea7c299e9ff0806c23','1404261791','0','0','175.167.136.16','user_info|a:6:{s:7:\"user_id\";s:1:\"2\";s:9:\"user_name\";s:6:\"seller\";s:8:\"reg_time\";s:10:\"1388031020\";s:10:\"last_login\";s:10:\"1404130666\";s:7:\"last_ip\";s:9:\"127.0.0.1\";s:8:\"store_id\";s:1:\"2\";}member_role|s:12:\"seller_admin\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('11e1730cf62bb007a6b09b1d65360149','1404246408','0','0','101.226.62.83','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('e9722c0c29335dd56d2c638a30caab36','1404246528','0','0','103.7.30.82','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('817d00d7ed7337870dc2254948970073','1404246547','0','0','103.7.30.82','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0f8dca3d81e2c141923604351f9384bd','1404247182','0','0','220.249.163.181','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('69fbebe37cb68218a0f48b16187bd17d','1404247350','0','0','103.7.30.82','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('16b1c59b77806f8a91cfe3254475bfcf','1404247439','0','0','220.249.163.181','user_openid|s:28:\"oDX64t2MyMVKgjrtdPDDcxzhIvyw\";store_openid|s:15:\"gh_ed6d1a2f98be\";wx_store_id|s:1:\"2\";','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7cd8c50b7848ee2238c8f4e998c1f22c','1404247405','0','0','14.17.29.92','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('c06d1a707efdee8e342d2b5dd98f891c','1404247432','0','0','14.17.29.92','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('d8dd344a31b304ab6da0a3cb3d0daaa5','1404255473','0','0','223.81.197.15','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('4f51cbd5b450722c34ca76a6109c4087','1404257884','0','0','113.117.200.176','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('aded1297eb073419895890e44c1e4c39','1404260671','0','0','103.7.30.82','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('fba06560a803aaf117126e38d3813acf','1404261701','0','0','220.249.163.181','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('71376c5981b6ae8df12dc9e6b4d47fa1','1404261334','0','0','183.60.62.44','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('9c0701cc743c0a08703155a8d552640d','1404261336','0','0','183.60.62.44','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('227ba7d0d0890910bd5c468e7874db89','1404261703','0','0','103.7.30.82','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('0a513684b16fab6a147427bdaeffb385','1404261705','0','0','220.249.163.181','','0');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('3a034f56c51258cc7e8f067b41ba11e7','1404261928','0','0','220.249.163.181','','1');
INSERT INTO ecm_sessions ( `sesskey`, `expiry`, `userid`, `adminid`, `ip`, `data`, `is_overflow` ) VALUES  ('7345b9d8b831fada52f0c4f740345888','1404261981','0','0','175.167.136.16','admin_info|a:5:{s:7:\"user_id\";s:1:\"1\";s:9:\"user_name\";s:5:\"admin\";s:8:\"reg_time\";s:10:\"1388016632\";s:10:\"last_login\";s:10:\"1404244616\";s:7:\"last_ip\";s:14:\"175.167.152.46\";}','0');
DROP TABLE IF EXISTS ecm_sessions_data;
CREATE TABLE ecm_sessions_data (
  sesskey varchar(32) NOT NULL default '',
  expiry int(11) NOT NULL default '0',
  `data` longtext NOT NULL,
  PRIMARY KEY  (sesskey),
  KEY expiry (expiry)
) TYPE=MyISAM;
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('0f8dca3d81e2c141923604351f9384bd','1404247182','user_openid|s:28:\"oDX64t87LTGSzSw3NaJqT3c6qTnM\";store_openid|s:15:\"gh_ed6d1a2f98be\";wx_store_id|s:1:\"2\";user_info|a:6:{s:7:\"user_id\";s:2:\"15\";s:9:\"user_name\";s:6:\"111111\";s:8:\"reg_time\";s:10:\"1404245563\";s:10:\"last_login\";N;s:7:\"last_ip\";N;s:8:\"store_id\";N;}ASYNC_SENDMAIL|b:1;');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('fba06560a803aaf117126e38d3813acf','1404261701','user_openid|s:28:\"oDX64t2MyMVKgjrtdPDDcxzhIvyw\";store_openid|s:15:\"gh_ed6d1a2f98be\";wx_store_id|s:1:\"2\";user_info|a:6:{s:7:\"user_id\";s:2:\"16\";s:9:\"user_name\";s:6:\"159369\";s:8:\"reg_time\";s:10:\"1404260167\";s:10:\"last_login\";N;s:7:\"last_ip\";N;s:8:\"store_id\";N;}');
INSERT INTO ecm_sessions_data ( `sesskey`, `expiry`, `data` ) VALUES  ('3a034f56c51258cc7e8f067b41ba11e7','1404261928','user_info|a:6:{s:7:\"user_id\";s:2:\"15\";s:9:\"user_name\";s:6:\"111111\";s:8:\"reg_time\";s:10:\"1404245563\";s:10:\"last_login\";s:10:\"1404245563\";s:7:\"last_ip\";s:15:\"220.249.163.181\";s:8:\"store_id\";N;}user_openid|s:28:\"odx64t2mymvkgjrtdpddcxzhivyw\";store_openid|s:15:\"gh_ed6d1a2f98be\";wx_store_id|s:1:\"2\";');
DROP TABLE IF EXISTS ecm_sgrade;
CREATE TABLE ecm_sgrade (
  grade_id tinyint(3) unsigned NOT NULL auto_increment,
  grade_name varchar(60) NOT NULL default '',
  goods_limit int(10) unsigned NOT NULL default '0',
  space_limit int(10) unsigned NOT NULL default '0',
  skin_limit int(10) unsigned NOT NULL default '0',
  charge varchar(100) NOT NULL default '',
  need_confirm tinyint(3) unsigned NOT NULL default '0',
  description varchar(255) NOT NULL default '',
  functions varchar(255) default NULL,
  skins text NOT NULL,
  sort_order tinyint(4) unsigned NOT NULL default '0',
  wapskin_limit int(10) unsigned NOT NULL default '0',
  wapskins text NOT NULL,
  PRIMARY KEY  (grade_id)
) TYPE=MyISAM;
INSERT INTO ecm_sgrade ( `grade_id`, `grade_name`, `goods_limit`, `space_limit`, `skin_limit`, `charge`, `need_confirm`, `description`, `functions`, `skins`, `sort_order`, `wapskin_limit`, `wapskins` ) VALUES  ('1','系统默认','5','2','10','100元/年','0','测试用户请选择“默认等级”，可以立即开通。',null,'default|default,default|style1,default|style2,default|style3,default|style4,default|style5,default|style6,default|style7,default|style8,moolau|default','255','24','default|default,default10|default,default11|default,default12|default,default13|default,default14|default,default15|default,default16|default,default17|default,default18|default,default19|default,default2|default,default20|default,default21|default,default22|default,default23|default,default24|default,default3|default,default4|default,default5|default,default6|default,default7|default,default8|default,default9|default');
INSERT INTO ecm_sgrade ( `grade_id`, `grade_name`, `goods_limit`, `space_limit`, `skin_limit`, `charge`, `need_confirm`, `description`, `functions`, `skins`, `sort_order`, `wapskin_limit`, `wapskins` ) VALUES  ('2','旗舰店','0','0','10','','1','','editor_multimedia,coupon,groupbuy,enable_radar','default|default,default|style1,default|style2,default|style3,default|style4,default|style5,default|style6,default|style7,default|style8,moolau|default','255','24','default|default,default10|default,default11|default,default12|default,default13|default,default14|default,default15|default,default16|default,default17|default,default18|default,default19|default,default2|default,default20|default,default21|default,default22|default,default23|default,default24|default,default3|default,default4|default,default5|default,default6|default,default7|default,default8|default,default9|default');
DROP TABLE IF EXISTS ecm_shipping;
CREATE TABLE ecm_shipping (
  shipping_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  shipping_name varchar(100) NOT NULL default '',
  shipping_desc varchar(255) default NULL,
  first_price decimal(10,2) NOT NULL default '0.00',
  step_price decimal(10,2) NOT NULL default '0.00',
  cod_regions text,
  enabled tinyint(3) unsigned NOT NULL default '1',
  sort_order tinyint(3) unsigned NOT NULL default '255',
  PRIMARY KEY  (shipping_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_shipping ( `shipping_id`, `store_id`, `shipping_name`, `shipping_desc`, `first_price`, `step_price`, `cod_regions`, `enabled`, `sort_order` ) VALUES  ('1','2','快递','','0.00','0.00','a:1:{i:1;s:6:\"中国\";}','1','255');
INSERT INTO ecm_shipping ( `shipping_id`, `store_id`, `shipping_name`, `shipping_desc`, `first_price`, `step_price`, `cod_regions`, `enabled`, `sort_order` ) VALUES  ('2','2','普通快递','','0.00','0.00',null,'1','255');
DROP TABLE IF EXISTS ecm_store;
CREATE TABLE ecm_store (
  store_id int(10) unsigned NOT NULL default '0',
  store_name varchar(100) NOT NULL default '',
  owner_name varchar(60) NOT NULL default '',
  owner_card varchar(60) NOT NULL default '',
  region_id int(10) unsigned default NULL,
  region_name varchar(100) default NULL,
  address varchar(255) NOT NULL default '',
  zipcode varchar(20) NOT NULL default '',
  tel varchar(60) NOT NULL default '',
  sgrade tinyint(3) unsigned NOT NULL default '0',
  apply_remark varchar(255) NOT NULL default '',
  credit_value int(10) NOT NULL default '0',
  praise_rate decimal(5,2) unsigned NOT NULL default '0.00',
  domain varchar(60) default NULL,
  state tinyint(3) unsigned NOT NULL default '0',
  close_reason varchar(255) NOT NULL default '',
  add_time int(10) unsigned default NULL,
  end_time int(10) unsigned NOT NULL default '0',
  certification varchar(255) default NULL,
  sort_order smallint(5) unsigned NOT NULL default '0',
  recommended tinyint(4) NOT NULL default '0',
  theme varchar(60) NOT NULL default '',
  store_banner varchar(255) default NULL,
  store_logo varchar(255) default NULL,
  description text,
  image_1 varchar(255) NOT NULL default '',
  image_2 varchar(255) NOT NULL default '',
  image_3 varchar(255) NOT NULL default '',
  im_qq varchar(60) NOT NULL default '',
  im_ww varchar(60) NOT NULL default '',
  im_msn varchar(60) NOT NULL default '',
  hot_search varchar(255) NOT NULL,
  business_scope varchar(50) NOT NULL,
  online_service varchar(255) NOT NULL,
  hotline varchar(255) NOT NULL,
  pic_slides text NOT NULL,
  enable_groupbuy tinyint(1) unsigned NOT NULL default '0',
  enable_radar tinyint(1) unsigned NOT NULL default '1',
  waptheme varchar(60) NOT NULL default '',
  pic_slides_wap text NOT NULL,
  PRIMARY KEY  (store_id),
  KEY store_name (store_name),
  KEY owner_name (owner_name),
  KEY region_id (region_id),
  KEY domain (domain)
) TYPE=MyISAM;
INSERT INTO ecm_store ( `store_id`, `store_name`, `owner_name`, `owner_card`, `region_id`, `region_name`, `address`, `zipcode`, `tel`, `sgrade`, `apply_remark`, `credit_value`, `praise_rate`, `domain`, `state`, `close_reason`, `add_time`, `end_time`, `certification`, `sort_order`, `recommended`, `theme`, `store_banner`, `store_logo`, `description`, `image_1`, `image_2`, `image_3`, `im_qq`, `im_ww`, `im_msn`, `hot_search`, `business_scope`, `online_service`, `hotline`, `pic_slides`, `enable_groupbuy`, `enable_radar`, `waptheme`, `pic_slides_wap` ) VALUES  ('2','晓晓微营','超级店家','','0','','','','88888888','2','','0','0.00','','1','','1388031275','0','','65535','0','default|style4',null,'data/files/store_2/other/store_logo.jpg','','','','','','','','','','','','','1','0','default9|default','{\"1\":{\"url\":\"data/files/store_2/pic_slides_wap/pic_slides_wap_1.jpg\",\"link\":\"\"},\"2\":{\"url\":\"data/files/store_2/pic_slides_wap/pic_slides_wap_2.jpg\",\"link\":\"\"},\"3\":{\"url\":\"data/files/store_2/pic_slides_wap/pic_slides_wap_3.png\",\"link\":\"\"}}');
DROP TABLE IF EXISTS ecm_ultimate_store;
CREATE TABLE ecm_ultimate_store (
  ultimate_id int(255) NOT NULL auto_increment,
  brand_id int(50) NOT NULL,
  keyword varchar(20) NOT NULL,
  cate_id int(50) NOT NULL,
  store_id int(50) NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  description varchar(255) default NULL,
  PRIMARY KEY  (ultimate_id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_uploaded_file;
CREATE TABLE ecm_uploaded_file (
  file_id int(10) unsigned NOT NULL auto_increment,
  store_id int(10) unsigned NOT NULL default '0',
  file_type varchar(60) NOT NULL default '',
  file_size int(10) unsigned NOT NULL default '0',
  file_name varchar(255) NOT NULL default '',
  file_path varchar(255) NOT NULL default '',
  add_time int(10) unsigned NOT NULL default '0',
  belong tinyint(3) unsigned NOT NULL default '0',
  item_id int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (file_id),
  KEY store_id (store_id)
) TYPE=MyISAM;
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('1','2','image/jpeg','24997','11.jpg','data/files/store_2/goods_110/201312262048304586.jpg','1388033310','2','1');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('2','2','image/jpeg','20215','1.jpg','data/files/store_2/goods_198/201312262049586818.jpg','1388033398','2','2');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('3','2','image/jpeg','10477','2.jpg','data/files/store_2/goods_148/201312262052284448.jpg','1388033548','2','3');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('4','2','image/jpeg','30595','17.jpg','data/files/store_2/goods_57/201312262054174988.jpg','1388033657','2','4');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('5','2','image/jpeg','26733','4.jpg','data/files/store_2/goods_99/201312262054594117.jpg','1388033699','2','5');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('6','2','image/jpeg','23051','5.jpg','data/files/store_2/goods_136/201312262055366831.jpg','1388033736','2','6');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('7','2','image/jpeg','19535','6.jpg','data/files/store_2/goods_180/201312262056209107.jpg','1388033780','2','7');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('8','2','image/jpeg','23943','18.jpg','data/files/store_2/goods_63/201312262057435880.jpg','1388033863','2','8');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('9','2','image/jpeg','28884','19.jpg','data/files/store_2/goods_120/201312262058402887.jpg','1388033920','2','9');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('10','2','image/jpeg','27780','20.jpg','data/files/store_2/goods_31/201312262100319871.jpg','1388034031','2','10');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('11','2','image/jpeg','23463','21.jpg','data/files/store_2/goods_75/201312262101158858.jpg','1388034075','2','11');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('12','2','image/jpeg','34652','22.jpg','data/files/store_2/goods_144/201312262102246687.jpg','1388034144','2','12');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('13','2','image/jpeg','36655','23.jpg','data/files/store_2/goods_2/201312262103227833.jpg','1388034202','2','13');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('14','2','image/jpeg','45682','24.jpg','data/files/store_2/goods_77/201312262104371080.jpg','1388034277','2','14');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('15','2','image/jpeg','22513','25.jpg','data/files/store_2/goods_153/201312262105539118.jpg','1388034353','2','15');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('16','2','image/jpeg','7528','11.jpg','data/files/store_2/goods_69/201312262107499378.jpg','1388034469','2','16');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('17','2','image/jpeg','8244','7.jpg','data/files/store_2/goods_129/201312262108507192.jpg','1388034530','2','17');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('18','2','image/jpeg','8244','12.jpg','data/files/store_2/goods_130/201312262108508363.jpg','1388034530','2','17');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('19','2','image/jpeg','3882','1.jpg','data/files/store_2/goods_166/201312262109269656.jpg','1388034566','2','18');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('20','2','image/jpeg','5181','13.jpg','data/files/store_2/goods_28/201312262110282113.jpg','1388034628','2','19');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('21','2','image/jpeg','5409','10.jpg','data/files/store_2/goods_51/201312262110515808.jpg','1388034651','2','20');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('22','2','image/jpeg','12915','4.jpg','data/files/store_2/goods_124/201312262112041198.jpg','1388034724','2','21');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('23','2','image/jpeg','3722','14.jpg','data/files/store_2/goods_6/201312262113269791.jpg','1388034806','2','22');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('24','2','image/jpeg','4298','15.jpg','data/files/store_2/goods_71/201312262114315846.jpg','1388034871','2','23');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('25','2','image/jpeg','4214','16.jpg','data/files/store_2/goods_141/201312262115417011.jpg','1388034941','2','24');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('26','2','image/jpeg','3175','17.jpg','data/files/store_2/goods_3/201312262116433996.jpg','1388035003','2','25');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('27','2','image/jpeg','3183','18.jpg','data/files/store_2/goods_86/201312262118061068.jpg','1388035086','2','26');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('28','2','image/jpeg','3738','20.jpg','data/files/store_2/goods_160/201312262119204138.jpg','1388035160','2','27');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('29','2','image/jpeg','22614','1.jpg','data/files/store_2/goods_92/201312262134527551.jpg','1388036092','2','28');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('30','2','image/jpeg','4651','2.jpg','data/files/store_2/goods_192/201312262136326387.jpg','1388036192','2','29');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('31','2','image/jpeg','5193','3.jpg','data/files/store_2/goods_111/201312262138315559.jpg','1388036311','2','30');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('32','2','image/jpeg','7813','4.jpg','data/files/store_2/goods_189/201312262139497936.jpg','1388036389','2','31');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('33','2','image/jpeg','7482','5.jpg','data/files/store_2/goods_62/201312262141025440.jpg','1388036462','2','32');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('34','2','image/jpeg','8243','6.jpg','data/files/store_2/goods_125/201312262142056946.jpg','1388036525','2','33');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('35','2','image/jpeg','3963','7.jpg','data/files/store_2/goods_185/201312262143054186.jpg','1388036585','2','34');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('36','2','image/jpeg','5256','8.jpg','data/files/store_2/goods_42/201312262144021189.jpg','1388036642','2','35');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('37','2','image/jpeg','6068','9.jpg','data/files/store_2/goods_113/201312262145134866.jpg','1388036713','2','36');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('38','2','image/jpeg','8551','10.jpg','data/files/store_2/goods_7/201312262146474624.jpg','1388036807','2','37');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('39','2','image/jpeg','7321','11.jpg','data/files/store_2/goods_80/201312262148001815.jpg','1388036880','2','38');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('40','2','image/jpeg','7458','12.jpg','data/files/store_2/goods_139/201312262148598688.jpg','1388036939','2','39');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('41','2','image/jpeg','6194','1.jpg','data/files/store_2/goods_95/201312262151359791.jpg','1388037095','2','40');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('42','2','image/jpeg','6490','2.jpg','data/files/store_2/goods_130/201312262152104798.jpg','1388037130','2','41');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('43','2','image/jpeg','5413','10.jpg','data/files/store_2/goods_47/201312262154079508.jpg','1388037247','2','42');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('44','2','image/jpeg','3838','9.jpg','data/files/store_2/goods_93/201312262154537504.jpg','1388037293','2','43');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('45','2','image/jpeg','6404','8.jpg','data/files/store_2/goods_144/201312262155447040.jpg','1388037344','2','44');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('46','2','image/jpeg','4834','7.jpg','data/files/store_2/goods_178/201312262156186146.jpg','1388037378','2','45');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('47','2','image/jpeg','3554','6.jpg','data/files/store_2/goods_11/201312262156516537.jpg','1388037411','2','46');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('48','2','image/jpeg','4718','5.jpg','data/files/store_2/goods_76/201312262157569987.jpg','1388037476','2','47');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('49','2','image/jpeg','7169','4.jpg','data/files/store_2/goods_111/201312262158319438.jpg','1388037511','2','48');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('50','2','image/jpeg','7562','3.jpg','data/files/store_2/goods_162/201312262159227323.jpg','1388037562','2','49');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('51','2','image/jpeg','3459','1.jpg','data/files/store_2/goods_127/201312262205276887.jpg','1388037927','2','50');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('52','2','image/jpeg','4313','2.jpg','data/files/store_2/goods_173/201312262206139520.jpg','1388037973','2','51');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('53','2','image/jpeg','5663','10.jpg','data/files/store_2/goods_72/201312262207528762.jpg','1388038072','2','52');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('54','2','image/jpeg','3133','8.jpg','data/files/store_2/goods_102/201312262208227300.jpg','1388038102','2','53');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('55','2','image/jpeg','4162','7.jpg','data/files/store_2/goods_135/201312262208557042.jpg','1388038135','2','54');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('56','2','image/jpeg','4026','6.jpg','data/files/store_2/goods_176/201312262209361435.jpg','1388038176','2','55');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('57','2','image/jpeg','3616','5.jpg','data/files/store_2/goods_16/201312262210162177.jpg','1388038216','2','56');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('58','2','image/jpeg','3215','4.jpg','data/files/store_2/goods_57/201312262210575290.jpg','1388038257','2','57');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('59','2','image/jpeg','4460','3.jpg','data/files/store_2/goods_106/201312262211467126.jpg','1388038306','2','58');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('60','2','image/jpeg','4313','2.jpg','data/files/store_2/goods_152/201312262212327144.jpg','1388038352','2','59');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('61','2','image/jpeg','2805','13.jpg','data/files/store_2/goods_90/201312262218109004.jpg','1388038690','2','60');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('62','2','image/jpeg','3275','12.jpg','data/files/store_2/goods_114/201312262218342575.jpg','1388038714','2','61');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('63','2','image/jpeg','3669','11.jpg','data/files/store_2/goods_153/201312262219138421.jpg','1388038753','2','62');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('64','2','image/jpeg','4071','10.jpg','data/files/store_2/goods_6/201312262220067431.jpg','1388038806','2','63');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('65','2','image/jpeg','5055','9.jpg','data/files/store_2/goods_41/201312262220415407.jpg','1388038841','2','64');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('66','2','image/jpeg','5600','8.jpg','data/files/store_2/goods_143/201312262222237668.jpg','1388038943','2','65');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('67','2','image/jpeg','6940','7.jpg','data/files/store_2/goods_186/201312262223061143.jpg','1388038986','2','66');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('68','2','image/jpeg','2975','4.jpg','data/files/store_2/goods_26/201312262223464846.jpg','1388039026','2','67');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('70','2','image/jpeg','7663','2.jpg','data/files/store_2/goods_91/201312262224518849.jpg','1388039091','2','68');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('71','2','image/jpeg','20600','1.jpg','data/files/store_2/goods_131/201312262225311490.jpg','1388039131','2','69');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('72','2','image/jpeg','5494','14.jpg','data/files/store_2/goods_195/201312262233156335.jpg','1388039595','2','70');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('73','2','image/jpeg','4568','13.jpg','data/files/store_2/goods_44/201312262234045839.jpg','1388039644','2','71');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('74','2','image/jpeg','4815','15.jpg','data/files/store_2/goods_113/201312262235137180.jpg','1388039713','2','72');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('75','2','image/jpeg','7724','12.jpg','data/files/store_2/goods_142/201312262235429182.jpg','1388039742','2','73');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('76','2','image/jpeg','5780','11.jpg','data/files/store_2/goods_189/201312262236298305.jpg','1388039789','2','74');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('77','2','image/jpeg','4531','10.jpg','data/files/store_2/goods_38/201312262237189780.jpg','1388039838','2','75');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('78','2','image/jpeg','5618','9.jpg','data/files/store_2/goods_98/201312262238182827.jpg','1388039898','2','76');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('79','2','image/jpeg','5837','8.jpg','data/files/store_2/goods_179/201312262239393163.jpg','1388039979','2','77');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('80','2','image/jpeg','6297','7.jpg','data/files/store_2/goods_54/201312262240547284.jpg','1388040054','2','78');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('81','2','image/jpeg','8033','5.jpg','data/files/store_2/goods_97/201312262241379970.jpg','1388040097','2','79');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('82','2','image/jpeg','18566','3.jpg','data/files/store_2/goods_156/201312262242365477.jpg','1388040156','2','80');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('83','2','image/jpeg','4161','1.jpg','data/files/store_2/goods_111/201312262251512164.jpg','1388040711','2','81');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('84','2','image/jpeg','3634','2.jpg','data/files/store_2/goods_9/201312262253293800.jpg','1388040809','2','82');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('85','2','image/jpeg','4660','3.jpg','data/files/store_2/goods_80/201312262254404774.jpg','1388040880','2','83');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('86','2','image/jpeg','3408','4.jpg','data/files/store_2/goods_155/201312262255558436.jpg','1388040955','2','84');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('87','2','image/jpeg','3648','6.jpg','data/files/store_2/goods_6/201312262256466045.jpg','1388041006','2','85');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('88','2','image/jpeg','5751','5.jpg','data/files/store_2/goods_49/201312262257294186.jpg','1388041049','2','86');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('89','2','image/jpeg','5358','7.jpg','data/files/store_2/goods_86/201312262258066317.jpg','1388041086','2','87');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('90','2','image/jpeg','3272','8.jpg','data/files/store_2/goods_124/201312262258442397.jpg','1388041124','2','88');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('91','2','image/jpeg','4355','9.jpg','data/files/store_2/goods_180/201312262259401924.jpg','1388041180','2','89');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('92','2','image/jpeg','5002','19.jpg','data/files/store_2/goods_60/201312262301006712.jpg','1388041260','2','90');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('93','2','image/jpeg','4741','11.jpg','data/files/store_2/goods_155/201312262302356953.jpg','1388041355','2','91');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('94','2','image/jpeg','3574','12.jpg','data/files/store_2/goods_3/201312262303231812.jpg','1388041403','2','92');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('95','2','image/jpeg','4538','13.jpg','data/files/store_2/goods_48/201312262304085587.jpg','1388041448','2','93');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('96','2','image/jpeg','4219','14.jpg','data/files/store_2/goods_93/201312262304537590.jpg','1388041493','2','94');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('97','2','image/jpeg','5472','15.jpg','data/files/store_2/goods_134/201312262305341913.jpg','1388041534','2','95');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('98','2','image/jpeg','4271','16.jpg','data/files/store_2/goods_170/201312262306104597.jpg','1388041570','2','96');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('99','2','image/jpeg','4039','17.jpg','data/files/store_2/goods_27/201312262307078496.jpg','1388041627','2','97');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('101','2','image/jpeg','4000','20.jpg','data/files/store_2/goods_107/201312262308271759.jpg','1388041707','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('102','2','image/jpeg','3351','18.jpg','data/files/store_2/goods_113/201312262308337745.jpg','1388041713','2','98');
INSERT INTO ecm_uploaded_file ( `file_id`, `store_id`, `file_type`, `file_size`, `file_name`, `file_path`, `add_time`, `belong`, `item_id` ) VALUES  ('103','2','image/jpeg','4201','21.jpg','data/files/store_2/goods_154/201312262309145699.jpg','1388041754','2','98');
DROP TABLE IF EXISTS ecm_user_coupon;
CREATE TABLE ecm_user_coupon (
  user_id int(10) unsigned NOT NULL,
  coupon_sn varchar(20) NOT NULL,
  PRIMARY KEY  (user_id,coupon_sn)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_user_priv;
CREATE TABLE ecm_user_priv (
  user_id int(10) unsigned NOT NULL default '0',
  store_id int(10) unsigned NOT NULL default '0',
  privs text NOT NULL,
  PRIMARY KEY  (user_id,store_id)
) TYPE=MyISAM;
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('1','0','all');
INSERT INTO ecm_user_priv ( `user_id`, `store_id`, `privs` ) VALUES  ('2','2','all');
DROP TABLE IF EXISTS ecm_wxconfig;
CREATE TABLE ecm_wxconfig (
  w_id int(11) unsigned NOT NULL auto_increment,
  user_id int(11) NOT NULL,
  url varchar(255) NOT NULL,
  token varchar(255) NOT NULL,
  appid varchar(255) default NULL,
  appsecret varchar(255) default NULL,
  PRIMARY KEY  (w_id)
) TYPE=MyISAM;
INSERT INTO ecm_wxconfig ( `w_id`, `user_id`, `url`, `token`, `appid`, `appsecret` ) VALUES  ('1','2','http://mall.xxtwy.com/index.php?app=weixin&id=2','HozPPVPg',null,null);
DROP TABLE IF EXISTS ecm_wxfile;
CREATE TABLE ecm_wxfile (
  file_id int(11) NOT NULL auto_increment,
  user_id int(11) NOT NULL,
  file_type varchar(60) NOT NULL,
  file_size int(10) NOT NULL default '0',
  file_name varchar(255) NOT NULL,
  file_path varchar(255) NOT NULL,
  PRIMARY KEY  (file_id)
) TYPE=MyISAM;
INSERT INTO ecm_wxfile ( `file_id`, `user_id`, `file_type`, `file_size`, `file_name`, `file_path` ) VALUES  ('4','2','image/png','11903','site_logo2.png','data/files/mall/weixin/201406301246351336.png');
DROP TABLE IF EXISTS ecm_wxkeyword;
CREATE TABLE ecm_wxkeyword (
  kid int(11) unsigned NOT NULL auto_increment,
  user_id int(11) NOT NULL,
  kename varchar(300) default NULL,
  kecontent varchar(500) default NULL,
  `type` tinyint(1) NOT NULL COMMENT '1:文本 2：图文',
  kyword varchar(255) default NULL,
  titles varchar(1000) default NULL,
  imageinfo varchar(1000) default NULL,
  linkinfo varchar(1000) default NULL,
  ismess tinyint(1) default NULL,
  isfollow tinyint(1) default NULL,
  iskey tinyint(1) default NULL,
  PRIMARY KEY  (kid)
) TYPE=MyISAM;
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('1','2',null,'','2',null,'a:1:{i:0;s:12:\"晓晓微营\";}','a:1:{i:0;s:45:\"data/files/mall/weixin/201406301246351336.png\";}','a:1:{i:0;s:46:\"http://mall.xxtwy.com/index.php?app=store&id=2\";}',null,'1',null);
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('2','2','店铺','','2','店铺','a:2:{i:0;s:36:\"欢迎来到微创动力微信商城\";i:1;s:63:\"这是测试商品链接，点击这里测试在微信上购买\";}','a:2:{i:0;s:45:\"data/files/mall/weixin/201405180019414078.jpg\";i:1;s:45:\"data/files/mall/weixin/201405180020284667.gif\";}','a:2:{i:0;s:48:\"http://vmall.vchuang.cn/index.php?app=store&id=2\";i:1;s:49:\"http://vmall.vchuang.cn/index.php?app=goods&id=99\";}',null,null,'1');
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('3','2','商城','','2','商城','a:1:{i:0;s:18:\"这是商城首页\";}','a:1:{i:0;s:45:\"data/files/mall/weixin/201405180019414078.jpg\";}','a:1:{i:0;s:23:\"http://vmall.vchuang.cn\";}',null,null,'1');
INSERT INTO ecm_wxkeyword ( `kid`, `user_id`, `kename`, `kecontent`, `type`, `kyword`, `titles`, `imageinfo`, `linkinfo`, `ismess`, `isfollow`, `iskey` ) VALUES  ('4','2',null,'','2',null,'a:1:{i:0;s:12:\"晓晓微营\";}','a:1:{i:0;s:45:\"data/files/mall/weixin/201406301246351336.png\";}','a:1:{i:0;s:46:\"http://mall.xxtwy.com/index.php?app=store&id=2\";}','1',null,null);
DROP TABLE IF EXISTS ecm_wxmenu;
CREATE TABLE ecm_wxmenu (
  id smallint(4) unsigned NOT NULL auto_increment,
  user_id int(10) unsigned NOT NULL default '0',
  `name` varchar(50) NOT NULL,
  tags varchar(50) default NULL,
  pid smallint(4) unsigned NOT NULL default '0',
  spid varchar(50) default NULL,
  add_time int(10) NOT NULL default '0',
  items int(10) unsigned NOT NULL default '0',
  likes varchar(100) default NULL,
  weixin_type tinyint(1) unsigned NOT NULL default '0' COMMENT '0:click 1:viwe',
  ordid tinyint(3) unsigned NOT NULL default '255',
  weixin_status tinyint(1) NOT NULL default '0',
  weixin_keyword varchar(255) default NULL COMMENT '关键词',
  weixin_key varchar(255) default NULL COMMENT 'key值',
  PRIMARY KEY  (id)
) TYPE=MyISAM;
DROP TABLE IF EXISTS ecm_wxrelation;
CREATE TABLE ecm_wxrelation (
  relation_id int(11) unsigned NOT NULL auto_increment,
  user_id int(10) unsigned NOT NULL,
  user_openid varchar(65) NOT NULL,
  store_id int(10) unsigned NOT NULL,
  store_openid varchar(65) NOT NULL,
  creat_time int(10) unsigned NOT NULL default '0',
  update_time int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (relation_id)
) TYPE=MyISAM;
INSERT INTO ecm_wxrelation ( `relation_id`, `user_id`, `user_openid`, `store_id`, `store_openid`, `creat_time`, `update_time` ) VALUES  ('1','15','oDX64t87LTGSzSw3NaJqT3c6qTnM','2','gh_ed6d1a2f98be','0','0');
INSERT INTO ecm_wxrelation ( `relation_id`, `user_id`, `user_openid`, `store_id`, `store_openid`, `creat_time`, `update_time` ) VALUES  ('2','16','oDX64t2MyMVKgjrtdPDDcxzhIvyw','2','gh_ed6d1a2f98be','0','0');
-- END ECMall 2.0 SQL Dump Program 