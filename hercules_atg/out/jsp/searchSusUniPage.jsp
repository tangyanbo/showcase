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
								<td>count</td>
								<td>
									<input type="text" id="search_count" name="search_count" class="easyui-textbox" value="${search_count}"/>
								</td>
								<td>trans_date</td>
								<td>
									<input type="text" id="search_trans_date" name="search_trans_date" class="easyui-textbox" value="${search_trans_date}"/>
								</td>
								<td>trans_amt</td>
								<td>
									<input type="text" id="search_trans_amt" name="search_trans_amt" class="easyui-textbox" value="${search_trans_amt}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>card_id</td>
								<td>
									<input type="text" id="search_card_id" name="search_card_id" class="easyui-textbox" value="${search_card_id}"/>
								</td>
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_id</td>
								<td>
									<input type="text" id="search_mer_id" name="search_mer_id" class="easyui-textbox" value="${search_mer_id}"/>
								</td>
								<td>mer_ord_id</td>
								<td>
									<input type="text" id="search_mer_ord_id" name="search_mer_ord_id" class="easyui-textbox" value="${search_mer_ord_id}"/>
								</td>
								<td>order_mer_id</td>
								<td>
									<input type="text" id="search_order_mer_id" name="search_order_mer_id" class="easyui-textbox" value="${search_order_mer_id}"/>
								</td>
								<td>date</td>
								<td>
									<input type="text" id="search_date" name="search_date" class="easyui-textbox" value="${search_date}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_susUni" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'COUNT',width:120,sortable:'true',align:'left'">count</th>
							<th data-options="field:'TRANS_DATE',width:120,sortable:'true',align:'left'">trans_date</th>
							<th data-options="field:'TRANS_AMT',width:120,sortable:'true',align:'left'">trans_amt</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'CARD_ID',width:120,sortable:'true',align:'left'">card_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_ID',width:120,sortable:'true',align:'left'">mer_id</th>
							<th data-options="field:'MER_ORD_ID',width:120,sortable:'true',align:'left'">mer_ord_id</th>
							<th data-options="field:'ORDER_MER_ID',width:120,sortable:'true',align:'left'">order_mer_id</th>
							<th data-options="field:'DATE',width:120,sortable:'true',align:'left'">date</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var susUni_list ={};
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
	susUni_list.buildQueryParams=function(){
	    $('#dg_susUni').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_count':$("input[name='search_count']").val(),
						 'search_trans_date':$("input[name='search_trans_date']").val(),
						 'search_trans_amt':$("input[name='search_trans_amt']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_card_id':$("input[name='search_card_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_id':$("input[name='search_mer_id']").val(),
						 'search_mer_ord_id':$("input[name='search_mer_ord_id']").val(),
						 'search_order_mer_id':$("input[name='search_order_mer_id']").val(),
						 'search_date':$("input[name='search_date']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		susUni_list.buildQueryParams();
		$('#dg_susUni').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_count']").val("");
			$("input[name='search_trans_date']").val("");
			$("input[name='search_trans_amt']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_order_id']").val("");
			$("input[name='search_card_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_id']").val("");
			$("input[name='search_mer_ord_id']").val("");
			$("input[name='search_order_mer_id']").val("");
			$("input[name='search_date']").val("");
		susUni_list.buildQueryParams();
		$('#dg_susUni').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSusUniFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUS_UNI',
		    width: 800,
		    height: 500,
		    href: 'addSusUniPage.action',
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
		    		$('#addSusUniFrom').form({   
						 url:'addSusUniAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									susUni_list.buildQueryParams();
									$('#dg_susUni').datagrid('load');
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
	susUni_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSusUniFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SusUni',
		    width: 800,
		    height: 500,
		    href: 'editSusUniPage.action',
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
		   				$('#editSusUniFrom').form({   
						 url:'editSusUniAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									susUni_list.buildQueryParams();
									$('#dg_susUni').datagrid('load');
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
		     			$('#delSusUniFrom').form({   
						 url:'delSusUniAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									susUni_list.buildQueryParams();
									$('#dg_susUni').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSusUniFrom').submit();
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
	susUni_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SusUni',
		    width: 800,
		    height: 500,
		    href: 'detailSusUniPage.action',
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