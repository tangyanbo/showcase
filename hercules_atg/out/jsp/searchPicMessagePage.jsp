<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/common/base.jsp"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>证大财富统一支付管理系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<%@ include file="/common/jsCssInclude.jsp"%>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	</head>
<body class="easyui-layout">
			<!--搜索栏开始-->
			<div class="easyui-panel" title="查询条件" style="padding:5px;height:120px;margin: 0px;" data-options="region:'north'">
				<form id="searchForm" name="searchForm" method="post" >
					<table cellpadding="5">
														<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>pic_name</td>
								<td>
									<input type="text" id="search_pic_name" name="search_pic_name" class="easyui-textbox" value="${search_pic_name}"/>
								</td>
								<td>pic_type</td>
								<td>
									<input type="text" id="search_pic_type" name="search_pic_type" class="easyui-textbox" value="${search_pic_type}"/>
								</td>
								<td>mer_order_id</td>
								<td>
									<input type="text" id="search_mer_order_id" name="search_mer_order_id" class="easyui-textbox" value="${search_mer_order_id}"/>
								</td>
								<td>linux_path</td>
								<td>
									<input type="text" id="search_linux_path" name="search_linux_path" class="easyui-textbox" value="${search_linux_path}"/>
								</td>
								<td>pic_path</td>
								<td>
									<input type="text" id="search_pic_path" name="search_pic_path" class="easyui-textbox" value="${search_pic_path}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>update_time</td>
								<td>
									<input type="text" id="search_update_time" name="search_update_time" class="easyui-textbox" value="${search_update_time}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_picMessage" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'PIC_NAME',width:120,sortable:'true',align:'left'">pic_name</th>
							<th data-options="field:'PIC_TYPE',width:120,sortable:'true',align:'left'">pic_type</th>
							<th data-options="field:'MER_ORDER_ID',width:120,sortable:'true',align:'left'">mer_order_id</th>
							<th data-options="field:'LINUX_PATH',width:120,sortable:'true',align:'left'">linux_path</th>
							<th data-options="field:'PIC_PATH',width:120,sortable:'true',align:'left'">pic_path</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'UPDATE_TIME',width:120,sortable:'true',align:'left'">update_time</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var picMessage_list ={};
var toolbar = [{
				id : 'search_btn',
				text : '查询',
				iconCls : 'icon-search'
			},'-',{
				id : 'clear_btn',
				text : '清除',
				iconCls : 'icon-remove'
			}];
jQuery(function($){
	//定义构造查询
	picMessage_list.buildQueryParams=function(){
	    $('#dg_picMessage').datagrid({
			queryParams: {
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_pic_name':$("input[name='search_pic_name']").val(),
						 'search_pic_type':$("input[name='search_pic_type']").val(),
						 'search_mer_order_id':$("input[name='search_mer_order_id']").val(),
						 'search_linux_path':$("input[name='search_linux_path']").val(),
						 'search_pic_path':$("input[name='search_pic_path']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_update_time':$("input[name='search_update_time']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		picMessage_list.buildQueryParams();
		$('#dg_picMessage').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_pic_name']").val("");
			$("input[name='search_pic_type']").val("");
			$("input[name='search_mer_order_id']").val("");
			$("input[name='search_linux_path']").val("");
			$("input[name='search_pic_path']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_update_time']").val("");
		picMessage_list.buildQueryParams();
		$('#dg_picMessage').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addPicMessageFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'PIC_MESSAGE',
		    width: 800,
		    height: 500,
		    href: 'addPicMessagePage.action',
		    modal: true,
		    method: "POST",
		    extractor: function(data){
		    	var bodyPattern = /<body[^>]*>((.|[\n\r])*)<\/body>/im;
				var contentPattern = /<article\s+id="content"[^>]*>((.|[\n\r])*)<\/article>/im;
				var scriptPattern = /<script[^>]*>(.|[\n\r\t])*?<\/script>/gim;
				var buttonPattern = /<div\s+class="button-field[\s\w]*"[^>]*>(.|[\n\r\t])*?<\/div>/im;
				var matches = bodyPattern.exec(data);
				if (matches){
					var content = matches[1].match(contentPattern);
				    var scripts = matches[1].match(scriptPattern);
					return (content[1]||"").replace(scriptPattern,"").replace(buttonPattern,"") + (scripts||[]).join("");
				} else {
					return data;
				}
			},
			onClose: function(){
				$(this).dialog("destroy");
			},
		    buttons: [{
		    	text: "提  交",
		    	handler: function(e){
		    		$('#addPicMessageFrom').form({   
						 url:'addPicMessageAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									picMessage_list.buildQueryParams();
									$('#dg_picMessage').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    //validate and sbumit
					    if($(add_form_id).form("validate")==true){
						  	$.messager.progress();
							$(add_form_id).submit();
						};   
		    	}
		    },{
		    	text: "取 消",
		    	handler: function(e){
		    		$(this).dialog("close");
		    	}
		    }]
		});
	});
	
	//更新
	picMessage_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editPicMessageFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'PicMessage',
		    width: 800,
		    height: 500,
		    href: 'editPicMessagePage.action',
		    modal: true,
		    method: "POST",
		    params:{pkid:pkid},
		    extractor: function(data){
		    	var bodyPattern = /<body[^>]*>((.|[\n\r])*)<\/body>/im;
				var contentPattern = /<article\s+id="content"[^>]*>((.|[\n\r])*)<\/article>/im;
				var scriptPattern = /<script[^>]*>(.|[\n\r\t])*?<\/script>/gim;
				var buttonPattern = /<div\s+class="button-field[\s\w]*"[^>]*>(.|[\n\r\t])*?<\/div>/im;
				var matches = bodyPattern.exec(data);
				if (matches){
					var content = matches[1].match(contentPattern);
				    var scripts = matches[1].match(scriptPattern);
					return (content[1]||"").replace(scriptPattern,"").replace(buttonPattern,"") + (scripts||[]).join("");
				} else {
					return data;
				}
			},
			onClose: function(){
				$(this).dialog("destroy");
			},
		    buttons: [{
		    	text: "保  存",
		    	handler: function(e){
		   				$('#editPicMessageFrom').form({   
						 url:'editPicMessageAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									picMessage_list.buildQueryParams();
									$('#dg_picMessage').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    //validate and sbumit
					    if($(edit_form_id).form("validate")==true){
						  	$.messager.progress();
							$(edit_form_id).submit();
						};   
		    		
		    	}
		    }
		    ,{
		    	text: "删  除",
		     	handler: function(e){
		     			$('#delPicMessageFrom').form({   
						 url:'delPicMessageAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									picMessage_list.buildQueryParams();
									$('#dg_picMessage').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delPicMessageFrom').submit();
		    	}
		     }
		    ,{
		    	text: "取 消",
		    	handler: function(e){
		    		$(this).dialog("close");
		    	}
		    }]
		});
	}
	
	//详细
	picMessage_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细PicMessage',
		    width: 800,
		    height: 500,
		    href: 'detailPicMessagePage.action',
		    modal: true,
		    method: "POST",
		    params:{pkid:pkid},
		    extractor: function(data){
		    	var bodyPattern = /<body[^>]*>((.|[\n\r])*)<\/body>/im;
				var contentPattern = /<article\s+id="content"[^>]*>((.|[\n\r])*)<\/article>/im;
				var scriptPattern = /<script[^>]*>(.|[\n\r\t])*?<\/script>/gim;
				var buttonPattern = /<div\s+class="button-field[\s\w]*"[^>]*>(.|[\n\r\t])*?<\/div>/im;
				var matches = bodyPattern.exec(data);
				if (matches){
					var content = matches[1].match(contentPattern);
				    var scripts = matches[1].match(scriptPattern);
					return (content[1]||"").replace(scriptPattern,"").replace(buttonPattern,"") + (scripts||[]).join("");
				} else {
					return data;
				}
			},
			onClose: function(){
				$(this).dialog("destroy");
			},
		    buttons: [{
		    	text: "提  交",
		    	handler: function(e){
		    		var ThisForm = $(this).find("form");
		    	}
		    },{
		    	text: "关闭",
		    	handler: function(e){
		    		$(this).dialog("close");
		    	}
		    }]
		});
	}
	
	
});

</script>
</body>
</html>