window.isClick = false

$(function() {
	// 左侧导航栏
	// function ssMenu(options) {

	// 	return this.each(function () {
	// 		var target = $(this);
	// 		var ssMenu = $(".navBar");
	// 		var Triggers = $(ssMenu).find("li");
	// 		// $(Window).click(function (e) {
	// 		// 	if ($(e.target).closest(Triggers).length) {
	// 		// 		return;
	// 		// 	}
	// 		// 	$(ssMenu).removeClass("open");
	// 		// });
	// 		// if (setting.hideOnScroll == true) {
	// 		// 	$(window).scroll(function () {
	// 		// 		if ($(this).scrollTop() > 50) {
	// 		// 			$(ssMenu).removeClass("show").addClass("hide");
	// 		// 		} else {
	// 		// 			$(ssMenu).removeClass("hide").addClass("show");
	// 		// 		}
	// 		// 	});
	// 		// }
	// 	});
	// };

	// // 监听左侧导航栏事件
	// $(document).ready(function () {
  //   $(".navBar").ssMenu();
	// });


	// ===========================页面加载进度条==============================
  NProgress.start()
  NProgress.configure({ easing: 'ease', speed: 500 })

	// ============================数据请求业务===============================
//   $.getJSON(
//     // './data/db.json',
//     'https://raw.githubusercontent.com/Kelvin4869/FrontEndNav/master/data/db.json',
//     res => {
// 			// console.log(res);
// 			// 页面渲染
//       var categoryHTML = template('CategoryId', { list: res });
//       var navItemHTML = template('navItemId', { list: res });
//       $('#navBar > ul').html(categoryHTML);
//       $('#mainContent').html(navItemHTML);

//       goTop()

//       Echo.init({
//         offset: 0,
//         throttle: 500
//       })
//       // 监听图片加载完成
//       var img_length = $('img').length
//       $('img').on('load', () => {
//         img_length--
//         if (img_length >= 1) {
//           return
//         } else {
//           NProgress.done()
//         }
//       })
//     }
//   )
	
	let resArr = [
  {
    "Category_id": "baseLearn",
    "category_CN": "学习资源",
    "category_icon": "icon-xuexizhongxin",
    "category_item": "baseLearnItem",
    "item_children": [
      {
        "child_name": "Kelvin's 前端笔记本",
        "img_src": "./img/personHead.png",
        "a_href": "https://kelvin4869.github.io/EdmPublicDist/",
        "child_desc": "个人的前端学习笔记本,记录些许有用的代码"
      },
      {
        "child_name": "Mozilla 开发者网络",
        "img_src": "./img/mozilla.jpg",
        "a_href": "https://developer.mozilla.org/zh-CN/",
        "child_desc": "MDN Web Docs 网站提供开放网络（Open Web）技术有关的信息，包括用于网站和渐进式网络应用的 HTML、CSS 和 API。"
      },
      {
        "child_name": "freeCodeCamp中文社区",
        "img_src": "./img/freecodecamp.png",
        "a_href": "https://www.freecodecamp.cn/",
        "child_desc": " 一个帮助你学习编程的开源社区,开启你的软件工程师生涯."
      },
      {
        "child_name": "学习CSS布局",
        "img_src": "./img/learnlayout.png",
        "a_href": "http://zh.learnlayout.com/",
        "child_desc": "本站教授的是现在广泛使用于网站布局领域的CSS基础。"
      },
      {
        "child_name": "WEB开发基础 — 优设网",
        "img_src": "./img/uisdc.png",
        "a_href": "http://wf.uisdc.com/cn/",
        "child_desc": "网站开发基础知识，最佳实践手册。是由谷歌发布的一个简单易懂的多设备网络开发指南。"
      },
      {
        "child_name": "菜鸟教程",
        "img_src": "./img/runoob.png",
        "a_href": "http://www.runoob.com/",
        "child_desc": "菜鸟教程,提供了编程的基础技术教程.学的不仅是技术，更是梦想！"
      },
      {
        "child_name": "w3school",
        "img_src": "./img/w3school.png",
        "a_href": "http://www.w3school.com.cn/",
        "child_desc": "w3school 在线教程 , 全球最大的中文 Web 技术教程。"
      },
      {
        "child_name": "百度前端技术学院",
        "img_src": "./img/ifebaidu.png",
        "a_href": "http://ife.baidu.com/",
        "child_desc": "百度前端技术学院是一个为大学生创办的免费的前端技术实践、分享、交平台。"
      },
      {
        "child_name": "W3-Help",
        "img_src": "./img/w3help.png",
        "a_href": "http://www.w3help.org/zh-cn/kb",
        "child_desc": "系统的介绍某些知识点，帮助开发者正确理解该知识点的概念及与其他知识点的关联性，梳理知识体系。"
      },
      {
        "child_name": "前端开发者手册",
        "img_src": "./img/frontenddevhandbook.png",
        "a_href": "https://dwqs.gitbooks.io/frontenddevhandbook/content/",
        "child_desc": "这是任何人都可以用来学习前端的实践手册, 它概述并讨论了前端工程的实践。"
      },
      {
        "child_name": "前端笔记本",
        "img_src": "./img/frontend-notebook.png",
        "a_href": "https://li-xinyang.gitbooks.io/frontend-notebook/content/?q=",
        "child_desc": "《前端笔记本》涵盖了 Web 前端开发所需的全部基本知识以及所对应的学习路径。"
      },
      {
        "child_name": "表严肃-不要水，讲干货",
        "img_src": "./img/biaoyansu.png",
        "a_href": "http://biaoyansu.com/",
        "child_desc": "基础教程视频,B站良心up主,满满的干货."
      },
      {
        "child_name": "scriptoj",
        "img_src": "./img/scriptoj.png",
        "a_href": "http://scriptoj.mangojuice.top/",
        "child_desc": "国人开发的前端题库，可以用作评测系统，带有讨论区"
      },
      {
        "child_name": "如何跟上前端开发的最新前沿",
        "img_src": "./img/frontendrescue.png",
        "a_href": "https://uptodate.frontendrescue.org/zh/",
        "child_desc": "如何跟上前端开发的最新前沿 前端开发 - The Recipe"
      },
      {
        "child_name": "HEAD",
        "img_src": "./img/head.png",
        "a_href": "https://github.com/joshbuchea/HEAD",
        "child_desc": "最全的 head 列表，真心佩服这种偏执的整理能力"
      },
      {
        "child_name": "前端开发仓库",
        "img_src": "./img/ciaoca.png",
        "a_href": "http://code.ciaoca.com/",
        "child_desc": "Web前端开发仓库，收录常用的JavaScript及jQuery插件，并提供在线演示效果。"
      },
      {
        "child_name": "learnGitBranching",
        "img_src": "./img/learnGitBranching.png",
        "a_href": "https://github.com/pcottle/learnGitBranching",
        "child_desc": "learnGitBranching是一个git仿真沙盒，提供一系列的交互式学习指导/挑战，用来加快学习git提交树如何工作。learnGitBranching的主界面左边是模拟终端窗口，另外是图示区。图示区用图形表明了git代码库当前的提交记录、分支、HEAD指向等。 目前有法语、韩语、日语以及中文版本。"
      },
      {
        "child_name": "计算机书籍控",
        "img_src": "./img/bestcbooks.png",
        "a_href": "http://bestcbooks.com/",
        "child_desc": "Best Computer Books, 整理最全最经典的计算机书籍,提供PDF下载"
      },
      {
        "child_name": "前端九部-入门者手册2019",
        "img_src": "./img/fe9.png",
        "a_href": "https://www.yuque.com/fe9/basic",
        "child_desc": "九部成员合著的web前端开发零基础入门手册"
      },
      {
        "child_name": "力扣-LeetCode",
        "img_src": "./img/leetcode.png",
        "a_href": "https://leetcode-cn.com/",
        "child_desc": "码，码不停题. 全球极客挚爱的高质量技术成长平台，想要学习和提升专业能力从这里开始，充足技术干货等你来啃，轻松拿下 Dream Offer！"
      },
      {
        "child_name": "CODE",
        "img_src": "./img/code.png",
        "a_href": "https://studio.code.org/",
        "child_desc": "适用于初级的免费游戏式编程教学"
      },
      {
        "child_name": "技术胖",
        "img_src": "./img/jspang.png",
        "a_href": "https://jspang.com/",
        "child_desc": "技术胖,该站有很多免费的前端学习视频"
      },
      {
        "child_name": "前端周刊",
        "img_src": "./img/frontenddevhandbook.png",
        "a_href": "https://frontend-weekly.com/",
        "child_desc": "前端周刊，给前端同学准备的每周1小时阅读清单"
      },
      {
        "child_name": "Git的奇技淫巧",
        "img_src": "./img/frontend-notebook.png",
        "a_href": "https://github.com/521xueweihan/git-tips",
        "child_desc": "列举了常用的 Git 命令和一些小技巧"
      }
    ]
  },
  {
    "Category_id": "apiDoc",
    "category_CN": "文档API",
    "category_icon": "icon-wendang",
    "category_item": "apiDocItem",
    "item_children": [
      {
        "child_name": "HTML5",
        "img_src": "./img/w3HTML5.png",
        "a_href": "https://www.w3.org/html/ig/zh/wiki/HTML5",
        "child_desc": "HTML5开发文档,开源(w3c组织)"
      },
      {
        "child_name": "HTML5 + API",
        "img_src": "./img/html5plus.png",
        "a_href": "http://www.html5plus.org/doc/h5p.html",
        "child_desc": "HTML5+规范,HTML5中国产业联盟"
      },
      {
        "child_name": "CSS参考手册",
        "img_src": "./img/doyoe.png",
        "a_href": "http://css.doyoe.com/",
        "child_desc": "Web前端开发人员提供最新、最全的CSS中文版在线资料，涵盖CSS3参考手册。"
      },
      {
        "child_name": "NEC(CSS规范)",
        "img_src": "./img/netease.png",
        "a_href": "http://nec.netease.com/",
        "child_desc": "NEC包括了规范、框架、代码库、插件等内容，致力于为前端开发人员提供高效率高质量的前端页面开发解决方案。"
      },
      {
        "child_name": "jQuery API 中文文档",
        "img_src": "./img/cuishifeng.jpg",
        "a_href": "http://jquery.cuishifeng.cn/index.html",
        "child_desc": "jQuery API 中文文档 | jQuery API 中文在线手册 | jquery api 载 | jquery api chm"
      },
      {
        "child_name": "vue.js中文文档",
        "img_src": "./img/vuejs.png",
        "a_href": "https://cn.vuejs.org/",
        "child_desc": "vue.js官方中文文档"
      },
      {
        "child_name": "npm 中文文档",
        "img_src": "./img/npmjs.png",
        "a_href": "https://www.npmjs.cn/",
        "child_desc": "npm 是 JavaScript 世界的包管理工具，并且是 Node.js 平台的默认包管理工具。通过 npm 可以安装、共享、分发代码，管理项目依赖关系。npm，是全球最大的开源库生态系统。"
      },
      {
        "child_name": "Node.js 中文文档",
        "img_src": "./img/nodeapp.png",
        "a_href": "https://www.nodeapp.cn/",
        "child_desc": "Node.js 是一个基于 Chrome V8 引擎的 JavaScript 运行环境。Node.js 使用了一个事件驱动、非阻塞式 I/O的模型，使其轻量又高效。Node.js 的包管理器"
      },
      {
        "child_name": "React 中文文档",
        "img_src": "./img/reactdocschina.png",
        "a_href": "https://react.docschina.org/",
        "child_desc": "用于构建用户界面的 JavaScript 库"
      },
      {
        "child_name": "React Native 中文网",
        "img_src": "./img/reactnative.png",
        "a_href": "https://reactnative.cn/",
        "child_desc": "使用JavaScript和React编写原生移动应用"
      },
      {
        "child_name": "Node.js 中文网API",
        "img_src": "./img/nodeapp.png",
        "a_href": "http://nodejs.cn/api/",
        "child_desc": "nodejs中文网中文文档"
      },
      {
        "child_name": "Flutter",
        "img_src": "./img/flutter.png",
        "a_href": "https://flutterchina.club/",
        "child_desc": "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。"
      },
      {
        "child_name": "html5 Platform",
        "img_src": "./img/platform.png",
        "a_href": "https://platform.html5.org/",
        "child_desc": "HTML5的web浏览技术图谱"
      }
    ]
  },
  {
    "Category_id": "portalsCommunity",
    "category_CN": "门户&社区",
    "category_icon": "icon-gaiicon-",
    "category_item": "portalsCommunityItem",
    "item_children": [
      {
        "child_name": "GitHub",
        "img_src": "./img/github.png",
        "a_href": "https://github.com/",
        "child_desc": "一个面向开源及私有软件项目的托管平台,全球最大同性交友网站"
      },
      {
        "child_name": "Stack Overflow",
        "img_src": "./img/StackOverflow.png",
        "a_href": "https://stackoverflow.com/",
        "child_desc": "全球最大的技术问答网站，是一个与程序相关的IT技术问答网站"
      },
      {
        "child_name": "掘金 - juejin.im",
        "img_src": "./img/juejin.png",
        "a_href": "https://juejin.im/welcome/frontend",
        "child_desc": "一个帮助开发者成长的社区"
      },
      {
        "child_name": "SegmentFault 思否",
        "img_src": "./img/segmentfault.png",
        "a_href": "https://segmentfault.com/channel/frontend",
        "child_desc": "SegmentFault 思否 为开发者提供问答、学习与交流编程知识的平台，创造属于开发者的时代！"
      },
      {
        "child_name": "前端网（QDFuns）",
        "img_src": "./img/qdfuns.png",
        "a_href": "https://www.qdfuns.com/",
        "child_desc": "WEB前端开发工程师专业网站，一站式服务平台！"
      },
      {
        "child_name": "博客园",
        "img_src": "./img/cnblogs.png",
        "a_href": "https://www.cnblogs.com/",
        "child_desc": "博客园是一个面向开发者的知识分享社区。"
      },
      {
        "child_name": "伯乐在线",
        "img_src": "./img/jobbole.png",
        "a_href": "http://web.jobbole.com/",
        "child_desc": "WEB前端 - 伯乐在线"
      },
      {
        "child_name": "CSDN",
        "img_src": "./img/csdn.png",
        "a_href": "https://www.csdn.net/nav/web",
        "child_desc": "CSDN-专业IT技术社区"
      },
      {
        "child_name": "前端乱炖",
        "img_src": "./img/html-js.png",
        "a_href": "http://www.html-js.com/",
        "child_desc": "前端乱炖，这里是最专业的前端知识平台，汇集国内大部分前端开发人员的前端花名册，最精彩的原创文章专栏，最专业的问答平台，最火热的话题频道，最丰富的线下线上活动。"
      },
      {
        "child_name": "v2ex",
        "img_src": "./img/v2ex.png",
        "a_href": "https://www.v2ex.com/",
        "child_desc": "一个关于分享和探索的地方"
      },
      {
        "child_name": "众成翻译",
        "img_src": "./img/zcfy.png",
        "a_href": "https://zcfy.cc/",
        "child_desc": "中国最好的技术翻译社区，最懂译者的翻译平台，奇虎360最大前端团队“奇舞团”出品"
      },
      {
        "child_name": "InfoQ",
        "img_src": "./img/infoq.png",
        "a_href": "https://www.infoq.cn/",
        "child_desc": "InfoQ 是一个实践驱动的社区资讯站点，致力于促进软件开发领域知识与创新的传播。"
      },
      {
        "child_name": "IBM-developerworks",
        "img_src": "./img/IBMdeveloperworks.png",
        "a_href": "https://www.ibm.com/developerworks/cn/",
        "child_desc": "IBM developerWorks，IBM 的官方开发者项目。学习资源，开发工具，和技术社区。"
      },
      {
        "child_name": "知乎",
        "img_src": "./img/zhihu.png",
        "a_href": "https://www.zhihu.com/",
        "child_desc": "每日必刷，可以关注前端开发等话题"
      },
      {
        "child_name": "w3cplus",
        "img_src": "./img/w3cplus.png",
        "a_href": "https://www.w3cplus.com/",
        "child_desc": "引领web前沿，打造前端精品教程"
      },
      {
        "child_name": "HTML5梦工场",
        "img_src": "./img/html5dw.png",
        "a_href": "http://www.html5dw.com/",
        "child_desc": "HTML5梦工场是中国最大的前端开发者社区"
      },
      {
        "child_name": "大前端",
        "img_src": "./img/daqianduan.png",
        "a_href": "http://www.daqianduan.com/",
        "child_desc": "大前端是一个关注前端开发、用户体验设计、HTML5、CSS3、Javascript的前端开发独立博客。"
      },
      {
        "child_name": "开源中国",
        "img_src": "./img/oschina.png",
        "a_href": "https://www.oschina.net/",
        "child_desc": "开源中国 www.oschina.net 是目前中国最大的开源技术社区。"
      },
      {
        "child_name": "W3Cways",
        "img_src": "./img/w3cways.png",
        "a_href": "https://www.w3cways.com/",
        "child_desc": "Web前端学习之路，网站提供很丰富的相关技术中文文档。"
      },
      {
        "child_name": "WEB前端开发(css88)",
        "img_src": "./img/css88.png",
        "a_href": "https://www.css88.com/",
        "child_desc": "web前端开发，专注前端开发，关注用户体验，关注国内外最新最好的前端开发技术和前端开发资讯的专业博客"
      },
      {
        "child_name": "Awesomes-Web前端开发资源库",
        "img_src": "./img/awesomes.png",
        "a_href": "https://www.awesomes.cn/",
        "child_desc": "Web前端开发工程师需要的免费开源的高质量前端库、框架和插件"
      },
      {
        "child_name": "Helloweba",
        "img_src": "./img/helloweba.png",
        "a_href": "https://www.helloweba.net/",
        "child_desc": "Helloweba为广大WEB开发者提供Javascript前端、PHP后端、服务器运维知识以及业界相关的高质量技术文章分享."
      },
      {
        "child_name": "PHP中文网",
        "img_src": "./img/phpcn.png",
        "a_href": "http://www.php.cn/",
        "child_desc": "php中文网-教程_手册_视频-免费php在线学习平台."
      },
      {
        "child_name": "前端里",
        "img_src": "./img/yyyweb.png",
        "a_href": "http://www.yyyweb.com/",
        "child_desc": "专注于分享最前沿的Web开发技术，教程，资源和素材，是面向网站开发人员和设计师的学习交流平台"
      }
    ]
  },
  {
    "Category_id": "organization",
    "category_CN": "组织团队",
    "category_icon": "icon-shequ",
    "category_item": "organizationItem",
    "item_children": [
      {
        "child_name": "万维网联盟W3C",
        "img_src": "./img/w3.png",
        "a_href": "https://www.w3.org/",
        "child_desc": "万维网联盟创建于1994年，是Web技术领域最具权威和影响力的国际中立性技术标准机构。"
      },
      {
        "child_name": "奇舞团",
        "img_src": "./img/75team.png",
        "a_href": "https://75team.com/",
        "child_desc": "奇虎360公司Web平台部前端工程师 + 部分特约嘉宾 组成的一个前端团队。"
      },
      {
        "child_name": "百度EFE",
        "img_src": "./img/efebaidu.png",
        "a_href": "http://efe.baidu.com/",
        "child_desc": "百度EFE技术体系，前身是ECOM前端团队，后经过技术的发展，逐渐形成一套完善的前端技术体系。"
      },
      {
        "child_name": "淘宝前端团队(FED)",
        "img_src": "./img/taobaofed.png",
        "a_href": "http://taobaofed.org/",
        "child_desc": "淘宝前端团队，用技术为体验提供无限可能。"
      },
      {
        "child_name": "腾讯AlloyTeam",
        "img_src": "./img/alloyteam.png",
        "a_href": "http://www.alloyteam.com/",
        "child_desc": "来自于腾讯SNG(社交网络事业群)，是主要负责腾讯Q+、WebQQ、QQ群空间项目的团队，致力于Web前端技术的研究。"
      },
      {
        "child_name": "百度FEX",
        "img_src": "./img/fexbaidu.png",
        "a_href": "http://fex.baidu.com/",
        "child_desc": "FEX 是百度Web 前端研发部的别名，是社区基础技术部中的前端团队。"
      },
      {
        "child_name": "凹凸实验室",
        "img_src": "./img/aotu.png",
        "a_href": "https://aotu.io/",
        "child_desc": "京东用户体验设计部出品"
      },
      {
        "child_name": "阿里巴巴国际UED团队",
        "img_src": "./img//aliued.jpg",
        "a_href": "http://www.aliued.com/",
        "child_desc": "在更新的屏幕里创造出更好的产品和更优的体验"
      },
      {
        "child_name": "阿里妈妈MUX",
        "img_src": "./img/alimama.png",
        "a_href": "https://mux.alimama.com/posts/front-end.html",
        "child_desc": "阿里妈妈MUX - UX 体验工作平台"
      },
      {
        "child_name": "去哪儿网 UED",
        "img_src": "./img/qunar.jpg",
        "a_href": "http://ued.qunar.com/",
        "child_desc": "Qunar UED, 去哪儿, 前端, FE, FED, UED"
      },
      {
        "child_name": "美团技术团队",
        "img_src": "./img/meituan.png",
        "a_href": "https://tech.meituan.com/",
        "child_desc": "美团点评技术团队"
      },
      {
        "child_name": "大搜车无线团队",
        "img_src": "./img/souche.png",
        "a_href": "http://f2e.souche.com/blog/",
        "child_desc": "前端网红 小芋头君 所在的团队，文章质量高，尤其是 Node 方向的"
      },
      {
        "child_name": "微软开发者网络MSDN",
        "img_src": "./img/msdnmicrosoft.png",
        "a_href": "https://msdn.microsoft.com/zh-cn/",
        "child_desc": "使用 Microsoft Developer Network 学习开发 | MSDN"
      },
      {
        "child_name": "印记中文",
        "img_src": "./img/docschina.png",
        "a_href": "https://www.docschina.org/",
        "child_desc": "收集了由社区翻译的比较流行的前端相关框架、工具的中文版文档。为学习一些新的框架扫平了语言障碍"
      }
    ]
  },
  {
    "Category_id": "framework",
    "category_CN": "框架类库",
    "category_icon": "icon-kuangjia",
    "category_item": "frameworkItem",
    "item_children": [
      {
        "child_name": "JQuery",
        "img_src": "./img/jquery.png",
        "a_href": "http://jquery.com/",
        "child_desc": "jQuery是一个快速、简洁的JavaScript框架."
      },
      {
        "child_name": "Vue",
        "img_src": "./img/vuejs.png",
        "a_href": "https://cn.vuejs.org/",
        "child_desc": "一套用于构建用户界面的渐进式框架.简单却不失优雅,小巧而不乏大匠"
      },
      {
        "child_name": "React",
        "img_src": "./img/reactdocschina.jpg",
        "a_href": "https://react.docschina.org/",
        "child_desc": "React是一个JavaScript框架,用于构建“可预期的”和“声明式的”Web用户界面."
      },
      {
        "child_name": "Angular",
        "img_src": "./img/angular.png",
        "a_href": "https://www.angular.cn/",
        "child_desc": "一套框架，多种平台移动端 & 桌面端"
      },
      {
        "child_name": "AngularJs",
        "img_src": "./img/angularjs.jpg",
        "a_href": "http://www.angularjs.net.cn/",
        "child_desc": "Google推出的MVVM框架"
      },
      {
        "child_name": "Zepto",
        "img_src": "./img/Zepto.jpg",
        "a_href": "https://github.com/madrobby/zepto",
        "child_desc": "Zepto最初是为移动端开发的库,是jQuery的轻量级替代品"
      },
      {
        "child_name": "Flutter",
        "img_src": "./img/flutter.png",
        "a_href": "https://flutter.io/",
        "child_desc": "Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。"
      },
      {
        "child_name": "Backbone",
        "img_src": "./img/backbone.jpg",
        "a_href": "https://github.com/jashkenas/backbone",
        "child_desc": "一套web开发框架,基于jQuery和underscore的一个前端js框架。"
      },
      {
        "child_name": "Ember.js",
        "img_src": "./img/ember.jpg",
        "a_href": "https://www.emberjs.com/",
        "child_desc": "一个用于创建 web 应用的 JavaScript MVC 框架"
      },
      {
        "child_name": "Preact",
        "img_src": "./img/preact.png",
        "a_href": "https://preactjs.com/",
        "child_desc": "一个快速轻量的 React 替代方案，具有 ES6 API、组件化和虚拟 DOM"
      },
      {
        "child_name": "Egg",
        "img_src": "./img/eggjs.png",
        "a_href": "https://eggjs.org/zh-cn/",
        "child_desc": "一个用于更好地构建企业应用的框架，内置流程管理，高度可定制，有强大的插件系统。"
      },
      {
        "child_name": "KISSY",
        "img_src": "./img/kissy.png",
        "a_href": "http://docs.kissyui.com/",
        "child_desc": "KISSY 是一款跨终端、模块化、高性能、使用简单的 JavaScript 框架。"
      },
      {
        "child_name": "RequireJS",
        "img_src": "./img/requirejs.png",
        "a_href": "http://www.requirejs.cn/",
        "child_desc": "RequireJS是一个非常小巧的JavaScript模块载入框架,是AMD规范最好的实现者之一"
      },
      {
        "child_name": "Sea.js",
        "img_src": "./img/seajs.png",
        "a_href": "https://seajs.github.io/seajs/docs/",
        "child_desc": "SeaJS是一个遵循CMD规范的JavaScript模块加载框架"
      }
    ]
  },
  {
    "Category_id": "UIFrame",
    "category_CN": "UI框架",
    "category_icon": "icon-UIsheji",
    "category_item": "UIFrameItem",
    "item_children": [
      {
        "child_name": "Bootstrap",
        "img_src": "./img/bootcss.jpg",
        "a_href": "http://www.bootcss.com/",
        "child_desc": "简洁、直观、强悍的前端开发框架，让web开发更迅速、简单。"
      },
      {
        "child_name": "Foundation",
        "img_src": "./img/foundation.png",
        "a_href": "https://foundation.zurb.com/",
        "child_desc": "一个易用、强大而且灵活的框架,用于构建基于任何设备上的 Web 应用。"
      },
      {
        "child_name": "Pure.css",
        "img_src": "./img/purecss.png",
        "a_href": "https://purecss.io/",
        "child_desc": "雅虎公司出品的一组轻量级、响应式纯css模块,适用于任何Web项目"
      },
      {
        "child_name": "Semantic UI",
        "img_src": "./img/semanticui.png",
        "a_href": "https://semantic-ui.com/",
        "child_desc": "一个用来帮助设计出漂亮的、响应化、人性化的网络框架"
      },
      {
        "child_name": "Material UI",
        "img_src": "./img/material-ui.png",
        "a_href": "https://material-ui.com/",
        "child_desc": "一组反应元件，实现谷歌的材料设计"
      },
      {
        "child_name": "Element",
        "img_src": "./img/element.png",
        "a_href": "http://element-cn.eleme.io/#/zh-CN",
        "child_desc": "一套为开发者、设计师和产品经理准备的基于 Vue 2.0 的桌面端组件库"
      },
      {
        "child_name": "iView",
        "img_src": "./img/iview.png",
        "a_href": "https://www.iviewui.com/",
        "child_desc": "一套基于 Vue.js 的高质量 UI 组件库"
      },
      {
        "child_name": "Ant Design",
        "img_src": "./img/antdesign.png",
        "a_href": "https://ant.design/index-cn",
        "child_desc": "蚂蚁金服的开箱即用的中台前端/设计解决方案"
      },
      {
        "child_name": "Layui",
        "img_src": "./img/layui.jpg",
        "a_href": "https://www.layui.com/",
        "child_desc": "一款采用自身模块规范编写的前端 UI 框架，遵循原生 HTML/CSS/JS 的书写与组织形式，门槛极低，拿来即用"
      },
      {
        "child_name": "AmazeUI",
        "img_src": "./img/amazeui.png",
        "a_href": "http://amazeui.org/",
        "child_desc": "妹子UI HTML5 跨屏前端框架"
      },
      {
        "child_name": "MetroUI",
        "img_src": "./img/metroui.png",
        "a_href": "https://metroui.org.ua/",
        "child_desc": "好看好用，重点是样式特别、个性"
      },
      {
        "child_name": "QMUI Web",
        "img_src": "./img/QMUIWeb.png",
        "a_href": "https://qmuiteam.com/web/page/index.html",
        "child_desc": "腾讯旗下团队 web UI解决方案"
      },
      {
        "child_name": "MDUI",
        "img_src": "./img/mdui.png",
        "a_href": "https://www.mdui.org/",
        "child_desc": "MDUI 是一套用于开发 Material Design 网页的前端框架"
      },
      {
        "child_name": "Mobi.css",
        "img_src": "./img/mobicss.png",
        "a_href": "http://getmobicss.com/",
        "child_desc": "轻量灵活的移动端 CSS 框架"
      },
      {
        "child_name": "Framework7",
        "img_src": "./img/framework7.png",
        "a_href": "http://www.framework7.cn/",
        "child_desc": "完美的HTML框架,构建精美的iOS & Android 应用"
      },
      {
        "child_name": "PaperCSS",
        "img_src": "./img/getpapercss.png",
        "a_href": "https://www.getpapercss.com/",
        "child_desc": "一个不太常规的CSS框架，如果你希望你的网站有手绘风格感觉，选择它准没错。"
      },
      {
        "child_name": "FlowUI",
        "img_src": "./img/flowui.png",
        "a_href": "https://flow-ui.refined-x.com/",
        "child_desc": "基于Seajs/jQuery构建，内置CSS组件、JS插件、模块化开发体系、自动化开发工具、常见场景解决方案。"
      }
    ]
  },
  {
    "Category_id": "JavaScriptAbout",
    "category_CN": "JavaScript相关",
    "category_icon": "icon-java-script",
    "category_item": "JavaScriptAboutItem",
    "item_children": [
      {
        "child_name": "JavaScript开发者应懂的33个概念",
        "img_src": "./img/33_js_concepts.png",
        "a_href": "https://github.com/stephentian/33-js-concepts/blob/master/README.md",
        "child_desc": "这个项目是为了帮助开发者掌握 JavaScript 概念而创立的。它不是必备，但在未来学习（JavaScript）中，可以作为一篇指南。"
      },
      {
        "child_name": "JavaScript 秘密花园",
        "img_src": "./img/JavaScript-Garden.png",
        "a_href": "http://bonsaiden.github.io/JavaScript-Garden/zh/",
        "child_desc": "JavaScript 细节点分析"
      },
      {
        "child_name": "ECMAScript 6 入门",
        "img_src": "./img/es6.png",
        "a_href": "http://es6.ruanyifeng.com/#README",
        "child_desc": "阮一峰的《ECMAScript 6入门》"
      },
      {
        "child_name": "30 seconds of code",
        "img_src": "./img/30secondsofcode.png",
        "a_href": "https://30secondsofcode.org/",
        "child_desc": "分享了大量有用的Javascript片段,你可以在30秒或更少时间中理解。"
      },
      {
        "child_name": "JS 函数式编程指南",
        "img_src": "./img/dianzishu.png",
        "a_href": "https://llh911001.gitbooks.io/mostly-adequate-guide-chinese/content/",
        "child_desc": "JS 函数式编程指南 gitbook电子书"
      },
      {
        "child_name": "TypeScript中文网",
        "img_src": "./img/TypeScriptcn.png",
        "a_href": "https://www.tslang.cn/",
        "child_desc": "TypeScript中文网中文文档"
      },
      {
        "child_name": "TypeScript Handbook",
        "img_src": "./img/dianzishu.png",
        "a_href": "https://zhongsp.gitbooks.io/typescript-handbook/content/",
        "child_desc": "TypeScript Handbook（中文版）"
      }
    ]
  },
  {
    "Category_id": "cssAbout",
    "category_CN": "CSS相关",
    "category_icon": "icon-css",
    "category_item": "cssAboutItem",
    "item_children": [
      {
        "child_name": "Sass",
        "img_src": "./img/sasscss.jpg",
        "a_href": "http://sass.bootcss.com/",
        "child_desc": "Sass 是成熟、稳定、强大的 CSS 扩展语言。"
      },
      {
        "child_name": "Less",
        "img_src": "./img/lesscss.png",
        "a_href": "https://less.bootcss.com/",
        "child_desc": "给 CSS 加点料,是一门向后兼容的 CSS 扩展语言。"
      },
      {
        "child_name": "Stylus",
        "img_src": "./img/stylus.png",
        "a_href": "http://stylus-lang.com/",
        "child_desc": "富有表现力的、动态的、健壮的CSS"
      },
      {
        "child_name": "Animate.css",
        "img_src": "./img/animatecss.jpg",
        "a_href": "https://daneden.github.io/animate.css/",
        "child_desc": "css内置了很多典型的css3动画,兼容性好使用方便。"
      },
      {
        "child_name": "CSS 选择器演示",
        "img_src": "./img/css_selecter.png",
        "a_href": "https://www.haorooms.com/tools/css_selecter/",
        "child_desc": "本css选择器可以通过本页面直观的理解 CSS 选择器的作用区域"
      },
      {
        "child_name": "浏览器hack大全",
        "img_src": "./img/browserhacks.png",
        "a_href": "http://browserhacks.com/",
        "child_desc": "由于不同的浏览器，对CSS的解析认识不一样，因此会导致生成的页面效果不一样，于是就有了针对不同的浏览器写不同的CSS code，这就叫CSS hack"
      },
      {
        "child_name": "CSS Hack Table",
        "img_src": "./img/swordaircsstools.png",
        "a_href": "https://swordair.com/tools/css-hack-table/",
        "child_desc": "CSS hack 表格"
      },
      {
        "child_name": "LoadersCSS",
        "img_src": "./img/loaders.png",
        "a_href": "https://connoratherton.com/loaders",
        "child_desc": "用 CSS 技术实现 loading 动画"
      },
      {
        "child_name": "text-spinners",
        "img_src": "./img/text-spinners.png",
        "a_href": "https://github.com/maxbeier/text-spinners",
        "child_desc": "又是一款 spinners 效果的库，用来做 loading 正合适。"
      },
      {
        "child_name": "Can I Use",
        "img_src": "./img/caniuse.png",
        "a_href": "https://caniuse.com/",
        "child_desc": "一个检测浏览器对JS、HTML5、CSS、SVG或者其他Web前端相关特性支持程度的列表。"
      },
      {
        "child_name": "A Single Div",
        "img_src": "./img/asinglediv.png",
        "a_href": "https://a.singlediv.com/",
        "child_desc": "纯CSS实现的div图片盒子,很有意思"
      },
      {
        "child_name": "30 Seconds of CSS",
        "img_src": "./img/30-seconds-of-css.png",
        "a_href": "https://30-seconds.github.io/30-seconds-of-css/",
        "child_desc": "收集了常用的CSS代码段,你可以通过30秒或者更少的时间去了解它"
      },
      {
        "child_name": "CSS Inspiration -- CSS灵感",
        "img_src": "./img/CSS-Inspiration.png",
        "a_href": "https://chokcoco.github.io/CSS-Inspiration/#/",
        "child_desc": "学习 CSS 的灵感，以分类的形式，展示不同 CSS 属性或者不同的课题使用 CSS 来解决的各种方法。"
      },
      {
        "child_name": "CSScomb",
        "img_src": "./img/csscomb.png",
        "a_href": "http://csscomb.com/",
        "child_desc": "一个超棒的CSS属性排序工具"
      },
      {
        "child_name": "Button Generator",
        "img_src": "./img/ButtonGenerator.png",
        "a_href": "https://www.bestcssbuttongenerator.com/",
        "child_desc": "提供各种按钮的CSS代码，你可以从预设的按钮中选择并使用模板用于自己的设计"
      },
      {
        "child_name": "EnjoyCSS",
        "img_src": "./img/enjoycss.png",
        "a_href": "https://enjoycss.com/",
        "child_desc": "一个完整的代码生成器，可以自定义输入域或CSS3按钮"
      },
      {
        "child_name": "Animista",
        "img_src": "./img/animista.png",
        "a_href": "http://animista.net/",
        "child_desc": "CSS动态效果样式在线自定义"
      },
      {
        "child_name": "AniCollection",
        "img_src": "./img/anicollection.png",
        "a_href": "http://anicollection.github.io/#/",
        "child_desc": "CSS3动效预设收藏集合"
      },
      {
        "child_name": "CSS Generator Tool",
        "img_src": "./img/cssgenerator.png",
        "a_href": "https://cssgenerator.org/",
        "child_desc": "CSS各种对象样式和效果在线生成工具"
      },
      {
        "child_name": "Ceaser",
        "img_src": "./img/ceaser.png",
        "a_href": "https://matthewlein.com/tools/ceaser",
        "child_desc": "CSS贝塞尔动画在线调试工具"
      },
      {
        "child_name": "CSS Gradient Generator",
        "img_src": "./img/gradient-editor.png",
        "a_href": "http://www.colorzilla.com/gradient-editor/",
        "child_desc": "CSS渐变在线生成器"
      },
      {
        "child_name": "CSS Reference",
        "img_src": "./img/cssreference.png",
        "a_href": "https://cssreference.io/",
        "child_desc": "非常棒的免费的CSS属性指导手册"
      },
      {
        "child_name": "ColorSpark",
        "img_src": "./img/colorspark.png",
        "a_href": "https://colorspark.app/",
        "child_desc": "随机生成好看的颜色、渐变色，可以一键复制 CSS 代码"
      },
      {
        "child_name": "FontSpark",
        "img_src": "./img/fontspark.png",
        "a_href": "https://fontspark.app/",
        "child_desc": "随机字体在线预览，用过都说好。"
      }
    ]
  },
  {
    "Category_id": "codeSource",
    "category_CN": "代码素材/片段",
    "category_icon": "icon-code",
    "category_item": "codeSourceItem",
    "item_children": [
      {
        "child_name": "microjs",
        "img_src": "./img/microjs.png",
        "a_href": "http://microjs.com/#",
        "child_desc": "迷你前端开发框架和类库资源收集,前端开发工程师必备的网站, 网站收集了各种各样的框架和代码"
      },
      {
        "child_name": "jQuery插件库",
        "img_src": "./img/jq22.png",
        "a_href": "http://www.jq22.com/",
        "child_desc": "致力于收集jQuery插件和提供各种jQuery特效的详细使用方法,在线预览，jQuery插件下载及教程"
      },
      {
        "child_name": "JQuerySchool",
        "img_src": "./img/jq-school.png",
        "a_href": "http://www.jq-school.com/",
        "child_desc": "jqueryschool是国内最大的jquery原创分享社区，专门分享原创jquery插件、jquery工具、jquery特效、html5、css3、jquery教程的网站，分享原创设计，把开发代码封装成插件，最短时间掌握jquery知识。"
      },
      {
        "child_name": "jQuery之家",
        "img_src": "./img/htmleaf.png",
        "a_href": "http://www.htmleaf.com/",
        "child_desc": "搜集和整理各种jQuery插件，jQuery特效，jquery ui，jQuery教程，JS特效，网页特效，以及各种html5，css3动画和效果，为前端开发者提供最全面的网页开发素材。"
      },
      {
        "child_name": "dowebok",
        "img_src": "./img/dowebok.png",
        "a_href": "http://www.dowebok.com/",
        "child_desc": "dowebok意为做好网站，为用户提供代码、素材、特效、教程、模板等建站服务。"
      },
      {
        "child_name": "代码库CocoaChina",
        "img_src": "./img/cocoachina.png",
        "a_href": "http://code.cocoachina.com/",
        "child_desc": "代码频道为您提供代码下载，免费代码，开发代码，代码库，代码大全，iOS代码，代码分享等最新相关代码"
      },
      {
        "child_name": "发现DIV.IO",
        "img_src": "./img/divio.png",
        "a_href": "https://div.io/digg",
        "child_desc": "代码模块/实例分享网站"
      },
      {
        "child_name": "COTLib 代码库",
        "img_src": "./img/ctolib.png",
        "a_href": "https://www.ctolib.com/",
        "child_desc": "JavaScript开发社区 | 码库CTOLib"
      },
      {
        "child_name": "模板之家",
        "img_src": "./img/cssmoban.png",
        "a_href": "http://www.cssmoban.com/",
        "child_desc": "CSS模板之家为你提供大量精品网页模板,企业网站模板,网站模板下载,DIV+CSS模板,网页设计模板,网站后台模板,个人博客模板,上千种免费网页模板下载"
      },
      {
        "child_name": "Html5 Tricks",
        "img_src": "./img/html5tricks.png",
        "a_href": "https://www.html5tricks.com/",
        "child_desc": "很多前端实现的功能，可以在线查看效果，也可以下载源码"
      },
      {
        "child_name": "codemyui",
        "img_src": "./img/codemyui.png",
        "a_href": "https://codemyui.com/",
        "child_desc": "采集有趣的网站UI代码片段"
      },
      {
        "child_name": "PlainJS",
        "img_src": "./img/plainjs.png",
        "a_href": "https://plainjs.com/",
        "child_desc": "该仓库都是用原生js写的插件和组件，很实用"
      },
      {
        "child_name": "Snippets",
        "img_src": "./img/snippets.png",
        "a_href": "http://snippets.barretlee.com/#!/snippets",
        "child_desc": "小胡子哥的代码收藏夹，Snippets 管理工具"
      }
    ]
  },
  {
    "Category_id": "templatePlug",
    "category_CN": "模板插件",
    "category_icon": "icon-moban",
    "category_item": "templatePlugItem",
    "item_children": [
      {
        "child_name": "Swiper",
        "img_src": "./img/swiper.png",
        "a_href": "https://www.swiper.com.cn/",
        "child_desc": "目前应用较广泛的移动端网页触摸内容滑动js插件"
      },
      {
        "child_name": "art-template",
        "img_src": "./img/art-template.png",
        "a_href": "https://github.com/aui/art-template",
        "child_desc": "一个简约、超快的模板引擎。它采用作用域预声明的技术来优化模板渲染速度，从而获得接近 JavaScript 极限的运行性能，并且同时支持 NodeJS 和浏览器。"
      },
      {
        "child_name": "iScroll",
        "img_src": "./img/iScroll.png",
        "a_href": "https://github.com/cubiq/iscroll",
        "child_desc": "一个高性能，资源占用少，无依赖，多平台的javascript滚动插件"
      },
      {
        "child_name": "fullPage.js",
        "img_src": "./img/fullPage.png",
        "a_href": "https://alvarotrigo.com/fullPage/zh/",
        "child_desc": "一个基于 jQuery 的插件,它能够很方便、很轻松的制作出全屏网站。"
      },
      {
        "child_name": "Layer弹窗",
        "img_src": "./img/layui.png",
        "a_href": "http://layer.layui.com/",
        "child_desc": "一个让你想到即可做到的web弹窗/层解决方案。"
      },
      {
        "child_name": "Hint.css",
        "img_src": "./img/kushagragour.png",
        "a_href": "https://kushagragour.in/lab/hint/",
        "child_desc": "一款非常小巧的提示框效果插件。"
      },
      {
        "child_name": "Lightbox",
        "img_src": "./img/lightbox.png",
        "a_href": "https://lokeshdhakar.com/projects/lightbox2/",
        "child_desc": "以弹框形式集中展示图片的JavaScript库。"
      },
      {
        "child_name": "Siema",
        "img_src": "./img/siema.jpg",
        "a_href": "https://pawelgrzybek.github.io/siema/",
        "child_desc": "轻量级简单的纯 JavaScript 轮播插件，支持触摸手势"
      },
      {
        "child_name": "Datatables",
        "img_src": "./img/datatables.jpg",
        "a_href": "http://datatables.club/",
        "child_desc": "Datatables是一款jquery表格插件，它是一个高度灵活的工具，可以将任何HTML表格添加高级的交互功能。"
      },
      {
        "child_name": "Waterfall",
        "img_src": "./img/waterfall.jpg",
        "a_href": "http://wlog.cn/waterfall/index-zh.html",
        "child_desc": "一款仿Pinterest网站的响应式无限动态加载图片瀑布流特效jQuery插件"
      },
      {
        "child_name": "Sticker.js",
        "img_src": "./img/stickerjs.jpg",
        "a_href": "http://stickerjs.cmiscm.com/",
        "child_desc": "一款仿贴纸效果插件。"
      },
      {
        "child_name": "multiScroll.js",
        "img_src": "./img/multiScroll.jpg",
        "a_href": "https://alvarotrigo.com/multiScroll/#first",
        "child_desc": "创建分割的多滚动页面特效插件。"
      },
      {
        "child_name": "Sortable",
        "img_src": "./img/Sortable.jpg",
        "a_href": "http://rubaxa.github.io/Sortable/",
        "child_desc": "一个简约的 JavaScript 库用于在现代浏览器中拖放列表重新排序 ，支持任何JS框架。"
      },
      {
        "child_name": "jQuery File Upload Plugin",
        "img_src": "./img/jQuery-File-Upload.png",
        "a_href": "https://blueimp.github.io/jQuery-File-Upload/",
        "child_desc": "一个有功能强大的 jQuery 上传组件，支持多文件选择、拖拽上传、验证、图片和多媒体预览等功能。"
      },
      {
        "child_name": "Interact.js",
        "img_src": "./img/interactjs.png",
        "a_href": "http://interactjs.io/",
        "child_desc": " interact.js是一个随意改变形状插件，,它非常强大的，灵活拖放，改变大小，支持现代浏览器的多点触摸手势，基于SVG的运用，能运行在包括在IE8+的浏览器"
      },
      {
        "child_name": "Background-blur",
        "img_src": "./img/background-blur.jpg",
        "a_href": "https://msurguy.github.io/background-blur/#",
        "child_desc": "实用的超轻的跨浏览器的图像模糊 jQuery 插件，基于 SVG 生成，效果很好"
      },
      {
        "child_name": "blur-admin",
        "img_src": "./img/blur-admin.png",
        "a_href": "https://github.com/akveo/blur-admin",
        "child_desc": "视觉冲击极强的管理后台，各种动画效果。"
      },
      {
        "child_name": "Holder.js",
        "img_src": "./img/holderjs.png",
        "a_href": "https://github.com/imsky/holder",
        "child_desc": "占位图片生成器"
      },
      {
        "child_name": "placeholder.js",
        "img_src": "./img/placeholder.png",
        "a_href": "https://github.com/hustcc/placeholder.js",
        "child_desc": "另一款占位图片生成器"
      },
      {
        "child_name": "Echo.js",
        "img_src": "./img/echojs.png",
        "a_href": "https://github.com/toddmotto/echo",
        "child_desc": "简单的JavaScript轻量级图像延迟加载库"
      },
      {
        "child_name": "jQuery-LazyLoad",
        "img_src": "./img/jquery_lazyload.png",
        "a_href": "https://github.com/tuupola/jquery_lazyload/",
        "child_desc": "基于 jQuery 的图片延迟加载插件，在用户滚动页面到图片之后才进行加载。对于有较多的图片的网页，使用图片延迟加载，能有效的提高页面加载速度"
      },
      {
        "child_name": "Picdiet.js",
        "img_src": "./img/picdiet.png",
        "a_href": "https://widget.picdiet.com/",
        "child_desc": "下一代js图片上传组件,节约服务器80%的带宽及硬盘容量，加快网站加载速度，降低服务器处理图片的负荷"
      },
      {
        "child_name": "imagesLoaded",
        "img_src": "./img/imagesloaded.png",
        "a_href": "https://github.com/desandro/imagesloaded",
        "child_desc": "检测图片是否加载完成的插件"
      },
      {
        "child_name": "quicklink",
        "img_src": "./img/quicklink.png",
        "a_href": "https://github.com/GoogleChromeLabs/quicklink",
        "child_desc": "quicklink 是一个通过预加载资源来提升后续方案速度的轻量级工具库。旨在提升浏览过程中，用户访问后续页面时的加载速度。"
      },
      {
        "child_name": "AJAX-Cache",
        "img_src": "./img/ajax-cache.png",
        "a_href": "https://github.com/tower1229/AJAX-Cache",
        "child_desc": "AJAX-Cache是一款jQuery插件，基于localStorage/sessionStorage实现异步请求缓存功能，并提供“快照”和“定时”两种缓存模式。"
      }
    ]
  },
  {
    "Category_id": "graphical",
    "category_CN": "可视化",
    "category_icon": "icon-keshihua",
    "category_item": "graphicalItem",
    "item_children": [
      {
        "child_name": "D3.js",
        "img_src": "./img/d3js.png",
        "a_href": "https://d3js.org/",
        "child_desc": "用动态图形显示数据的JavaScript库"
      },
      {
        "child_name": "Echarts",
        "img_src": "./img/echarts.png",
        "a_href": "http://echarts.baidu.com/",
        "child_desc": "百度开发的可定制的数据可视化图表"
      },
      {
        "child_name": "three.js",
        "img_src": "./img/threejs.png",
        "a_href": "https://threejs.org/",
        "child_desc": "百度开发的可定制的数据可视化图表"
      },
      {
        "child_name": "Highcharts",
        "img_src": "./img/hcharts.png",
        "a_href": "https://www.highcharts.com.cn/",
        "child_desc": "Highcharts 是一个用纯JavaScript编写的一个图表库，兼容IE6+"
      },
      {
        "child_name": "AntV",
        "img_src": "./img/antv.png",
        "a_href": "https://antv.alipay.com/",
        "child_desc": "蚂蚁金服全新一代数据可视化解决方案，致力于提供一套简单方便、专业可靠、无限可能的数据可视化最佳实践。"
      },
      {
        "child_name": "Chart.js",
        "img_src": "./img/chartjs.png",
        "a_href": "https://www.chartjs.org/",
        "child_desc": "一个简单、面向对象，为设计和开发者准备的图表绘制工具库"
      },
      {
        "child_name": "Leaflet",
        "img_src": "./img/leafletjs.png",
        "a_href": "https://leafletjs.com/",
        "child_desc": "一个用于移动端渲染交互式地图开源JavaScript库"
      }
    ]
  },
  {
    "Category_id": "buildTools",
    "category_CN": "编译&构建&打包",
    "category_icon": "icon-dabao",
    "category_item": "buildToolsItem",
    "item_children": [
      {
        "child_name": "Webpack",
        "img_src": "./img/Webpack.png",
        "a_href": "https://www.webpackjs.com/",
        "child_desc": "目前最热门的前端资源模块化管理和打包工具"
      },
      {
        "child_name": "Gulp",
        "img_src": "./img/Gulp.png",
        "a_href": "https://www.gulpjs.com.cn/",
        "child_desc": "用自动化构建工具增强你的工作流程！"
      },
      {
        "child_name": "Grunt",
        "img_src": "./img/Grunt.png",
        "a_href": "https://www.gruntjs.net/",
        "child_desc": "JavaScript 世界的构建工具"
      },
      {
        "child_name": "Babel",
        "img_src": "./img/babel.png",
        "a_href": "https://www.babeljs.cn/",
        "child_desc": "Babel 是一个 JavaScript 编译器。"
      },
      {
        "child_name": "npm",
        "img_src": "./img/npmjs.png",
        "a_href": "https://www.npmjs.com/",
        "child_desc": "通过 npm 可以安装、共享、分发代码,管理项目依赖关系。"
      },
      {
        "child_name": "yarn",
        "img_src": "./img/yarnpkg.png",
        "a_href": "https://www.yarnpkg.com/zh-Hans/",
        "child_desc": "快速、可靠、安全的依赖管理。"
      },
      {
        "child_name": "bower",
        "img_src": "./img/bower.png",
        "a_href": "https://bower.io/",
        "child_desc": "bower是一种包管理器,它可用于搜索、安装和卸载如JavaScript、HTML、CSS之类的网络资源。"
      },
      {
        "child_name": "PostCSS",
        "img_src": "./img/postcss.png",
        "a_href": "https://www.postcss.com.cn/",
        "child_desc": "是一个用 JavaScript 工具和插件转换 CSS 代码的工具"
      },
      {
        "child_name": "Parcel",
        "img_src": "./img/parceljs.png",
        "a_href": "https://parceljs.org/",
        "child_desc": "极速零配置Web应用打包工具"
      },
      {
        "child_name": "Critters",
        "img_src": "./img/critters.png",
        "a_href": "https://github.com/GoogleChromeLabs/critters",
        "child_desc": "webpack的插件，它可以很方便的配置内联关键css( critical CSS ),其余的css部分则会异步加载，由于它不使用无头浏览器(headless browser)呈现内容，因此快速轻巧。"
      },
      {
        "child_name": "Webpack Config Tool",
        "img_src": "./img/WebpackConfigTool.png",
        "a_href": "https://webpack.jakoblind.no/",
        "child_desc": "一款可视化的在线工具网站，你只需要选择前端项目运用到技术和相关配置，就能一键帮你生成webpack.config.js，省去你不少的麻烦。"
      },
      {
        "child_name": "JSUI",
        "img_src": "./img/JSUI.png",
        "a_href": "https://github.com/kitze/JSUI",
        "child_desc": "一个可视化分类、构建和管理 JavaScript 项目的工具。不管是前端应用还是后端应用，也不论使用的是哪种框架，只要项目有一个 package.json ，即可进行管理。"
      },
      {
        "child_name": "PWA Universal Builder",
        "img_src": "./img/pwa.png",
        "a_href": "https://pwa.cafe/",
        "child_desc": "一款脚手架构建工具，方便创建基于Preact，React，Vue和Svelte的项目，开箱及支持Babel，Bublé，Browserlist，TypeScript，PostCSS，ESLint，Prettier和Service Workers！"
      }
    ]
  },
  {
    "Category_id": "ide",
    "category_CN": "编辑器/IDE",
    "category_icon": "icon-gongju",
    "category_item": "ideItem",
    "item_children": [
      {
        "child_name": "Sublime Text",
        "img_src": "./img/sublimetext.png",
        "a_href": "http://www.sublimetext.com/",
        "child_desc": "神级代码编辑软件(Sublime Text 3),SublimeText是一个代码编辑器。也是HTML和散文先进的文本编辑器。"
      },
      {
        "child_name": "Visual Studio Code",
        "img_src": "./img/vscode.png",
        "a_href": "https://code.visualstudio.com/",
        "child_desc": "一款免费开源的现代化轻量级代码编辑器，支持几乎所有主流的开发语言的语法高亮、智能代码补全、自定义热键、括号匹配、代码片段、代码对比 Diff、GIT等特性，支持插件扩展，并针对网页开发和云端应用开发做了优化。。"
      },
      {
        "child_name": "Webstorm",
        "img_src": "./img/webstorm.png",
        "a_href": "http://www.jetbrains.com/webstorm/",
        "child_desc": "jetbrains公司旗下一款JavaScript 开发工具。目前已经被广大中国JS开发者誉为“Web前端开发神器"
      },
      {
        "child_name": "Atom",
        "img_src": "./img/atom.png",
        "a_href": "https://atom.io/",
        "child_desc": "Atom 是github专门为程序员推出的一个跨平台文本编辑器。"
      },
      {
        "child_name": "HBuilder",
        "img_src": "./img/dcloud.png",
        "a_href": "http://www.dcloud.io/",
        "child_desc": "HBuilder是当前最快的HTML开发工具,强大的代码助手帮你快速完成开发,最全的语法库和浏览器兼容性数据让浏览器碎片化不再头痛"
      },
      {
        "child_name": "Vim",
        "img_src": "./img/vim.png",
        "a_href": "https://www.vim.org/",
        "child_desc": "Vim是一个类似于Vi的著名的功能强大、高度可定制的文本编辑器，在Vi的基础上改进和增加了很多特性。"
      },
      {
        "child_name": "Notepad++",
        "img_src": "./img/notepad.png",
        "a_href": "https://notepad-plus-plus.org/",
        "child_desc": "Notepad++是 Windows操作系统下的一套文本编辑器(软件版权许可证: GPL),有完整的中文化接口及支持多国语言编写的功能(UTF8技术)。"
      }
    ]
  },
  {
    "Category_id": "fontIco",
    "category_CN": "字体图标",
    "category_icon": "icon-zitifont4",
    "category_item": "fontIcoItem",
    "item_children": [
      {
        "child_name": "iconfont",
        "img_src": "./img/iconfont.png",
        "a_href": "https://www.iconfont.cn/",
        "child_desc": "阿里妈妈MUX打造的图标库，是国内功能很强大且图标内容很丰富的矢量图标库。"
      },
      {
        "child_name": "Font Awesome",
        "img_src": "./img/fontawesome.png",
        "a_href": "http://fontawesome.dashgame.com/",
        "child_desc": "一款风靡全球的图标字体库和CSS框架。"
      },
      {
        "child_name": "icomoon",
        "img_src": "./img/icomoon.png",
        "a_href": "https://icomoon.io/",
        "child_desc": "免费开源的字体图标库。"
      },
      {
        "child_name": "MFG Labs icon set",
        "img_src": "./img/mfglabs.png",
        "a_href": "http://mfglabs.github.io/mfglabs-iconset/",
        "child_desc": "免费字体图标"
      },
      {
        "child_name": "FindIcons",
        "img_src": "./img/findicons.png",
        "a_href": "https://findicons.com/",
        "child_desc": "免费图标和矢量文件"
      },
      {
        "child_name": "Easy Icon",
        "img_src": "./img/easyicon.png",
        "a_href": "https://www.easyicon.net/",
        "child_desc": "提供 超过五十万个 SVG、PNG、ICO、ICNS格式图标搜索、图标下载服务。"
      },
      {
        "child_name": "iconmonstr",
        "img_src": "./img/iconmonstr.png",
        "a_href": "https://iconmonstr.com/",
        "child_desc": "外国字体图标网站,为项目提供免费的简单图标"
      },
      {
        "child_name": "FLATICON",
        "img_src": "./img/FLATICON.png",
        "a_href": "https://www.flaticon.com/",
        "child_desc": "icon下载"
      },
      {
        "child_name": "ICONFINDER",
        "img_src": "./img/iconfinder.png",
        "a_href": "https://www.iconfinder.com/",
        "child_desc": "高质量付费图标下载"
      },
      {
        "child_name": "Noun Project",
        "img_src": "./img/thenounproject.png",
        "a_href": "https://thenounproject.com/",
        "child_desc": "icon下载"
      },
      {
        "child_name": "RPG-Awesome",
        "img_src": "./img/RpgAwesome.png",
        "a_href": "http://nagoshiashumari.github.io/Rpg-Awesome/",
        "child_desc": "icon下载"
      },
      {
        "child_name": "Orion Icon Library",
        "img_src": "./img/orioniconlibrary.png",
        "a_href": "https://orioniconlibrary.com/",
        "child_desc": "多达6000专业免费的SVG矢量图标，还支持深度的定制，比如更换配色，更改线条粗细，变换图标风格(细线条、粗线条、扁平)，一键生成相关代码。"
      },
      {
        "child_name": "gitmoji",
        "img_src": "./img/gitmoji.png",
        "a_href": "https://gitmoji.carloscuesta.me/",
        "child_desc": "可以使用在github上的emoji图标"
      },
      {
        "child_name": "Emoji Cheat Sheet",
        "img_src": "./img/emoji-cheat-sheet.png",
        "a_href": "https://www.webfx.com/tools/emoji-cheat-sheet/",
        "child_desc": "可以使用在github上的emoji图标"
      },
      {
        "child_name": "Emoji searcher",
        "img_src": "./img/Emojisearcher.png",
        "a_href": "https://emoji.muan.co/",
        "child_desc": "Emoji表情大全"
      },
      {
        "child_name": "草莓图标库",
        "img_src": "./img/chuangzaoshi.png",
        "a_href": "http://chuangzaoshi.com/icon/",
        "child_desc": "为开发者设计的一套免费开源图标库"
      },
      {
        "child_name": "Unicons",
        "img_src": "./img/unicons.png",
        "a_href": "https://iconscout.com/unicons",
        "child_desc": "超過 1000 個向量圖示免費下載，完美像素放大縮小不影響解析度"
      },
      {
        "child_name": "Ikonate",
        "img_src": "./img/ikonate.png",
        "a_href": "https://www.ikonate.com/",
        "child_desc": "完全可定制的矢量图标"
      }
    ]
  },
  {
    "Category_id": "vision",
    "category_CN": "视觉设计",
    "category_icon": "icon-shijuesheji",
    "category_item": "visionItem",
    "item_children": [
      {
        "child_name": "Color Hunt",
        "img_src": "./img/colorhunt.png",
        "a_href": "https://colorhunt.co/",
        "child_desc": "网站配色专家"
      },
      {
        "child_name": "Dribbble",
        "img_src": "./img/dribbble.png",
        "a_href": "https://dribbble.com/",
        "child_desc": "设计灵感"
      },
      {
        "child_name": "Pixabay",
        "img_src": "./img/pixabay.png",
        "a_href": "https://pixabay.com/",
        "child_desc": "全球最大的免费可商用高清图库网站，超过130万张免费的优质图片及视频素材。"
      },
      {
        "child_name": "StockSnap.io",
        "img_src": "./img/stocksnap.png",
        "a_href": "https://stocksnap.io/",
        "child_desc": "高清免费大图素材，不用登陆直接可以下载，每周更新超过百张高清免费图片。"
      },
      {
        "child_name": "全球酷站中心",
        "img_src": "./img/iiimg.png",
        "a_href": "http://iiimg.cn/",
        "child_desc": "同步更新全球html5网站，很适合学习最新网站设计趋势。"
      },
      {
        "child_name": "罫線・飾り罫ライン素材",
        "img_src": "./img/free-line-design.png",
        "a_href": "http://free-line-design.com/",
        "child_desc": "分割线素材"
      },
      {
        "child_name": "loading.io",
        "img_src": "./img/loading.io.png",
        "a_href": "https://loading.io/",
        "child_desc": "loading图生成"
      },
      {
        "child_name": "wallhalla",
        "img_src": "./img/wallhalla.png",
        "a_href": "https://wallhalla.com/",
        "child_desc": "强大的检索功能图库"
      },
      {
        "child_name": "pngimg",
        "img_src": "./img/pngimg.png",
        "a_href": "http://pngimg.com/",
        "child_desc": "pngimg图片素材"
      },
      {
        "child_name": "Color Hex",
        "img_src": "./img/colorhexa.png",
        "a_href": "https://www.colorhexa.com/",
        "child_desc": "配色网"
      },
      {
        "child_name": "flatuicolors",
        "img_src": "./img/flatuicolors.png",
        "a_href": "https://flatuicolors.com/",
        "child_desc": "扁平化配色"
      },
      {
        "child_name": "Subtle Patterns",
        "img_src": "./img/SubtlePatterns.png",
        "a_href": "https://www.toptal.com/designers/subtlepatterns/",
        "child_desc": "Patterns素材,网页背景图"
      },
      {
        "child_name": "Pttrns",
        "img_src": "./img/pttrns.png",
        "a_href": "https://pttrns.com/",
        "child_desc": "App界面灵感"
      },
      {
        "child_name": "Lapa",
        "img_src": "./img/lapa.png",
        "a_href": "https://www.lapa.ninja/",
        "child_desc": "产品官网、落地页设计欣赏"
      },
      {
        "child_name": "Cool Backgrounds",
        "img_src": "./img/coolbackgrounds.png",
        "a_href": "https://coolbackgrounds.io/",
        "child_desc": "生成非常酷的彩色背景图像"
      },
      {
        "child_name": "365psd",
        "img_src": "./img/365psd.png",
        "a_href": "https://cn.365psd.com/",
        "child_desc": "下载免费高品质的 PSD 文件、插图和图形。浏览我们的图库，快速找到心仪图像，商业使用完全免费。"
      },
      {
        "child_name": "UIgradients",
        "img_src": "./img/uigradients.png",
        "a_href": "https://uigradients.com/",
        "child_desc": "简洁舒服的渐变配色"
      },
      {
        "child_name": "Freebiesbug",
        "img_src": "./img/freebiesbug.png",
        "a_href": "https://freebiesbug.com/",
        "child_desc": "高质量设计网站、资源聚合站点"
      },
      {
        "child_name": "OnePageLove",
        "img_src": "./img/onepagelove.png",
        "a_href": "https://onepagelove.com/",
        "child_desc": "网站和APP单页界面欣赏"
      },
      {
        "child_name": "UpLabs",
        "img_src": "./img/uplabs.png",
        "a_href": "https://www.uplabs.com/",
        "child_desc": "采集前端作品设计、iOS UI设计"
      },
      {
        "child_name": "Reeoo",
        "img_src": "./img/reeoo.png",
        "a_href": "http://reeoo.com/",
        "child_desc": "全球最火热的酷站画廊"
      },
      {
        "child_name": "SiteSee",
        "img_src": "./img/sitesee.png",
        "a_href": "https://sitesee.co/",
        "child_desc": "收录漂亮的界面设计网站"
      },
      {
        "child_name": "Calltoidea",
        "img_src": "./img/calltoidea.png",
        "a_href": "https://www.calltoidea.com/",
        "child_desc": "收集优秀UI组件元素设计的站点"
      }
    ]
  },
  {
    "Category_id": "vueEcology",
    "category_CN": "Vue生态",
    "category_icon": "icon-Vue",
    "category_item": "vueEcologyItem",
    "item_children": [
      {
        "child_name": "Vue",
        "img_src": "./img/vuejs.png",
        "a_href": "https://cn.vuejs.org/",
        "child_desc": "一套用于构建用户界面的渐进式框架.简单却不失优雅,小巧而不乏大匠"
      },
      {
        "child_name": "Vue Router",
        "img_src": "./img/vuejs.png",
        "a_href": "https://router.vuejs.org/zh/",
        "child_desc": "Vue Router官方中文文档"
      },
      {
        "child_name": "Vuex",
        "img_src": "./img/Vuex.png",
        "a_href": "https://vuex.vuejs.org/zh/",
        "child_desc": "Vuex官方中文文档"
      },
      {
        "child_name": "Vue CLI",
        "img_src": "./img/vuejs.png",
        "a_href": "https://cli.vuejs.org/zh/",
        "child_desc": "Vue.js 官方脚手架工具"
      },
      {
        "child_name": "awesome-vue",
        "img_src": "./img/awesome-vue.png",
        "a_href": "https://github.com/vuejs/awesome-vue",
        "child_desc": "(vue资源汇总)与Vue.js相关的精彩内容和精选列表"
      },
      {
        "child_name": "awesome-github-vue",
        "img_src": "./img/awesome-github-vue.png",
        "a_href": "https://github.com/opendigg/awesome-github-vue",
        "child_desc": "Vue相关开源项目库汇总(中文)"
      },
      {
        "child_name": "ElementUI",
        "img_src": "./img/element.png",
        "a_href": "http://element-cn.eleme.io/#/zh-CN",
        "child_desc": "Element，一套为开发者、设计师和产品经理准备的基于 Vue 2.0 的桌面端组件库"
      },
      {
        "child_name": "Ant Design Vue",
        "img_src": "./img/ant-design-vue.png",
        "a_href": "https://vue.ant.design/docs/vue/introduce-cn/",
        "child_desc": "Ant Design 的 Vue 实现，开发和服务于企业级后台产品。"
      },
      {
        "child_name": "vant",
        "img_src": "./img/vant.png",
        "a_href": "https://youzan.github.io/vant/#/zh-CN/intro",
        "child_desc": "有赞团队出品的轻量、可靠的移动端 Vue 组件库"
      },
      {
        "child_name": "cube-ui",
        "img_src": "./img/cube-ui.png",
        "a_href": "https://didi.github.io/cube-ui/#/zh-CN",
        "child_desc": "滴滴团队基于 Vue.js 实现的精致移动端组件库"
      },
      {
        "child_name": "mint-ui",
        "img_src": "./img/mint-ui.png",
        "a_href": "http://mint-ui.github.io/#!/zh-cn",
        "child_desc": "饿了么团队出品的基于 Vue.js 的移动端组件库"
      },
      {
        "child_name": "Vux",
        "img_src": "./img/vux.png",
        "a_href": "https://vux.li/#/zh-CN/README",
        "child_desc": "一个凑合的 Vue.js 移动端 UI 组件库"
      },
      {
        "child_name": "Vuetifyjs",
        "img_src": "./img/vuetifyjs.png",
        "a_href": "https://vuetifyjs.com/zh-Hans/",
        "child_desc": "一个高品质综合实用性、体验、格调的框架"
      },
      {
        "child_name": "Quasar",
        "img_src": "./img/Quasar.png",
        "a_href": "https://quasar-framework.org/",
        "child_desc": "较成熟的组件库，大名鼎鼎，组件丰富到变态~"
      },
      {
        "child_name": "Vuesax",
        "img_src": "./img/vuesax.png",
        "a_href": "https://lusaxweb.github.io/vuesax/#/",
        "child_desc": "有若干常用组件，但有着非常美妙的色彩和反馈效果，充满活力与灵气"
      },
      {
        "child_name": "Vue资源精选",
        "img_src": "./img/vueawesometiny.png",
        "a_href": "http://vue.awesometiny.com/",
        "child_desc": "vue资源精选-前端组件库资源-前端选型"
      },
      {
        "child_name": "Eagle.js",
        "img_src": "./img/eaglejs.png",
        "a_href": "https://github.com/Zulko/eagle.js",
        "child_desc": "一个使用 Vue.js 开发的幻灯片框架"
      },
      {
        "child_name": "Vue-grid-layout",
        "img_src": "./img/vue-grid-layout.png",
        "a_href": "https://github.com/jbaysolutions/vue-grid-layout",
        "child_desc": "Vue.js 可拖动且可调整大小的网格布局"
      },
      {
        "child_name": "vue-content-loader",
        "img_src": "./img/vue-content-loader.png",
        "a_href": "https://github.com/egoist/vue-content-loader",
        "child_desc": "用于创建占位符加载的 SVG 组件，例如 Facebook 卡片加载"
      },
      {
        "child_name": "vue-virtual-scroller",
        "img_src": "./img/vue-virtual-scroller.png",
        "a_href": "https://github.com/Akryum/vue-virtual-scroller",
        "child_desc": "可以平滑滚动任意数量的数据"
      },
      {
        "child_name": "Mand Mobile",
        "img_src": "./img/mand-mobile.png",
        "a_href": "https://mand-mobile.github.io/",
        "child_desc": "面向金融场景的Vue移动端UI组件库"
      },
      {
        "child_name": "Vue-design-system",
        "img_src": "./img/vueds.png",
        "a_href": "https://vueds.com/",
        "child_desc": "一个用于基于 Vue.js 构建 UI 设计系统的开源工具"
      },
      {
        "child_name": "Vue-Access-Control",
        "img_src": "./img/vueac.png",
        "a_href": "https://github.com/tower1229/Vue-Access-Control",
        "child_desc": "一套基于Vue/Vue-Router/axios 实现的前端用户权限控制解决方案"
      },
      {
        "child_name": "Vue-Tree-Chart",
        "img_src": "./img/vuetc.png",
        "a_href": "https://github.com/tower1229/Vue-Tree-Chart",
        "child_desc": "基于Vue2的树形图组件"
      }
    ]
  },
  {
    "Category_id": "miniProgram",
    "category_CN": "小程序相关",
    "category_icon": "icon-xiaochengxu",
    "category_item": "miniProgramItem",
    "item_children": [
      {
        "child_name": "微信小程序文档",
        "img_src": "./img/weixin.png",
        "a_href": "https://developers.weixin.qq.com/miniprogram/dev/index.html",
        "child_desc": "微信小程序官方开发者文档"
      },
      {
        "child_name": "微信开发者社区",
        "img_src": "./img/developersweixin.png",
        "a_href": "https://developers.weixin.qq.com/miniprogram/dev/index.html",
        "child_desc": "小程序开发者专区，微信公众平台,微信开放社区,开发者专区"
      },
      {
        "child_name": "微信小程序开发资源汇总",
        "img_src": "./img/awesome-wechat-weapp.png",
        "a_href": "https://github.com/justjavac/awesome-wechat-weapp",
        "child_desc": "微信小程序开发资源汇总 awesome-wechat-weapp"
      },
      {
        "child_name": "WePY",
        "img_src": "./img/wepy.png",
        "a_href": "https://tencent.github.io/wepy/",
        "child_desc": "支持组件化的小程序开发框架"
      },
      {
        "child_name": "mpvue",
        "img_src": "./img/mpvue.png",
        "a_href": "http://mpvue.com/",
        "child_desc": "基于 Vue.js 的小程序开发框架，从底层支持 Vue.js 语法和构建工具体系"
      },
      {
        "child_name": "WeUI",
        "img_src": "./img/weui.png",
        "a_href": "https://github.com/Tencent/weui",
        "child_desc": "一套同微信原生视觉体验一致的基础样式库 为微信 Web 开发量身设计，令用户的使用感知更加统一"
      },
      {
        "child_name": "Taro",
        "img_src": "./img/taro.png",
        "a_href": "https://taro.js.org/",
        "child_desc": "使用 React 的方式开发小程序的框架，同时支持生成多端应用"
      },
      {
        "child_name": "Chameleon",
        "img_src": "./img/cmljs.png",
        "a_href": "https://cmljs.org/#/",
        "child_desc": "一套代码运行多端，一端所见即多端所见"
      },
      {
        "child_name": "小程序社区",
        "img_src": "./img/wxapp-union.png",
        "a_href": "http://www.wxapp-union.com/",
        "child_desc": "小程序社区|小程序开发社区-小程序开发联盟"
      }
    ]
  },
  {
    "Category_id": "blog",
    "category_CN": "大牛博客",
    "category_icon": "icon-xieboke",
    "category_item": "blogItem",
    "item_children": [
      {
        "child_name": "阮一峰",
        "img_src": "./img/ruanyifeng.png",
        "a_href": "http://www.ruanyifeng.com/home.html",
        "child_desc": "阮一峰的个人网站 - Ruan YiFeng's Personal Website"
      },
      {
        "child_name": "廖雪峰",
        "img_src": "./img/liaoxuefeng.png",
        "a_href": "https://www.liaoxuefeng.com/",
        "child_desc": "研究互联网产品和技术，提供原创中文精品教程"
      },
      {
        "child_name": "张鑫旭",
        "img_src": "./img/zhangxinxu.png",
        "a_href": "https://www.zhangxinxu.com/",
        "child_desc": "张鑫旭的个人博客首页，张鑫旭的技术作品，张鑫旭的生活成长"
      },
      {
        "child_name": "尤雨溪",
        "img_src": "./img/evanyou.png",
        "a_href": "https://evanyou.me/",
        "child_desc": "Design, Code & Things in Between"
      },
      {
        "child_name": "颜海镜",
        "img_src": "./img/yanhaijing.png",
        "a_href": "https://yanhaijing.com/",
        "child_desc": "颜海镜的博客,专注于web前端"
      },
      {
        "child_name": "彬Go",
        "img_src": "./img/bingo929.png",
        "a_href": "http://blog.bingo929.com/",
        "child_desc": "一直从事于Web前端开发行业，热爱Javascript/CSS/HTML进行优雅的Web前端开发"
      },
      {
        "child_name": "田永强/朴灵",
        "img_src": "./img/html5ify.png",
        "a_href": "http://html5ify.com/",
        "child_desc": "《深入浅出Node.js》作者,朴灵，阿里数据平台数据产品部资深工程师。"
      },
      {
        "child_name": "周爱民",
        "img_src": "./img/aimingoo.png",
        "a_href": "https://aimingoo.github.io/",
        "child_desc": "JavaScript语言精髓与编程实践作者"
      },
      {
        "child_name": "勾三股四",
        "img_src": "./img/jiongks.png",
        "a_href": "http://jiongks.name/",
        "child_desc": " 淘宝"
      },
      {
        "child_name": "CSS森林",
        "img_src": "./img/cssforest.png",
        "a_href": "http://blog.cssforest.org/",
        "child_desc": "腾讯优秀前端重构,网站/页面重构"
      },
      {
        "child_name": "叶小钗",
        "img_src": "./img/yexiaochai.png",
        "a_href": "http://www.cnblogs.com/yexiaochai",
        "child_desc": "刀狂剑痴叶小钗"
      },
      {
        "child_name": "雅X共赏",
        "img_src": "./img/yaxgongshang.png",
        "a_href": "https://refined-x.com/",
        "child_desc": "枪在手，跟我走，前端路上不回头"
      }
    ]
  },
  {
    "Category_id": "chrome",
    "category_CN": "chrome插件",
    "category_icon": "icon-iconset0284",
    "category_item": "chromeItem",
    "item_children": [
      
      {
        "child_name": "Chrome插件英雄榜",
        "img_src": "./img/ChromeAppHeroes.png",
        "a_href": "https://zhaoolee.gitbooks.io/chrome/content/",
        "child_desc": "为优秀的Chrome插件写一本中文说明书, 让Chrome插件英雄们造福人类"
      },
      {
        "child_name": "扩展迷 - 谷歌扩展商店",
        "img_src": "./img/extfans.png",
        "a_href": "https://extfans.com/",
        "child_desc": "扩展迷为您推荐优秀的Chrome扩展与插件，为您提供Chrome扩展与插件的离线安装包下载。"
      },
      {
        "child_name": "WEB前端助手(FeHelper)",
        "img_src": "./img/FeHelper.png",
        "a_href": "https://chrome.google.com/webstore/detail/web%E5%89%8D%E7%AB%AF%E5%8A%A9%E6%89%8Bfehelper/pkgccpejnmalmdinmhkkfafefagiiiad?hl=zh-CN",
        "child_desc": "前端实用工具集，谁用谁知道！"
      },
      {
        "child_name": "Image Downloader",
        "img_src": "./img/ImageDownloader.png",
        "a_href": "https://chrome.google.com/webstore/detail/image-downloader/cnpniohnfphhjihaiiggeabnkjhpaldj?hl=zh-CN",
        "child_desc": "一款能够查看网页中包含的所有图像和链接，并支持图片批量下载的chrome插件。"
      },
      {
        "child_name": "Vue.js devtools",
        "img_src": "./img/Vue.js devtools.png",
        "a_href": "https://chrome.google.com/webstore/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd?hl=zh-CN",
        "child_desc": "基于google chrome浏览器的一款调试vue.js应用的开发者浏览器扩展"
      },
      {
        "child_name": "ColorZilla",
        "img_src": "./img/ColorZilla.png",
        "a_href": "https://chrome.google.com/webstore/detail/colorzilla/bhlhnicpbhignbdhedgjhgdocnmhomnp?hl=zh-CN",
        "child_desc": "为设计师提供了一种简单的浏览器平台工具来找到具体颜色数值并且测量它们的不同"
      },
      {
        "child_name": "JSONView",
        "img_src": "./img/JSONView.png",
        "a_href": "https://chrome.google.com/webstore/detail/jsonview/chklaanhfefbnpoihckbnefhakgolnmc?hl=zh-CN",
        "child_desc": "一款非常实用的格式化和语法高亮JSON格式数据查看器jQuery插件。它是查看json数据的神器。"
      },
      {
        "child_name": "Markdown Viewer",
        "img_src": "./img/MarkdownViewer.png",
        "a_href": "https://chrome.google.com/webstore/detail/markdown-viewer/ckkdlimhmcjmikdlpkmbgfkaikojcbjk?hl=zh-CN",
        "child_desc": "在浏览器中查看markdown文档,免去应用之间的切换"
      },
      {
        "child_name": "Wappalyzer",
        "img_src": "./img/wappalyzer.png",
        "a_href": "https://chrome.google.com/webstore/detail/wappalyzer/gppongmhjkpfnbhagpmjfkannfbllamg",
        "child_desc": "分析目标网站所采用的平台构架、网站环境、服务器配置环境、JavaScript框架、编程语言等参数的chrome网站技术分析插件"
      },
      {
        "child_name": "Octotree",
        "img_src": "./img/octotree.png",
        "a_href": "https://chrome.google.com/webstore/detail/octotree/bkhaagjahfmjljalopjnoealnfndnagc?hl=en-US",
        "child_desc": "超实用的GitHub可视化代码树插件"
      },
      {
        "child_name": "Ghelper",
        "img_src": "./img/ghelper.png",
        "a_href": "https://chrome.google.com/webstore/detail/%E8%B0%B7%E6%AD%8C%E4%B8%8A%E7%BD%91%E5%8A%A9%E6%89%8B-%E5%BC%80%E5%8F%91%E7%89%88/cieikaeocafmceoapfogpffaalkncpkc?hl=en-US",
        "child_desc": "可以免费使用谷歌系列服务的插件"
      }
    ]
  },
  {
    "Category_id": "aidedDevTools",
    "category_CN": " 辅助开发工具",
    "category_icon": "icon-gongju",
    "category_item": "aidedDevToolsItem",
    "item_children": [
      {
        "child_name": "Getman",
        "img_src": "./img/getman.png",
        "a_href": "https://getman.cn",
        "child_desc": "在线接口测试,模拟接口,正则匹配"
      },
      {
        "child_name": "云配色",
        "img_src": "./img/qdsay.png",
        "a_href": "http://card.qdsay.com/",
        "child_desc": "云配色 - 一键查询网页前端CSS、JS技术架构和配色方案。"
      },
      {
        "child_name": "开发工具箱",
        "img_src": "./img/box3.png",
        "a_href": "http://www.box3.cn/",
        "child_desc": "这个网站集合了各种工具，相信总有一款你用得上。"
      },
      {
        "child_name": "Layer Styles",
        "img_src": "./img/layerstyles.png",
        "a_href": "http://layerstyles.org/builder.html",
        "child_desc": "国外一个CSS3阴影在线生成器网站"
      },
      {
        "child_name": "CodePen",
        "img_src": "./img/codepen.png",
        "a_href": "https://codepen.io/",
        "child_desc": "CodePen是浏览器中的HTML，CSS和JavaScript代码编辑器，可即时预览查看和编写您的代码。"
      },
      {
        "child_name": "JS Bin",
        "img_src": "./img/jsbin.png",
        "a_href": "http://jsbin.com/",
        "child_desc": "一个在线网站代码调试工具，主要用于测试 JavaScript 和 CSS 的代码片段的Web 应用，拥有简单的操作界面和全面的测试环境。"
      },
      {
        "child_name": "PageSpeed Insights",
        "img_src": "./img/pagespeedinsights.png",
        "a_href": "https://developers.google.com/speed/pagespeed/insights/",
        "child_desc": "Google在线性能测试网站、优化建议"
      },
      {
        "child_name": "Responsinator",
        "img_src": "./img/responsinator.png",
        "a_href": "http://www.responsinator.com/",
        "child_desc": "各大尺寸设备响应式屏幕效果显示"
      },
      {
        "child_name": "Browser Sandbox",
        "img_src": "./img/BrowserSandbox.png",
        "a_href": "https://turbo.net/browsers",
        "child_desc": "各大平台浏览器兼容性在线测试"
      },
      {
        "child_name": "17ce网站测速",
        "img_src": "./img/17ce.png",
        "a_href": "https://www.17ce.com/",
        "child_desc": "测试网站在全国各地和海外的打开速度，全面的报表功能、对比功能、地图展示、柱型图展示等专业测速网站"
      },
      {
        "child_name": "IPIP.NET",
        "img_src": "./img/ipip.png",
        "a_href": "https://www.ipip.net/",
        "child_desc": "最专业的 IP 地址库,该站有许多ip类工具"
      },
      {
        "child_name": "Easy Mock",
        "img_src": "./img/easymock.png",
        "a_href": "https://easy-mock.com",
        "child_desc": "Easy Mock 是一个可视化, 并且能快速生成模拟数据的持久化服务."
      }
    ]
  },
  {
    "Category_id": "otherTools",
    "category_CN": " 其他工具",
    "category_icon": "icon-gongju",
    "category_item": "otherToolsItem",
    "item_children": [
      {
        "child_name": "SM.MS",
        "img_src": "./img/smms.png",
        "a_href": "https://sm.ms/",
        "child_desc": "图床网站,无外链限制，无流量限制"
      },
      {
        "child_name": "Cutterman",
        "img_src": "./img/cutterman.png",
        "a_href": "http://www.cutterman.cn/zh/cutterman",
        "child_desc": "最好用的切图工具,它是免费的,就是这么任性! 此站很多神器。"
      },
      {
        "child_name": "FontConverter",
        "img_src": "./img/FontConverter.png",
        "a_href": "http://www.freefontconverter.com/#&linkId=404",
        "child_desc": "将字体转成网页webfont专用字体"
      },
      {
        "child_name": "font-face generator",
        "img_src": "./img/font-face-generator.png",
        "a_href": "https://everythingfonts.com/font-face",
        "child_desc": "@font-face网页字体文件格式转换"
      },
      {
        "child_name": "TinyPNG",
        "img_src": "./img/tinypng.png",
        "a_href": "https://tinypng.com/",
        "child_desc": "超完美PNG压缩工具"
      },
      {
        "child_name": "BrowserFrame",
        "img_src": "./img/browserframe.png",
        "a_href": "https://browserframe.com/",
        "child_desc": "一个生成浏览器外壳的网站，它提供了两种方式来生成截图"
      },
      {
        "child_name": "Screen Guru",
        "img_src": "./img/screenguru.png",
        "a_href": "https://screen.guru",
        "child_desc": "实现通过网址生成截图功能"
      },
      {
        "child_name": "Carbon",
        "img_src": "./img/carbon.png",
        "a_href": "https://carbon.now.sh",
        "child_desc": "代码界美图秀秀,装逼用"
      },
      {
        "child_name": "easy PDF",
        "img_src": "./img/easypdf.png",
        "a_href": "https://easypdf.com/cn",
        "child_desc": "在线 PDF 转换工具"
      },
      {
        "child_name": "有道云笔记",
        "img_src": "./img/youdaonote.png",
        "a_href": "https://note.youdao.com/web",
        "child_desc": "个人觉得比印象笔记好用的云笔记"
      },
      {
        "child_name": "SVG To PNG",
        "img_src": "./img/svgtopng.png",
        "a_href": "https://svgtopng.com/zh/",
        "child_desc": "免费在线SVG转PNG网站"
      },
      {
        "child_name": " Awesome Windows",
        "img_src": "./img/frontend-notebook.png",
        "a_href": "https://github.com/Awesome-Windows/Awesome/blob/master/README-cn.md",
        "child_desc": "Windows上优质&精选的最佳应用程序及工具列表。"
      }
    ]
  },
  {
    "Category_id": "conference",
    "category_CN": "前端大会",
    "category_icon": "icon-huizong",
    "category_item": "conferenceItem",
    "item_children": [
      {
        "child_name": "JS 中国开发者大会",
        "img_src": "./img/jsconfchina.png",
        "a_href": "https://jsconfchina.com/",
        "child_desc": "一场专注于JavaScript和Node.js技术的国际性大会"
      },
      {
        "child_name": "中国 CSS 开发者大会",
        "img_src": "./img/cssw3ctech.png",
        "a_href": "https://css.w3ctech.com/",
        "child_desc": "提高css开发姿势的大会。"
      },
      {
        "child_name": "前端圈",
        "img_src": "./img/fequan.png",
        "a_href": "https://fequan.com/",
        "child_desc": "打造专业的前端技术会议"
      },
      {
        "child_name": "D2前端技术论坛",
        "img_src": "./img/d2forum.png",
        "a_href": "http://d2forum.alibaba-inc.com/",
        "child_desc": "阿里巴巴举办，分享技术的乐趣，探讨行业的发展。"
      },
      {
        "child_name": "Vue.js开发者大会",
        "img_src": "./img/vuew3ctech.png",
        "a_href": "https://vue.w3ctech.com/",
        "child_desc": "Vue.js开发者大会 中国站"
      },
      {
        "child_name": "feexp前端体验大会",
        "img_src": "./img/feexp.png",
        "a_href": "http://feexp.org/",
        "child_desc": "创办于2007年的Webrebuild交流组织团体于2015年更名为「前端体验大会」"
      }
    ]
  },
  {
    "Category_id": "contentManagement",
    "category_CN": "内容管理",
    "category_icon": "icon-neirongguanli",
    "category_item": "contentManagementItem",
    "item_children": [
      {
        "child_name": "WordPress",
        "img_src": "./img/wordpress.png",
        "a_href": "https://cn.wordpress.org/",
        "child_desc": "WordPress是使用PHP语言开发的博客平台，用户可以在支持PHP和MySQL数据库的服务器上架设属于自己的网站。"
      },
      {
        "child_name": "Hexo",
        "img_src": "./img/hexo.png",
        "a_href": "https://hexo.io/zh-cn/",
        "child_desc": "快速、简洁且高效的博客框架"
      },
      {
        "child_name": "GitHub Pages",
        "img_src": "./img/GitHubPages.png",
        "a_href": "https://pages.github.com/",
        "child_desc": "Github Pages是Github免费提供给开发者的一款托管个人网站的产品。"
      },
      {
        "child_name": "Jekyll",
        "img_src": "./img/jekyll.png",
        "a_href": "https://www.jekyll.com.cn/",
        "child_desc": "将纯文本转化为静态网站和博客"
      },
      {
        "child_name": "Wix",
        "img_src": "./img/wix.png",
        "a_href": "https://www.wix.com",
        "child_desc": "免费的响应式商业化建站方案"
      },
      {
        "child_name": "VuePress",
        "img_src": "./img/vuepress.png",
        "a_href": "https://www.vuepress.cn/",
        "child_desc": "Vue 驱动的静态站点生成工具"
      },
      {
        "child_name": "Docusaurus",
        "img_src": "./img/docusaurus.png",
        "a_href": "https://docusaurus.io/",
        "child_desc": "Facebook出品的 简单的开源文档站点生成器"
      },
      {
        "child_name": "docsify",
        "img_src": "./img/docsify.png",
        "a_href": "https://docsify.js.org/#/zh-cn/",
        "child_desc": "一个神奇的文档站点生成器 简单轻巧"
      },
      {
        "child_name": "Wiki js",
        "img_src": "./img/wikijs.png",
        "a_href": "https://wiki.js.org/",
        "child_desc": "一个基于 NodeJS, Git 和 Markdown 的轻量级、现代化以及强大的 WIKI APP 生成工具"
      },
      {
        "child_name": "GitBook",
        "img_src": "./img/gitbook.png",
        "a_href": "https://www.gitbook.com/",
        "child_desc": "GitBook 是一个基于 Node.js 的命令行工具，可使用 Github/Git 和 Markdown 来制作精美的电子书"
      }
    ]
  },
  {
    "Category_id": "someWebsite",
    "category_CN": "一些网站",
    "category_icon": "icon-qita",
    "category_item": "someWebsiteItem",
    "item_children": [
      {
        "child_name": "免费资源网络社区",
        "img_src": "./img/free.png",
        "a_href": "https://free.com.tw/",
        "child_desc": "一个以免费为主题的台湾网站、部落格，内容包含科技新知、免费软体、线上工具、图库素材、WordPress 架站及应用程式介绍教学"
      },
      {
        "child_name": "吾爱破解",
        "img_src": "./img/52pojie.png",
        "a_href": "https://www.52pojie.cn/",
        "child_desc": "吾爱破解论坛致力于软件安全与病毒分析的前沿，丰富的技术版块交相辉映，由无数热衷于软件加密解密及反病毒爱好者共同维护"
      },
      {
        "child_name": "全能VIP视频在线解析",
        "img_src": "./img/liumingyevideo.png",
        "a_href": "http://tool.liumingye.cn/video/",
        "child_desc": "优酷VIP解析,爱奇艺VIP解析,腾讯VIP解析,乐视VIP解析,芒果VIP解析,视频解析,全能VIP视频解析,视频在线解析"
      },
      {
        "child_name": "MSDN，我告诉你",
        "img_src": "./img/itellyou.png",
        "a_href": "https://msdn.itellyou.cn/",
        "child_desc": "主要分享微软旗下产品，在这里可以下载到纯净版Windows系统、Office办公软件以及微软其它应用程序"
      },
      {
        "child_name": "走114查询网",
        "img_src": "./img/zou114.png",
        "a_href": "http://www.zou114.com/",
        "child_desc": "提供常见与不常见的查询，说不定哪天就用上"
      },
      {
        "child_name": "大眼仔旭",
        "img_src": "./img/dayanzai.png",
        "a_href": "http://www.dayanzai.me/",
        "child_desc": "主要分享各种Win平台实用工具，涵盖：图形图像、屏幕录像、网络软件、办公软件、格式转换、系统工具……以及各类实用的安卓应用软件"
      },
      {
        "child_name": "Smallpdf",
        "img_src": "./img/cowtransfer.png",
        "a_href": "https://cowtransfer.com/",
        "child_desc": "据说该网站是全世界浏览人数最多的PDF格式转换网站，网站中包含18种与PDF相关的转换方式，功能一应俱全、绝对是简单好用的线上 PDF 处理工具"
      },
      {
        "child_name": "奶牛快传",
        "img_src": "./img/smallpdf.png",
        "a_href": "https://smallpdf.com/cn",
        "child_desc": "一款临时文件传输平台"
      },
      {
        "child_name": "MikuTools-工具集合",
        "img_src": "./img/MikuTools.png",
        "a_href": "https://miku.tools/",
        "child_desc": "一个轻量的工具集合"
      }
    ]
  },
  {
    "Category_id": "environment",
    "category_CN": "作业环境",
    "category_icon": "icon-kaifahuanjingxinxi",
    "category_item": "environmentItem",
    "item_children": [
      {
        "child_name": "VS Code",
        "img_src": "./img/vscode.png",
        "a_href": "https://code.visualstudio.com/",
        "child_desc": "这个不多说，个人开发编辑器"
      },
      {
        "child_name": "Node.js",
        "img_src": "./img/nodeapp.png",
        "a_href": "http://nodejs.cn/download/",
        "child_desc": "JavaScript 运行环境"
      },
      {
        "child_name": "Git",
        "img_src": "./img/git.png",
        "a_href": "https://git-scm.com/",
        "child_desc": "版本控制工具"
      },
      {
        "child_name": "马克鳗",
        "img_src": "./img/markman.png",
        "a_href": "http://www.getmarkman.com/",
        "child_desc": "高效的设计稿标注、测量工具"
      },
      {
        "child_name": "PxCook",
        "img_src": "./img/pxcook.png",
        "a_href": "https://www.fancynode.com.cn/pxcook",
        "child_desc": "高效易用的自动标注工具, 生成前端代码"
      },
      {
        "child_name": "Bandizip",
        "img_src": "./img/bandizip.png",
        "a_href": "http://www.bandizip.com/",
        "child_desc": "个人最满意的压缩工具，没有之一"
      },
      {
        "child_name": "Typora",
        "img_src": "./img/typora.png",
        "a_href": "https://www.typora.io/",
        "child_desc": "一个适合新手的md编辑器，很好用"
      },
      {
        "child_name": "ScreenToGif",
        "img_src": "./img/ScreenToGif.png",
        "a_href": "https://www.screentogif.com/?l=zh_cn",
        "child_desc": "非常好用的gif生成器"
      },
      {
        "child_name": "Fences",
        "img_src": "./img/fences.png",
        "a_href": "https://www.stardock.com/products/fences/",
        "child_desc": "最好的桌面整理软件"
      },
      {
        "child_name": "Everything",
        "img_src": "./img/Everything.png",
        "a_href": "https://www.voidtools.com/zh-cn/",
        "child_desc": "快速定位本地资源文件"
      },
      {
        "child_name": "Listary",
        "img_src": "./img/listary.png",
        "a_href": "https://www.listary.com/",
        "child_desc": "文件名定位/搜索辅助软件"
      },
      {
        "child_name": "Snipaste",
        "img_src": "./img/snipaste.png",
        "a_href": "https://www.snipaste.com/",
        "child_desc": "最好用的截图软件，没有之一"
      },
      {
        "child_name": "Snipaste",
        "img_src": "./img/snipaste.png",
        "a_href": "https://www.snipaste.com/",
        "child_desc": "最好用的截图软件，没有之一"
      },
      {
        "child_name": "Snipaste",
        "img_src": "./img/snipaste.png",
        "a_href": "https://www.snipaste.com/",
        "child_desc": "最好用的截图软件，没有之一"
      }
    ]
  }
];
	
	var categoryHTML = template('CategoryId', { list: resArr });
    var navItemHTML = template('navItemId', { list: resArr });
    $('#navBar > ul').html(categoryHTML);
    $('#mainContent').html(navItemHTML);

    goTop()

    Echo.init({
      offset: 0,
      throttle: 500
    })
    // 监听图片加载完成
    var img_length = $('img').length
    $('img').on('load', () => {
      img_length--
      if (img_length >= 1) {
        return
      } else {
        NProgress.done()
      }
    })

  // ================================点击导航事件================================
  $('#navBar').on('click', 'li', function() {
    // 当前处在点击状态
    isClick = true;
    // $('#navBar li').each(function() {
    //   $(this).removeClass('active')
    // })
		// $(this).addClass('active')
		console.log(this);
    // 获取当前楼层名
    var floorId = $(this).attr('id');
		var floorName = floorId + 'Item';
		console.log(floorName);
    // 获取楼层高度
		var floorTop = $('#' + floorName).offset().top - 40
		console.log(floorTop);
    $('html,body')
      .stop()
      .animate(
        {
          scrollTop: floorTop
        },
        800,
        'linear',
        function () {
          setTimeout(function () {
            isClick = false;
          },800)
        }
      )
  })

  //==============================监听页面滚动事件================================
  // $(window).scroll(function() {
  //   // 获取屏幕滚动的高度
  //   var top = $('html,body').scrollTop() || $(window).scrollTop()
  //   // 判断页面是否手动滚动
  //   if (!isClick) {
  //     $('#mainContent > div').each(function() {
  //       // 获取当前盒子在浏览器的高度
  //       var floorHight = $(this).offset().top
  //       // 获取当前楼层id
  //       var floorName = $(this).attr('id')
  //       var floorId = floorName.substring(0, floorName.length - 4)
  //       // 设置楼层高度范围
  //       var floorTop = floorHight
  //       var floorFoot = floorHight + $('#' + floorId).height()
  //       if (top >= floorTop && top <= floorFoot) {
  //         $('#category li').each(function() {
  //           $(this).removeClass('active')
  //         })

  //         //修改顶部导航栏==========================================
  //         $('#' + floorId).addClass('active')
  //         var index = $('#category li').index(
  //           document.querySelector('#' + floorId)
  //         )
  //         var step = document.body.clientWidth / 3
  //         var moveL = (index - 1) * (step + 4)
  //         // 判断是否需要偏移
  //         if (index > 1) {
  //           $('#category ul').scrollLeft(moveL)
  //         } else {
  //           $('#category ul').scrollLeft(0)
  //         }
  //       }
  //     })
  //   } else {
  //     return false
  //   }
  // })

  // ============================返回顶部业务==============================
  function goTop() {
    let offset = 300,
      offset_opacity = 1200,
      scroll_top_duration = 700,
      $goTopBtn = $('.goTop')

    // c窗口滚动事件
    $(window).scroll(function() {
      $goTopBtn.removeClass('.goTop:hover')
      $(this).scrollTop() > offset
        ? $goTopBtn.addClass('btn-is-visible')
        : $goTopBtn.removeClass('btn-is-visible btn-fade-out')
      if ($(this).scrollTop() > offset_opacity) {
        $goTopBtn.addClass('btn-fade-out')
      }
    })

    // 返回顶部按钮点击事件
    $goTopBtn.on('click', function(event) {
      event.preventDefault()
      $('body,html').animate(
        {
          scrollTop: 0
        },
        scroll_top_duration
      )
    })
  }
})

