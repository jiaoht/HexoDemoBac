---
title: 阅读量排行
date: 2019-08-13 09:48:36
comments: false
keywords: top,文章阅读量排行榜
description: 博客文章阅读量排行榜
---
<div id="top"></div>
<script src="//cdn1.lncld.net/static/js/3.0.4/av-min.js"></script>
<script>AV.initialize("E5AEfu0M1zGpBHc6kVtT2xt7-MdYXbMMI", "1ueBSY6qqEOgPiR0oG4V6Hkm");</script>
<script type="text/javascript">
  var time=0
  var title=""
  var url=""
  var query = new AV.Query('Counter');
  query.notEqualTo('id',0);
  query.descending('time');
  query.limit(1000);
  query.find().then(function (todo) {
    for (var i=0;i<1000;i++){
      var result=todo[i].attributes;
      time=result.time;
      title=result.title;
      url=result.url;
      var content="<a href='"+"https://reuixiy.github.io"+url+"'>"+title+"</a>"+"<br />"+"<font color='#555'>"+"阅读次数："+time+"</font>"+"<br /><br />";
      document.getElementById("top").innerHTML+=content
    }
  }, function (error) {
    console.log("error");
  });
</script>

<style>.post-description { display: none; }</style>
