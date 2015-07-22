<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/common.css'/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value='/theme/${theme}/css/zuoye.css'/>" />
<script src="<c:url value='/js/jquery-1.8.2.min.js'/>"></script>
<script>
$(function() {
	var fnames=new Array('英语学习','一对一作业','学习水平测试','智能题库','学习新视解');
	var ip="http://rout.ibook.sh";
	var paramFname=encodeURI("${fname}",'utf-8');
	for(var i in fnames){
		toLoadDate(encodeURI(fnames[i],'utf-8'))
	}
	var $leftContent=$(".Zcontent");
	var maps=[];
	function toLoadDate(fname){
		$.ajax({
			   type: "POST",
			   url: ip+"/routersys/getJson.do",
			   data: {filename:fname,filetype:'root'},
			   dataType:"jsonp",
			   jsonp: "callback",
			   success: function(data){
				   var $div=$('<dl class="ZYli"><dl>');
				   $div.append('<dt>'+data[0].rootnode+'</dt>');
				   var map=[];
				   for(var i in data){
					   var key=data[i].secondnode+"("+data[i].version+")";
					   var snid=data[i].snid;
					   if(map[key]){
						  map[key]=map[key]+","+snid;
						  
					   }else{
						  map[key]= snid;
						  $div.append('<dd><a href="#" class="tosds" id="'+snid+'" fname="'+fname+'" >'+key+'</dd>');
					   }
				   }
				   maps[fname]=map;
				   if(paramFname==fname){
					   for(var i in maps[fname]){
						   toLoadSecond(maps[fname][i],i);
					   }
				   }
				   $leftContent.append($div);
				}
			});
	}
	$(".tosds").live("click",function(){
		$(this).addClass("selected").parents().siblings().find('a').removeClass("selected")
		 $rightContent.html("");
		 var fname=$(this).attr("fname");
		 var key=$(this).text();
		 toLoadSecond(maps[fname][key],key);
	});
	
	var $rightContent=$(".RightCon");
	function toLoadSecond(fnames,secondnode){
		if(fnames!=''){
			var $div=$('<dl class="ZYdl"><dl>');
			$div.append('<dt>'+secondnode+'</dt>');
			var fn=fnames.split(",");
			for(var i in fn){
				var fname=fn[i];
				$.ajax({
					   type: "POST",
					   url: ip+"/routersys/getJson.do",
					   data: {filename:fname,filetype:'second'},
					   dataType:"jsonp",
					   jsonp: "callback",
					   success: function(data){
						   for(var i in data){
							   $div.append('<dd><a href="#" title="'+data[i].pname+'">'+data[i].pname+'</dd>');
						   }
					   }
					});
			}
			$div.append('<div class="clear"></div>');
			$rightContent.append($div).append('<div class="clear"></div>');
		}
	}
	
	$('.mubox').hover(
			function(){
				var that=this;
				itemTimer=setTimeout(function(){
					$(that).find(".fslideUp").animate({top:'-156px'},200,'linear');},500);
			},
			function(){
				var that=this;
				clearTimeout(itemTimer);
				$(that).find(".fslideUp").animate({top:"0px"},200,'linear');
			}
		);	
	
});
</script>

</head>

<body style="height:100%">
	<div class="ConMain">
		<div class="ConLeft">
			<div class="Ztitle">数字化产品分类</div>
			<div class="Zcontent">
				
			</div>
		</div>
		<div class="ConRight">
			<div class="RightCon">
			</div>
		</div>
	</div>
</body>
</html>
