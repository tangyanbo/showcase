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
														<td>auth_order_id</td>
								<td>
									<input type="text" id="search_auth_order_id" name="search_auth_order_id" class="easyui-textbox" value="${search_auth_order_id}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>remit_type</td>
								<td>
									<input type="text" id="search_remit_type" name="search_remit_type" class="easyui-textbox" value="${search_remit_type}"/>
								</td>
								<td>real_name</td>
								<td>
									<input type="text" id="search_real_name" name="search_real_name" class="easyui-textbox" value="${search_real_name}"/>
								</td>
								<td>id_num</td>
								<td>
									<input type="text" id="search_id_num" name="search_id_num" class="easyui-textbox" value="${search_id_num}"/>
								</td>
								<td>face_pic_path</td>
								<td>
									<input type="text" id="search_face_pic_path" name="search_face_pic_path" class="easyui-textbox" value="${search_face_pic_path}"/>
								</td>
								<td>auth_status</td>
								<td>
									<input type="text" id="search_auth_status" name="search_auth_status" class="easyui-textbox" value="${search_auth_status}"/>
								</td>
								<td>serial_no</td>
								<td>
									<input type="text" id="search_serial_no" name="search_serial_no" class="easyui-textbox" value="${search_serial_no}"/>
								</td>
								<td>terminal_id</td>
								<td>
									<input type="text" id="search_terminal_id" name="search_terminal_id" class="easyui-textbox" value="${search_terminal_id}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerAuthInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'AUTH_ORDER_ID',width:120,sortable:'true',align:'left'">auth_order_id</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'REMIT_TYPE',width:120,sortable:'true',align:'left'">remit_type</th>
							<th data-options="field:'REAL_NAME',width:120,sortable:'true',align:'left'">real_name</th>
							<th data-options="field:'ID_NUM',width:120,sortable:'true',align:'left'">id_num</th>
							<th data-options="field:'FACE_PIC_PATH',width:120,sortable:'true',align:'left'">face_pic_path</th>
							<th data-options="field:'AUTH_STATUS',width:120,sortable:'true',align:'left'">auth_status</th>
							<th data-options="field:'SERIAL_NO',width:120,sortable:'true',align:'left'">serial_no</th>
							<th data-options="field:'TERMINAL_ID',width:120,sortable:'true',align:'left'">terminal_id</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerAuthInfo_list ={};
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
	subMerAuthInfo_list.buildQueryParams=function(){
	    $('#dg_subMerAuthInfo').datagrid({
			queryParams: {
						 'search_auth_order_id':$("input[name='search_auth_order_id']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_remit_type':$("input[name='search_remit_type']").val(),
						 'search_real_name':$("input[name='search_real_name']").val(),
						 'search_id_num':$("input[name='search_id_num']").val(),
						 'search_face_pic_path':$("input[name='search_face_pic_path']").val(),
						 'search_auth_status':$("input[name='search_auth_status']").val(),
						 'search_serial_no':$("input[name='search_serial_no']").val(),
						 'search_terminal_id':$("input[name='search_terminal_id']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerAuthInfo_list.buildQueryParams();
		$('#dg_subMerAuthInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_auth_order_id']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_remit_type']").val("");
			$("input[name='search_real_name']").val("");
			$("input[name='search_id_num']").val("");
			$("input[name='search_face_pic_path']").val("");
			$("input[name='search_auth_status']").val("");
			$("input[name='search_serial_no']").val("");
			$("input[name='search_terminal_id']").val("");
		subMerAuthInfo_list.buildQueryParams();
		$('#dg_subMerAuthInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerAuthInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_AUTH_INFO',
		    width: 800,
		    height: 500,
		    href: 'addSubMerAuthInfoPage.action',
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
		    		$('#addSubMerAuthInfoFrom').form({   
						 url:'addSubMerAuthInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerAuthInfo_list.buildQueryParams();
									$('#dg_subMerAuthInfo').datagrid('load');
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
	subMerAuthInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerAuthInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerAuthInfo',
		    width: 800,
		    height: 500,
		    href: 'editSubMerAuthInfoPage.action',
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
		   				$('#editSubMerAuthInfoFrom').form({   
						 url:'editSubMerAuthInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerAuthInfo_list.buildQueryParams();
									$('#dg_subMerAuthInfo').datagrid('load');
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
		     			$('#delSubMerAuthInfoFrom').form({   
						 url:'delSubMerAuthInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerAuthInfo_list.buildQueryParams();
									$('#dg_subMerAuthInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerAuthInfoFrom').submit();
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
	subMerAuthInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerAuthInfo',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerAuthInfoPage.action',
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