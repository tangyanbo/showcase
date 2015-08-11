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
								<td>bank_id</td>
								<td>
									<input type="text" id="search_bank_id" name="search_bank_id" class="easyui-textbox" value="${search_bank_id}"/>
								</td>
								<td>bank_name</td>
								<td>
									<input type="text" id="search_bank_name" name="search_bank_name" class="easyui-textbox" value="${search_bank_name}"/>
								</td>
								<td>card_no_length</td>
								<td>
									<input type="text" id="search_card_no_length" name="search_card_no_length" class="easyui-textbox" value="${search_card_no_length}"/>
								</td>
								<td>card_bin</td>
								<td>
									<input type="text" id="search_card_bin" name="search_card_bin" class="easyui-textbox" value="${search_card_bin}"/>
								</td>
								<td>upop_flag</td>
								<td>
									<input type="text" id="search_upop_flag" name="search_upop_flag" class="easyui-textbox" value="${search_upop_flag}"/>
								</td>
								<td>card_type</td>
								<td>
									<input type="text" id="search_card_type" name="search_card_type" class="easyui-textbox" value="${search_card_type}"/>
								</td>
								<td>bank_short_name</td>
								<td>
									<input type="text" id="search_bank_short_name" name="search_bank_short_name" class="easyui-textbox" value="${search_bank_short_name}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_cardBin" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'BANK_ID',width:120,sortable:'true',align:'left'">bank_id</th>
							<th data-options="field:'BANK_NAME',width:120,sortable:'true',align:'left'">bank_name</th>
							<th data-options="field:'CARD_NO_LENGTH',width:120,sortable:'true',align:'left'">card_no_length</th>
							<th data-options="field:'CARD_BIN',width:120,sortable:'true',align:'left'">card_bin</th>
							<th data-options="field:'UPOP_FLAG',width:120,sortable:'true',align:'left'">upop_flag</th>
							<th data-options="field:'CARD_TYPE',width:120,sortable:'true',align:'left'">card_type</th>
							<th data-options="field:'BANK_SHORT_NAME',width:120,sortable:'true',align:'left'">bank_short_name</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var cardBin_list ={};
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
	cardBin_list.buildQueryParams=function(){
	    $('#dg_cardBin').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_bank_id':$("input[name='search_bank_id']").val(),
						 'search_bank_name':$("input[name='search_bank_name']").val(),
						 'search_card_no_length':$("input[name='search_card_no_length']").val(),
						 'search_card_bin':$("input[name='search_card_bin']").val(),
						 'search_upop_flag':$("input[name='search_upop_flag']").val(),
						 'search_card_type':$("input[name='search_card_type']").val(),
						 'search_bank_short_name':$("input[name='search_bank_short_name']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		cardBin_list.buildQueryParams();
		$('#dg_cardBin').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_bank_id']").val("");
			$("input[name='search_bank_name']").val("");
			$("input[name='search_card_no_length']").val("");
			$("input[name='search_card_bin']").val("");
			$("input[name='search_upop_flag']").val("");
			$("input[name='search_card_type']").val("");
			$("input[name='search_bank_short_name']").val("");
		cardBin_list.buildQueryParams();
		$('#dg_cardBin').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addCardBinFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CARD_BIN',
		    width: 800,
		    height: 500,
		    href: 'addCardBinPage.action',
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
		    		$('#addCardBinFrom').form({   
						 url:'addCardBinAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cardBin_list.buildQueryParams();
									$('#dg_cardBin').datagrid('load');
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
	cardBin_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editCardBinFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CardBin',
		    width: 800,
		    height: 500,
		    href: 'editCardBinPage.action',
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
		   				$('#editCardBinFrom').form({   
						 url:'editCardBinAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cardBin_list.buildQueryParams();
									$('#dg_cardBin').datagrid('load');
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
		     			$('#delCardBinFrom').form({   
						 url:'delCardBinAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cardBin_list.buildQueryParams();
									$('#dg_cardBin').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delCardBinFrom').submit();
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
	cardBin_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细CardBin',
		    width: 800,
		    height: 500,
		    href: 'detailCardBinPage.action',
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