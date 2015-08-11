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
														<td>id</td>
								<td>
									<input type="text" id="search_id" name="search_id" class="easyui-textbox" value="${search_id}"/>
								</td>
								<td>mid</td>
								<td>
									<input type="text" id="search_mid" name="search_mid" class="easyui-textbox" value="${search_mid}"/>
								</td>
								<td>mer_type</td>
								<td>
									<input type="text" id="search_mer_type" name="search_mer_type" class="easyui-textbox" value="${search_mer_type}"/>
								</td>
								<td>login_name</td>
								<td>
									<input type="text" id="search_login_name" name="search_login_name" class="easyui-textbox" value="${search_login_name}"/>
								</td>
								<td>op_desc</td>
								<td>
									<input type="text" id="search_op_desc" name="search_op_desc" class="easyui-textbox" value="${search_op_desc}"/>
								</td>
								<td>op_url</td>
								<td>
									<input type="text" id="search_op_url" name="search_op_url" class="easyui-textbox" value="${search_op_url}"/>
								</td>
								<td>ip</td>
								<td>
									<input type="text" id="search_ip" name="search_ip" class="easyui-textbox" value="${search_ip}"/>
								</td>
								<td>ua</td>
								<td>
									<input type="text" id="search_ua" name="search_ua" class="easyui-textbox" value="${search_ua}"/>
								</td>
								<td>op_time</td>
								<td>
									<input type="text" id="search_op_time" name="search_op_time" class="easyui-textbox" value="${search_op_time}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_merOpLog" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MID',width:120,sortable:'true',align:'left'">mid</th>
							<th data-options="field:'MER_TYPE',width:120,sortable:'true',align:'left'">mer_type</th>
							<th data-options="field:'LOGIN_NAME',width:120,sortable:'true',align:'left'">login_name</th>
							<th data-options="field:'OP_DESC',width:120,sortable:'true',align:'left'">op_desc</th>
							<th data-options="field:'OP_URL',width:120,sortable:'true',align:'left'">op_url</th>
							<th data-options="field:'IP',width:120,sortable:'true',align:'left'">ip</th>
							<th data-options="field:'UA',width:120,sortable:'true',align:'left'">ua</th>
							<th data-options="field:'OP_TIME',width:120,sortable:'true',align:'left'">op_time</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merOpLog_list ={};
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
	merOpLog_list.buildQueryParams=function(){
	    $('#dg_merOpLog').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mid':$("input[name='search_mid']").val(),
						 'search_mer_type':$("input[name='search_mer_type']").val(),
						 'search_login_name':$("input[name='search_login_name']").val(),
						 'search_op_desc':$("input[name='search_op_desc']").val(),
						 'search_op_url':$("input[name='search_op_url']").val(),
						 'search_ip':$("input[name='search_ip']").val(),
						 'search_ua':$("input[name='search_ua']").val(),
						 'search_op_time':$("input[name='search_op_time']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merOpLog_list.buildQueryParams();
		$('#dg_merOpLog').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mid']").val("");
			$("input[name='search_mer_type']").val("");
			$("input[name='search_login_name']").val("");
			$("input[name='search_op_desc']").val("");
			$("input[name='search_op_url']").val("");
			$("input[name='search_ip']").val("");
			$("input[name='search_ua']").val("");
			$("input[name='search_op_time']").val("");
			$("input[name='search_remark']").val("");
		merOpLog_list.buildQueryParams();
		$('#dg_merOpLog').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerOpLogFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_OP_LOG',
		    width: 800,
		    height: 500,
		    href: 'addMerOpLogPage.action',
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
		    		$('#addMerOpLogFrom').form({   
						 url:'addMerOpLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merOpLog_list.buildQueryParams();
									$('#dg_merOpLog').datagrid('load');
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
	merOpLog_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerOpLogFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerOpLog',
		    width: 800,
		    height: 500,
		    href: 'editMerOpLogPage.action',
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
		   				$('#editMerOpLogFrom').form({   
						 url:'editMerOpLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merOpLog_list.buildQueryParams();
									$('#dg_merOpLog').datagrid('load');
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
		     			$('#delMerOpLogFrom').form({   
						 url:'delMerOpLogAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merOpLog_list.buildQueryParams();
									$('#dg_merOpLog').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerOpLogFrom').submit();
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
	merOpLog_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerOpLog',
		    width: 800,
		    height: 500,
		    href: 'detailMerOpLogPage.action',
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