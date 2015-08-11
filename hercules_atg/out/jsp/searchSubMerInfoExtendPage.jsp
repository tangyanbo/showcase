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
								<td>reg_cap</td>
								<td>
									<input type="text" id="search_reg_cap" name="search_reg_cap" class="easyui-textbox" value="${search_reg_cap}"/>
								</td>
								<td>sett_bank_code</td>
								<td>
									<input type="text" id="search_sett_bank_code" name="search_sett_bank_code" class="easyui-textbox" value="${search_sett_bank_code}"/>
								</td>
								<td>sett_bank_name</td>
								<td>
									<input type="text" id="search_sett_bank_name" name="search_sett_bank_name" class="easyui-textbox" value="${search_sett_bank_name}"/>
								</td>
								<td>channel</td>
								<td>
									<input type="text" id="search_channel" name="search_channel" class="easyui-textbox" value="${search_channel}"/>
								</td>
								<td>sign_date</td>
								<td>
									<input type="text" id="search_sign_date" name="search_sign_date" class="easyui-textbox" value="${search_sign_date}"/>
								</td>
								<td>sign_person</td>
								<td>
									<input type="text" id="search_sign_person" name="search_sign_person" class="easyui-textbox" value="${search_sign_person}"/>
								</td>
								<td>province</td>
								<td>
									<input type="text" id="search_province" name="search_province" class="easyui-textbox" value="${search_province}"/>
								</td>
								<td>city</td>
								<td>
									<input type="text" id="search_city" name="search_city" class="easyui-textbox" value="${search_city}"/>
								</td>
								<td>sett_bank_pro</td>
								<td>
									<input type="text" id="search_sett_bank_pro" name="search_sett_bank_pro" class="easyui-textbox" value="${search_sett_bank_pro}"/>
								</td>
								<td>sett_bank_city</td>
								<td>
									<input type="text" id="search_sett_bank_city" name="search_sett_bank_city" class="easyui-textbox" value="${search_sett_bank_city}"/>
								</td>
								<td>sett_super_bank_code</td>
								<td>
									<input type="text" id="search_sett_super_bank_code" name="search_sett_super_bank_code" class="easyui-textbox" value="${search_sett_super_bank_code}"/>
								</td>
								<td>sett_super_bank_name</td>
								<td>
									<input type="text" id="search_sett_super_bank_name" name="search_sett_super_bank_name" class="easyui-textbox" value="${search_sett_super_bank_name}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerInfoExtend" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'REG_CAP',width:120,sortable:'true',align:'left'">reg_cap</th>
							<th data-options="field:'SETT_BANK_CODE',width:120,sortable:'true',align:'left'">sett_bank_code</th>
							<th data-options="field:'SETT_BANK_NAME',width:120,sortable:'true',align:'left'">sett_bank_name</th>
							<th data-options="field:'CHANNEL',width:120,sortable:'true',align:'left'">channel</th>
							<th data-options="field:'SIGN_DATE',width:120,sortable:'true',align:'left'">sign_date</th>
							<th data-options="field:'SIGN_PERSON',width:120,sortable:'true',align:'left'">sign_person</th>
							<th data-options="field:'PROVINCE',width:120,sortable:'true',align:'left'">province</th>
							<th data-options="field:'CITY',width:120,sortable:'true',align:'left'">city</th>
							<th data-options="field:'SETT_BANK_PRO',width:120,sortable:'true',align:'left'">sett_bank_pro</th>
							<th data-options="field:'SETT_BANK_CITY',width:120,sortable:'true',align:'left'">sett_bank_city</th>
							<th data-options="field:'SETT_SUPER_BANK_CODE',width:120,sortable:'true',align:'left'">sett_super_bank_code</th>
							<th data-options="field:'SETT_SUPER_BANK_NAME',width:120,sortable:'true',align:'left'">sett_super_bank_name</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerInfoExtend_list ={};
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
	subMerInfoExtend_list.buildQueryParams=function(){
	    $('#dg_subMerInfoExtend').datagrid({
			queryParams: {
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_reg_cap':$("input[name='search_reg_cap']").val(),
						 'search_sett_bank_code':$("input[name='search_sett_bank_code']").val(),
						 'search_sett_bank_name':$("input[name='search_sett_bank_name']").val(),
						 'search_channel':$("input[name='search_channel']").val(),
						 'search_sign_date':$("input[name='search_sign_date']").val(),
						 'search_sign_person':$("input[name='search_sign_person']").val(),
						 'search_province':$("input[name='search_province']").val(),
						 'search_city':$("input[name='search_city']").val(),
						 'search_sett_bank_pro':$("input[name='search_sett_bank_pro']").val(),
						 'search_sett_bank_city':$("input[name='search_sett_bank_city']").val(),
						 'search_sett_super_bank_code':$("input[name='search_sett_super_bank_code']").val(),
						 'search_sett_super_bank_name':$("input[name='search_sett_super_bank_name']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerInfoExtend_list.buildQueryParams();
		$('#dg_subMerInfoExtend').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_reg_cap']").val("");
			$("input[name='search_sett_bank_code']").val("");
			$("input[name='search_sett_bank_name']").val("");
			$("input[name='search_channel']").val("");
			$("input[name='search_sign_date']").val("");
			$("input[name='search_sign_person']").val("");
			$("input[name='search_province']").val("");
			$("input[name='search_city']").val("");
			$("input[name='search_sett_bank_pro']").val("");
			$("input[name='search_sett_bank_city']").val("");
			$("input[name='search_sett_super_bank_code']").val("");
			$("input[name='search_sett_super_bank_name']").val("");
		subMerInfoExtend_list.buildQueryParams();
		$('#dg_subMerInfoExtend').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerInfoExtendFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_INFO_EXTEND',
		    width: 800,
		    height: 500,
		    href: 'addSubMerInfoExtendPage.action',
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
		    		$('#addSubMerInfoExtendFrom').form({   
						 url:'addSubMerInfoExtendAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerInfoExtend_list.buildQueryParams();
									$('#dg_subMerInfoExtend').datagrid('load');
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
	subMerInfoExtend_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerInfoExtendFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerInfoExtend',
		    width: 800,
		    height: 500,
		    href: 'editSubMerInfoExtendPage.action',
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
		   				$('#editSubMerInfoExtendFrom').form({   
						 url:'editSubMerInfoExtendAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerInfoExtend_list.buildQueryParams();
									$('#dg_subMerInfoExtend').datagrid('load');
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
		     			$('#delSubMerInfoExtendFrom').form({   
						 url:'delSubMerInfoExtendAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerInfoExtend_list.buildQueryParams();
									$('#dg_subMerInfoExtend').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerInfoExtendFrom').submit();
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
	subMerInfoExtend_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerInfoExtend',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerInfoExtendPage.action',
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