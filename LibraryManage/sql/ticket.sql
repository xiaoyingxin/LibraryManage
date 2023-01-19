<!DOCTYPE html>













<html>
<head>
  <meta charset="utf-8">
  <meta name="description" content="">
  <meta name="Keywords" content="">
  <title>ticket.sql_BookManager_NowcoderGit_牛客网</title>
  <link rel="stylesheet" href="//static.nowcoder.com/nc/style/0.0.53/fontcustom/global/global.css">
<link rel="stylesheet" href="//static.nowcoder.com/nc/style/0.0.53/common/global.css">
<link rel="stylesheet" href="//static.nowcoder.com/nc/style/0.0.53/common/ui.css">
<link rel="stylesheet" href="//static.nowcoder.com/git/nowcoder/1.2.623/stylesheets-git/common/base.css">
  <link rel="stylesheet" href="//static.nowcoder.com/git/nowcoder/1.2.623/stylesheets-git/pages/project/project-commit.css">
  <link rel="stylesheet" href="//static.nowcoder.com/git/nowcoder/1.2.623/stylesheets-git/pages/project/colorful.css">
</head>
<body>

        
  
      <div class="nk-container    ">
    <div class="nowcoder-header js-nowcoder-header">
    <div class="header-main clearfix">
      <a class="nowcoder-logo" href="/" title="牛客网"></a>
      <ul class="nowcoder-navbar">
        <li  class="active"  data-type="home"><a href="/">首页</a></li>
        
        <li  data-type="tiku">
          <a href="https://www.nowcoder.com/contestRoom">题库</a>
          <ul class="sub-nav" data-type="tiku">
            <li><a href="https://www.nowcoder.com/contestRoom">公司真题</a></li>
            <li><a href="https://www.nowcoder.com/intelligentTest">专项练习</a></li>
            <li><a href="https://www.nowcoder.com/activity/oj">在线编程</a></li>
            <li><a href="https://www.nowcoder.com/mockexam/MockExam">模拟笔试</a></li>
            <li><a href="https://www.nowcoder.com/schoolbooks">教材全解</a></li>
            <li><a href="https://www.nowcoder.com/kaoyan">考研真题</a></li>
            <li><a href="https://www.nowcoder.com/finalexam">期末考题</a></li>
            <li><a href="https://www.nowcoder.com/activity/topics">精华专题</a></li>
            <li><a href="https://www.nowcoder.com/questionCenter">试题广场</a></li>
          </ul>
        </li>

       
          <li  data-type="ai-interview">
            <span class="ico-nav-new"></span>
            <a href="https://www.nowcoder.com/interview/ai/index">面试</a>
            <ul class="sub-nav" data-type="courses">
              <li><a href="https://www.nowcoder.com/interview/ai/index">AI模拟面试</a></li>
              <li><a href="https://www.nowcoder.com/interview/center">面经汇总</a></li>
            </ul>
          </li>
          <li  data-type="courses">
            <a href="https://www.nowcoder.com/courses">学习</a>
            <ul class="sub-nav" data-type="courses">
              <li><a href="https://www.nowcoder.com/courses">课程</a></li>
              <li><a href="https://www.nowcoder.com/blog/blogCenter">专栏 • 文章</a></li>
              <li><a href="https://www.nowcoder.com/project/recommend">项目实战</a></li>
              <li><a href="https://www.nowcoder.com/library">图书馆</a></li>
              <li><a href="https://www.nowcoder.com/stacks">技术栈</a></li>
            </ul>
          </li>

        <li  data-type="recommand"><a href="https://www.nowcoder.com/recommend">求职</a></li>
        <li  data-type="discuss">
          <a href="https://www.nowcoder.com/discuss">讨论区</a>
          <ul class="sub-nav" data-type="discuss">
            <li><a href="https://www.nowcoder.com/discuss">讨论区</a></li>
            <li><a href="https://www.nowcoder.com/circle">圈子</a></li>
          </ul>
        </li>
        <li  data-type="more">
          <a href="javascript:void(0);">发现</a>
          <ul class="sub-nav" data-type="more">
            <li><a href="https://ac.nowcoder.com/acm/home">竞赛</a></li>
            <li><a href="https://www.nowcoder.com/show-offer/index">Offer神器</a></li>
            <li><a href="/user/authentication">职业身份认证</a></li>
            <li><a href="https://www.nowcoder.com/nowcoders-expert">牛人堂</a></li>
            <li><a href="https://www.nowcoder.com/coin/index">牛币兑换中心</a></li>
          </ul>
        </li>
      </ul>

                    <ul class="nowcoder-navbar nowcoder-other-nav">
          <li class="nav-search-wrapper js-nav-search">
            <div class="search-input-wrap right">
              <label class="icon-search icon-search-btn"><i class="icon-nc-search2"></i></label>
              <input type="text" maxlength="255" placeholder="帖子、文章、试题、公司、牛友">
            </div>
          </li>
                      <li>
                    <a href="/home/resourcemap" class="icon-nc-nav">资源导航</a></li>
          <li><a href="https://www.nowcoder.com/app" class="icon-mobile-phone">APP</a></li>

                    <li class="nav-msg">
                                <a class="icon-envelope" href="https://www.nowcoder.com/sns/message/346228402/conversation-list" data-unread-conv="">消息</a>
                  </li>


        <li class="profile-item">
          <a href="https://www.nowcoder.com/profile" class="nav-profile"><div class="img-box"><img src="https://images.nowcoder.com/head/111m.png?x-oss-process=image/resize,m_mfit,h_100,w_100"/></div></a>
                  <div class="profile-hover-wrapper">
            <div class="profile-hover-info">
              <span>
                 <span class="profile-hover-name">xiaoxin000</span>
                              </span>
              <a href="https://www.nowcoder.com/profile" class="profile-hover-btn">个人主页</a>
            </div>
            <div class="item-profile-box">
              <a href="https://www.nowcoder.com/profile/346228402/resume" class="item-profile"><i class="hover-item-ico hover-item-ico1"></i>我的简历</a>
              <a href="https://www.nowcoder.com/profile/346228402/tests" class="item-profile"><i class="hover-item-ico hover-item-ico2"></i>刷题</a>
              <a href="https://www.nowcoder.com/profile/346228402/courses" class="item-profile"><i class="hover-item-ico hover-item-ico3"></i>课程</a>
              <a href="https://www.nowcoder.com/profile/346228402/project/mine" class="item-profile"><i class="hover-item-ico hover-item-ico4"></i>项目</a>
              <a href="https://www.nowcoder.com/profile/346228402/note" class="item-profile"><i class="hover-item-ico hover-item-ico5"></i>笔记</a>
              <a href="https://www.nowcoder.com/profile/346228402/myFollowings" class="item-profile"><i class="hover-item-ico hover-item-ico6"></i>收藏</a>
            </div>
            <div class="hover-accout-wrapper">
              <a href="https://www.nowcoder.com/profile/346228402/account"><i class="hover-item-ico hover-accout-icon"></i>账号设置</a>
              <a href="javascript:void(0);" class="nc-logout"><i class="hover-item-ico hover-accout-logout"></i>退出登录</a>
            </div>
          </div>
        </li>

      </ul>
          </div>
  </div>

        

<div class="nk-container">
  <div class="nk-main clearfix">

    <div class="module-box">
      <div class="module-body">
        <div class="git-hd">
  <ul class="git-count">

    
    <li>
              <a href="javascript:void(0);" class="js-git-watch-project"><i
            class="ico-watch"></i>Watch</a>
            <a href="/11000160/BookManager/watchers"
         class="js-git-watch-project-count">79</a>
    </li>


    <li>
              <a href="javascript:void(0);" class="js-git-star-project" data-type="1"><i
            class="ico-star"></i>Unstar</a>
            <a href="/11000160/BookManager/stargazers"
         class="js-git-star-project-count">257</a>
    </li>


                  <li>
          <a href="javascript:void(0);" class="js-git-fork-project" data-user-id="346228402"><i
              class="icon-nc-git-fork"></i>Fork</a>
          <a href="/11000160/BookManager/forkers"
             class="js-git-fork-project-count">573</a>
        </li>
          

  </ul>
  <div class="git-hd-author">
    <h3>
      <a href="https://www.nowcoder.com/profile/11000160/project/mine">牛客项目平台管家</a>
      <span>|</span>
      <a href="/11000160/BookManager">BookManager</a>
      
      
      
      
      <!--<a href="javascript:void(0);" class="git-edit"></a>-->

    </h3>
      </div>
  <div class="hd-author-info"></div>
</div>        <div class="commit-info-box">增加sql
</div>
        <div class="git-bd">
          <section>
            <div class="commit-file-detail">
              <div class="commit-file-hd clearfix">
                <div class="commit-file-type">
                  <span>ticket.sql</span>
                                  </div>
                <div class="commit-file-info">
                  <div class="commit-name">
                                        <a href="mailto:ls"
                       class="head-pic"
                       data-card-uid="0"
                       data-card-index="1"><img
                        src="http://static.nowcoder.com/images/weblogo/gray_logo/0.png"
                        alt="头像"></a>
                    <a class="js-nc-title-tips nk-txt-ellipsis level-color-1"
                       data-card-uid="0"
                       href="mailto:ls"
                       data-card-index="4" title="renjie">renjie</a>
                    
                  </div>
                  <a href="/11000160/BookManager/commit/5e46234f850fc1238270efd79676bcadb90d7132">5e46234f</a>
                  <div class="commit-file-info-box">

                    <span>1年前提交</span>
                  </div>
                </div>
              </div>
                            <div class="commit-file-bd nc-git-code">
                <pre style="overflow: auto"><div class="blob-viewer" data-type="simple">
<div class="file-content code js-syntax-highlight qa-file-content">
<div class="line-numbers">
<a class="diff-line-num" data-line-number="1" href="#L1" id="L1">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
1
</a>
<a class="diff-line-num" data-line-number="2" href="#L2" id="L2">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
2
</a>
<a class="diff-line-num" data-line-number="3" href="#L3" id="L3">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
3
</a>
<a class="diff-line-num" data-line-number="4" href="#L4" id="L4">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
4
</a>
<a class="diff-line-num" data-line-number="5" href="#L5" id="L5">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
5
</a>
<a class="diff-line-num" data-line-number="6" href="#L6" id="L6">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
6
</a>
<a class="diff-line-num" data-line-number="7" href="#L7" id="L7">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
7
</a>
<a class="diff-line-num" data-line-number="8" href="#L8" id="L8">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
8
</a>
<a class="diff-line-num" data-line-number="9" href="#L9" id="L9">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
9
</a>
<a class="diff-line-num" data-line-number="10" href="#L10" id="L10">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
10
</a>
<a class="diff-line-num" data-line-number="11" href="#L11" id="L11">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
11
</a>
<a class="diff-line-num" data-line-number="12" href="#L12" id="L12">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
12
</a>
<a class="diff-line-num" data-line-number="13" href="#L13" id="L13">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
13
</a>
<a class="diff-line-num" data-line-number="14" href="#L14" id="L14">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
14
</a>
<a class="diff-line-num" data-line-number="15" href="#L15" id="L15">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
15
</a>
<a class="diff-line-num" data-line-number="16" href="#L16" id="L16">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
16
</a>
<a class="diff-line-num" data-line-number="17" href="#L17" id="L17">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
17
</a>
<a class="diff-line-num" data-line-number="18" href="#L18" id="L18">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
18
</a>
<a class="diff-line-num" data-line-number="19" href="#L19" id="L19">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
19
</a>
<a class="diff-line-num" data-line-number="20" href="#L20" id="L20">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
20
</a>
<a class="diff-line-num" data-line-number="21" href="#L21" id="L21">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
21
</a>
<a class="diff-line-num" data-line-number="22" href="#L22" id="L22">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
22
</a>
<a class="diff-line-num" data-line-number="23" href="#L23" id="L23">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
23
</a>
<a class="diff-line-num" data-line-number="24" href="#L24" id="L24">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
24
</a>
<a class="diff-line-num" data-line-number="25" href="#L25" id="L25">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
25
</a>
<a class="diff-line-num" data-line-number="26" href="#L26" id="L26">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
26
</a>
<a class="diff-line-num" data-line-number="27" href="#L27" id="L27">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
27
</a>
<a class="diff-line-num" data-line-number="28" href="#L28" id="L28">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
28
</a>
<a class="diff-line-num" data-line-number="29" href="#L29" id="L29">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
29
</a>
<a class="diff-line-num" data-line-number="30" href="#L30" id="L30">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
30
</a>
<a class="diff-line-num" data-line-number="31" href="#L31" id="L31">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
31
</a>
<a class="diff-line-num" data-line-number="32" href="#L32" id="L32">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
32
</a>
<a class="diff-line-num" data-line-number="33" href="#L33" id="L33">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
33
</a>
<a class="diff-line-num" data-line-number="34" href="#L34" id="L34">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
34
</a>
<a class="diff-line-num" data-line-number="35" href="#L35" id="L35">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
35
</a>
<a class="diff-line-num" data-line-number="36" href="#L36" id="L36">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
36
</a>
<a class="diff-line-num" data-line-number="37" href="#L37" id="L37">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
37
</a>
<a class="diff-line-num" data-line-number="38" href="#L38" id="L38">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
38
</a>
<a class="diff-line-num" data-line-number="39" href="#L39" id="L39">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
39
</a>
<a class="diff-line-num" data-line-number="40" href="#L40" id="L40">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
40
</a>
<a class="diff-line-num" data-line-number="41" href="#L41" id="L41">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
41
</a>
<a class="diff-line-num" data-line-number="42" href="#L42" id="L42">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
42
</a>
<a class="diff-line-num" data-line-number="43" href="#L43" id="L43">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
43
</a>
<a class="diff-line-num" data-line-number="44" href="#L44" id="L44">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
44
</a>
<a class="diff-line-num" data-line-number="45" href="#L45" id="L45">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
45
</a>
<a class="diff-line-num" data-line-number="46" href="#L46" id="L46">
<i aria-hidden="true" data-hidden="true" class="fa fa-link"></i>
46
</a>
</div>
<div class="blob-content" data-blob-id="9e435b4bfe8a7cae20487122b76b9d1d3a920e1f">
<pre class="code highlight"><code><span id="LC1" class="line" lang="sql"><span class="o">#</span> <span class="o">************************************************************</span></span>
<span id="LC2" class="line" lang="sql"><span class="o">#</span> <span class="n">Sequel</span> <span class="n">Pro</span> <span class="k">SQL</span> <span class="n">dump</span></span>
<span id="LC3" class="line" lang="sql"><span class="o">#</span> <span class="k">Version</span> <span class="mi">4541</span></span>
<span id="LC4" class="line" lang="sql"><span class="o">#</span></span>
<span id="LC5" class="line" lang="sql"><span class="o">#</span> <span class="n">http</span><span class="p">:</span><span class="o">//</span><span class="n">www</span><span class="p">.</span><span class="n">sequelpro</span><span class="p">.</span><span class="n">com</span><span class="o">/</span></span>
<span id="LC6" class="line" lang="sql"><span class="o">#</span> <span class="n">https</span><span class="p">:</span><span class="o">//</span><span class="n">github</span><span class="p">.</span><span class="n">com</span><span class="o">/</span><span class="n">sequelpro</span><span class="o">/</span><span class="n">sequelpro</span></span>
<span id="LC7" class="line" lang="sql"><span class="o">#</span></span>
<span id="LC8" class="line" lang="sql"><span class="o">#</span> <span class="k">Host</span><span class="p">:</span> <span class="mi">127</span><span class="p">.</span><span class="mi">0</span><span class="p">.</span><span class="mi">0</span><span class="p">.</span><span class="mi">1</span> <span class="p">(</span><span class="n">MySQL</span> <span class="mi">5</span><span class="p">.</span><span class="mi">7</span><span class="p">.</span><span class="mi">21</span><span class="p">)</span></span>
<span id="LC9" class="line" lang="sql"><span class="o">#</span> <span class="k">Database</span><span class="p">:</span> <span class="n">test</span></span>
<span id="LC10" class="line" lang="sql"><span class="o">#</span> <span class="n">Generation</span> <span class="n">Time</span><span class="p">:</span> <span class="mi">2018</span><span class="o">-</span><span class="mi">08</span><span class="o">-</span><span class="mi">21</span> <span class="mi">07</span><span class="p">:</span><span class="mi">07</span><span class="p">:</span><span class="mi">52</span> <span class="o">+</span><span class="mi">0000</span></span>
<span id="LC11" class="line" lang="sql"><span class="o">#</span> <span class="o">************************************************************</span></span>
<span id="LC12" class="line" lang="sql"></span>
<span id="LC13" class="line" lang="sql"></span>
<span id="LC14" class="line" lang="sql"><span class="cm">/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */</span><span class="p">;</span></span>
<span id="LC15" class="line" lang="sql"><span class="cm">/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */</span><span class="p">;</span></span>
<span id="LC16" class="line" lang="sql"><span class="cm">/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */</span><span class="p">;</span></span>
<span id="LC17" class="line" lang="sql"><span class="cm">/*!40101 SET NAMES utf8 */</span><span class="p">;</span></span>
<span id="LC18" class="line" lang="sql"><span class="cm">/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */</span><span class="p">;</span></span>
<span id="LC19" class="line" lang="sql"><span class="cm">/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */</span><span class="p">;</span></span>
<span id="LC20" class="line" lang="sql"><span class="cm">/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */</span><span class="p">;</span></span>
<span id="LC21" class="line" lang="sql"></span>
<span id="LC22" class="line" lang="sql"></span>
<span id="LC23" class="line" lang="sql"><span class="o">#</span> <span class="n">Dump</span> <span class="k">of</span> <span class="k">table</span> <span class="n">ticket</span></span>
<span id="LC24" class="line" lang="sql"><span class="o">#</span> <span class="c1">------------------------------------------------------------</span></span>
<span id="LC25" class="line" lang="sql"></span>
<span id="LC26" class="line" lang="sql"><span class="k">DROP</span> <span class="k">TABLE</span> <span class="n">IF</span> <span class="k">EXISTS</span> <span class="nv">`ticket`</span><span class="p">;</span></span>
<span id="LC27" class="line" lang="sql"></span>
<span id="LC28" class="line" lang="sql"><span class="k">CREATE</span> <span class="k">TABLE</span> <span class="nv">`ticket`</span> <span class="p">(</span></span>
<span id="LC29" class="line" lang="sql">  <span class="nv">`id`</span> <span class="n">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="n">unsigned</span> <span class="k">NOT</span> <span class="k">NULL</span> <span class="n">AUTO_INCREMENT</span><span class="p">,</span></span>
<span id="LC30" class="line" lang="sql">  <span class="nv">`user_id`</span> <span class="n">int</span><span class="p">(</span><span class="mi">11</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></span>
<span id="LC31" class="line" lang="sql">  <span class="nv">`ticket`</span> <span class="n">varchar</span><span class="p">(</span><span class="mi">1024</span><span class="p">)</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></span>
<span id="LC32" class="line" lang="sql">  <span class="nv">`expired_at`</span> <span class="n">datetime</span> <span class="k">DEFAULT</span> <span class="k">NULL</span><span class="p">,</span></span>
<span id="LC33" class="line" lang="sql">  <span class="k">PRIMARY</span> <span class="k">KEY</span> <span class="p">(</span><span class="nv">`id`</span><span class="p">),</span></span>
<span id="LC34" class="line" lang="sql">  <span class="k">UNIQUE</span> <span class="k">KEY</span> <span class="nv">`uid`</span> <span class="p">(</span><span class="nv">`user_id`</span><span class="p">),</span></span>
<span id="LC35" class="line" lang="sql">  <span class="k">UNIQUE</span> <span class="k">KEY</span> <span class="nv">`t`</span> <span class="p">(</span><span class="nv">`ticket`</span><span class="p">)</span></span>
<span id="LC36" class="line" lang="sql"><span class="p">)</span> <span class="n">ENGINE</span><span class="o">=</span><span class="n">InnoDB</span> <span class="k">DEFAULT</span> <span class="n">CHARSET</span><span class="o">=</span><span class="n">utf8</span><span class="p">;</span></span>
<span id="LC37" class="line" lang="sql"></span>
<span id="LC38" class="line" lang="sql"></span>
<span id="LC39" class="line" lang="sql"></span>
<span id="LC40" class="line" lang="sql"></span>
<span id="LC41" class="line" lang="sql"><span class="cm">/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */</span><span class="p">;</span></span>
<span id="LC42" class="line" lang="sql"><span class="cm">/*!40101 SET SQL_MODE=@OLD_SQL_MODE */</span><span class="p">;</span></span>
<span id="LC43" class="line" lang="sql"><span class="cm">/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */</span><span class="p">;</span></span>
<span id="LC44" class="line" lang="sql"><span class="cm">/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */</span><span class="p">;</span></span>
<span id="LC45" class="line" lang="sql"><span class="cm">/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */</span><span class="p">;</span></span>
<span id="LC46" class="line" lang="sql"><span class="cm">/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */</span><span class="p">;</span></span></code></pre>
</div>
</div>


</div>
</pre>
              </div>
                          </div>
          </section>
        </div>
      </div>
    </div>
  </div>
</div>
            
        
<div class="ft-wrap js-nowcoder-footer">
    
    <div class="ft-cont clearfix">
        <div class="ft-app">
            <div class="ft-qrcode-box">
                <img src="https://uploadfiles.nowcoder.com/app/app_download.png">
            </div>
            <p>扫一扫，把题目装进口袋</p>
        </div>
        <dl class="ft-web-info">
            <dt class="ft-web-name">求职之前，先上牛客</dt>
            <dd>
                <a href="javascript:void(0);" class="ft-qq-ico">
                    <div class="tooltip top">
                        <div class="tooltip-arrow"></div>
                        <div class="tooltip-inner">
                            <img width="110" src="//uploadfiles.nowcoder.com/images/20180815/59_1534321710941_41A541F87AE349E1D829B1B0B95C955D">
                            <p>扫描二维码，进入QQ群</p>
                        </div>
                    </div>
                </a>
                <a href="javascript:void(0);" class="ft-wx-ico">
                    <div class="tooltip top">
                        <div class="tooltip-arrow"></div>
                        <div class="tooltip-inner">
                            <img width="110" src="//uploadfiles.nowcoder.com/images/20180815/59_1534321725995_22162F7114AC793718CC28F7F3F8B789">
                            <p>扫描二维码，关注牛客网公众号</p>
                        </div>
                    </div>
                </a>
                <a href="https://weibo.com/nowcoder" class="ft-wb-ico" target="_blank"></a>
                <a href="https://www.zhihu.com/org/niu-ke-wang-53/activities" class="ft-zh-ico" target="_blank"></a>
            </dd>
        </dl>
        <div class="ft-main">
            <ul class="ft-links">
                <li><a href="/html/aboutus">关于我们</a></li>
                <li><a href="/nowcoder/recruitment">加入我们</a></li>
                <li><a href="https://www.nowcoder.com/subject/index/b211632d69fd42f7b55aae38d4242fda">意见反馈</a></li>
                <li><a href="https://hr.nowcoder.com">企业服务</a></li>
                <li><a href="/html/cooperation">联系我们</a></li>
                <li><a href="/html/disclaimer">免责声明</a></li>
                <li><a href="/html/links">友情链接</a></li>
            </ul>
            <ul class="webrights">
                <li>公司地址：北京市朝阳区大屯路东金泉时代广场3单元</li>
                <li>联系方式：010-60728802(电话) <span class="contact-email">admin@nowcoder.com</span></li>
                <li>牛客科技©<span id="jsNCPageFooterYear"></span> All rights reserved</li>
                <li>
                    <a style="font-size:12px;" class="ft-info-item" target="_blank" href="http://www.beian.miit.gov.cn">京ICP备14055008号-4</>
                    <a style="font-size:12px;margin-left:20px" class="ft-info-item" target="_blank" href="https://uploadfiles.nowcoder.com/acts/icp.png">增值电信业务经营许可证</a>
                </li>
                <li>
                        <span style="color:#a9b8ca;">
                            <img src="//static.nowcoder.com/company/images/res/ghs.png" style="width:18px;height:18px;">
                            <a style="font-size:12px;" class="ft-info-item" target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502036488">京公网安备 11010502036488号</a>
                        </span>
                </li>
            </ul>
            <script>try{document.getElementById('jsNCPageFooterYear').innerHTML=new Date().getFullYear();}catch(e){}</script>
        </div>

    </div>
</div>


    
    <div class="living-layer js-global-tips" style="display:none;">
        <a href="javascript:void(0);" class="icon-nc-cancel"></a>
        <a class="cont js-global-tips-href" href="" target="_blank">
            <i class="icon-nc-play"></i>
            <div class="living-layer-cont">
                <p class="living-layer-title"></p>
                <p></p>
            </div>
        </a>
    </div>

    
    

</div>
    
<script>
        window.isLogin = true;
        window.globalInfo = {
                    ownerId: '346228402',
            ownerName: 'xiaoxin000',
            ownerTinyHead: 'https://images.nowcoder.com/head/111m.png?x-oss-process=image/resize,m_mfit,h_100,w_100',
            ownerMainHead: 'https://images.nowcoder.com/head/111m.png?x-oss-process=image/resize,m_mfit,h_200,w_200',
            ownerEmail:  true ,
            ownerPhone:  true ,
            ownerType: '1',
            status: '0',
            honorLevel: '5',
            gender: '',
                            isCompleteInfo: true,
                            canLoadInIframe: 'true'
    };
        	window.useNeteaseCaptcha = true;
    </script>
    
<script type="text/javascript">
window.ncDeployImageRoot = "//static.nowcoder.com/mobile";
window.ncJsVersion = "1.03.28";
window.ncJsPluginVersion = "1.0.17";
window.ncIsInNowcoderMainSite = true;
</script>
<script src="//static.nowcoder.com/nc/js/1.03.28/sea.js" type="text/javascript"></script>
<script type="text/javascript">
if (!window.seajs) {
    var oBody = document.body;
    var aChild = oBody.childNodes;
    var oDv = document.createElement('div');
    oDv.innerHTML = [
        '<div style="text-align:center;">',
            '<div style="font-size:18px;margin:20px 0;font-weight: bold;">',
                '静态文件加载出错，建议使用手机热点，如果想要彻底解决，请按照以下步骤修改电脑的DNS',
                '<br />推荐使用以下DNS: 223.5.5.5(首选) 和 223.6.6.6(备用)',
            '</div>',
            '<img style="border:1px solid #ccc;" src="//qqstatic.nowcoder.com/files/cdn.jpg" />',
        '</div>'].join('');
    aChild.length === 0 && oBody.appendChild(oDv);
    aChild.length > 0 && oBody.insertBefore(oDv, aChild[0]);
}
</script>
<script src="//static.nowcoder.com/nc/js/1.03.28/nc.cpn.js" type="text/javascript"></script>
<script src="//static.nowcoder.com/nc/js/1.03.28/plugin/pc/pc.js" type="text/javascript"></script>
<script src="//static.nowcoder.com/git/nowcoder/1.2.623/javascripts/base.js" type="text/javascript"></script>
<script type="text/javascript">
seajs.use('git/nowcoder/1.2.623/javascripts/site/common/index');
</script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?a808a1326b6c06c437de769d1b85b870";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

<script type="text/javascript">
  window.pageInfo = {
    currentPath: 'sql/ticket.sql',
    project: '526',
    projectName: 'BookManager',
    namespace: '11000160',

    visibility: '2',
    ref: 'master',
    indexUrl: window.location.host + '/11000160/BookManager'
  }
</script>
<script type="text/javascript">
  seajs.use('git/nowcoder/1.2.623/javascripts/site/git/blob');

</script>
</body>
</html>
