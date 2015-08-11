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
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>start_amt</td>
								<td>
									<input type="text" id="search_start_amt" name="search_start_amt" class="easyui-textbox" value="${search_start_amt}"/>
								</td>
								<td>end_amt</td>
								<td>
									<input type="text" id="search_end_amt" name="search_end_amt" class="easyui-textbox" value="${search_end_amt}"/>
								</td>
								<td>tract_id</td>
								<td>
									<input type="text" id="search_tract_id" name="search_tract_id" class="easyui-textbox" value="${search_tract_id}"/>
								</td>
								<td>reserved1</td>
								<td>
									<input type="text" id="search_reserved1" name="search_reserved1" class="easyui-textbox" value="${search_reserved1}"/>
								</td>
								<td>reserved2</td>
								<td>
									<input type="text" id="search_reserved2" name="search_reserved2" class="easyui-textbox" value="${search_reserved2}"/>
								</td>
								<td>reserved3</td>
								<td>
									<input type="text" id="search_reserved3" name="search_reserved3" class="easyui-textbox" value="${search_reserved3}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_rulesMerAmt" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'START_AMT',width:120,sortable:'true',align:'left'">start_amt</th>
							<th data-options="field:'END_AMT',width:120,sortable:'true',align:'left'">end_amt</th>
							<th data-options="field:'TRACT_ID',width:120,sortable:'true',align:'left'">tract_id</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var rulesMerAmt_list ={};
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
	rulesMerAmt_list.buildQueryParams=function(){
	    $('#dg_rulesMerAmt').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_start_amt':$("input[name='search_start_amt']").val(),
						 'search_end_amt':$("input[name='search_end_amt']").val(),
						 'search_tract_id':$("input[name='search_tract_id']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		rulesMerAmt_list.buildQueryParams();
		$('#dg_rulesMerAmt').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_start_amt']").val("");
			$("input[name='search_end_amt']").val("");
			$("input[name='search_tract_id']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
		rulesMerAmt_list.buildQueryParams();
		$('#dg_rulesMerAmt').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addRulesMerAmtFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'RULES_MER_AMT',
		    width: 800,
		    height: 500,
		    href: 'addRulesMerAmtPage.action',
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
		    		$('#addRulesMerAmtFrom').form({   
						 url:'addRulesMerAmtAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									rulesMerAmt_list.buildQueryParams();
									$('#dg_rulesMerAmt').datagrid('load');
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
	rulesMerAmt_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editRulesMerAmtFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'RulesMerAmt',
		    width: 800,
		    height: 500,
		    href: 'editRulesMerAmtPage.action',
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
		   				$('#editRulesMerAmtFrom').form({   
						 url:'editRulesMerAmtAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									rulesMerAmt_list.buildQueryParams();
									$('#dg_rulesMerAmt').datagrid('load');
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
		     			$('#delRulesMerAmtFrom').form({   
						 url:'delRulesMerAmtAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									rulesMerAmt_list.buildQueryParams();
									$('#dg_rulesMerAmt').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delRulesMerAmtFrom').submit();
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
	rulesMerAmt_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细RulesMerAmt',
		    width: 800,
		    height: 500,
		    href: 'detailRulesMerAmtPage.action',
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