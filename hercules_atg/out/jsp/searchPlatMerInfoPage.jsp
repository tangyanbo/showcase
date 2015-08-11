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
														<td>plat_mer_id</td>
								<td>
									<input type="text" id="search_plat_mer_id" name="search_plat_mer_id" class="easyui-textbox" value="${search_plat_mer_id}"/>
								</td>
								<td>plat_mer_name</td>
								<td>
									<input type="text" id="search_plat_mer_name" name="search_plat_mer_name" class="easyui-textbox" value="${search_plat_mer_name}"/>
								</td>
								<td>mer_reg_no</td>
								<td>
									<input type="text" id="search_mer_reg_no" name="search_mer_reg_no" class="easyui-textbox" value="${search_mer_reg_no}"/>
								</td>
								<td>mer_tax_no</td>
								<td>
									<input type="text" id="search_mer_tax_no" name="search_mer_tax_no" class="easyui-textbox" value="${search_mer_tax_no}"/>
								</td>
								<td>legal_person</td>
								<td>
									<input type="text" id="search_legal_person" name="search_legal_person" class="easyui-textbox" value="${search_legal_person}"/>
								</td>
								<td>legal_idcard</td>
								<td>
									<input type="text" id="search_legal_idcard" name="search_legal_idcard" class="easyui-textbox" value="${search_legal_idcard}"/>
								</td>
								<td>contactor</td>
								<td>
									<input type="text" id="search_contactor" name="search_contactor" class="easyui-textbox" value="${search_contactor}"/>
								</td>
								<td>contact_phone</td>
								<td>
									<input type="text" id="search_contact_phone" name="search_contact_phone" class="easyui-textbox" value="${search_contact_phone}"/>
								</td>
								<td>contact_email</td>
								<td>
									<input type="text" id="search_contact_email" name="search_contact_email" class="easyui-textbox" value="${search_contact_email}"/>
								</td>
								<td>contact_addr</td>
								<td>
									<input type="text" id="search_contact_addr" name="search_contact_addr" class="easyui-textbox" value="${search_contact_addr}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>logo</td>
								<td>
									<input type="text" id="search_logo" name="search_logo" class="easyui-textbox" value="${search_logo}"/>
								</td>
								<td>color</td>
								<td>
									<input type="text" id="search_color" name="search_color" class="easyui-textbox" value="${search_color}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_platMerInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'PLAT_MER_ID',width:120,sortable:'true',align:'left'">plat_mer_id</th>
							<th data-options="field:'PLAT_MER_NAME',width:120,sortable:'true',align:'left'">plat_mer_name</th>
							<th data-options="field:'MER_REG_NO',width:120,sortable:'true',align:'left'">mer_reg_no</th>
							<th data-options="field:'MER_TAX_NO',width:120,sortable:'true',align:'left'">mer_tax_no</th>
							<th data-options="field:'LEGAL_PERSON',width:120,sortable:'true',align:'left'">legal_person</th>
							<th data-options="field:'LEGAL_IDCARD',width:120,sortable:'true',align:'left'">legal_idcard</th>
							<th data-options="field:'CONTACTOR',width:120,sortable:'true',align:'left'">contactor</th>
							<th data-options="field:'CONTACT_PHONE',width:120,sortable:'true',align:'left'">contact_phone</th>
							<th data-options="field:'CONTACT_EMAIL',width:120,sortable:'true',align:'left'">contact_email</th>
							<th data-options="field:'CONTACT_ADDR',width:120,sortable:'true',align:'left'">contact_addr</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'LOGO',width:120,sortable:'true',align:'left'">logo</th>
							<th data-options="field:'COLOR',width:120,sortable:'true',align:'left'">color</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var platMerInfo_list ={};
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
	platMerInfo_list.buildQueryParams=function(){
	    $('#dg_platMerInfo').datagrid({
			queryParams: {
						 'search_plat_mer_id':$("input[name='search_plat_mer_id']").val(),
						 'search_plat_mer_name':$("input[name='search_plat_mer_name']").val(),
						 'search_mer_reg_no':$("input[name='search_mer_reg_no']").val(),
						 'search_mer_tax_no':$("input[name='search_mer_tax_no']").val(),
						 'search_legal_person':$("input[name='search_legal_person']").val(),
						 'search_legal_idcard':$("input[name='search_legal_idcard']").val(),
						 'search_contactor':$("input[name='search_contactor']").val(),
						 'search_contact_phone':$("input[name='search_contact_phone']").val(),
						 'search_contact_email':$("input[name='search_contact_email']").val(),
						 'search_contact_addr':$("input[name='search_contact_addr']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_logo':$("input[name='search_logo']").val(),
						 'search_color':$("input[name='search_color']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		platMerInfo_list.buildQueryParams();
		$('#dg_platMerInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_plat_mer_id']").val("");
			$("input[name='search_plat_mer_name']").val("");
			$("input[name='search_mer_reg_no']").val("");
			$("input[name='search_mer_tax_no']").val("");
			$("input[name='search_legal_person']").val("");
			$("input[name='search_legal_idcard']").val("");
			$("input[name='search_contactor']").val("");
			$("input[name='search_contact_phone']").val("");
			$("input[name='search_contact_email']").val("");
			$("input[name='search_contact_addr']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_logo']").val("");
			$("input[name='search_color']").val("");
		platMerInfo_list.buildQueryParams();
		$('#dg_platMerInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addPlatMerInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'PLAT_MER_INFO',
		    width: 800,
		    height: 500,
		    href: 'addPlatMerInfoPage.action',
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
		    		$('#addPlatMerInfoFrom').form({   
						 url:'addPlatMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									platMerInfo_list.buildQueryParams();
									$('#dg_platMerInfo').datagrid('load');
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
	platMerInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editPlatMerInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'PlatMerInfo',
		    width: 800,
		    height: 500,
		    href: 'editPlatMerInfoPage.action',
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
		   				$('#editPlatMerInfoFrom').form({   
						 url:'editPlatMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									platMerInfo_list.buildQueryParams();
									$('#dg_platMerInfo').datagrid('load');
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
		     			$('#delPlatMerInfoFrom').form({   
						 url:'delPlatMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									platMerInfo_list.buildQueryParams();
									$('#dg_platMerInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delPlatMerInfoFrom').submit();
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
	platMerInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细PlatMerInfo',
		    width: 800,
		    height: 500,
		    href: 'detailPlatMerInfoPage.action',
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