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
														<td>name</td>
								<td>
									<input type="text" id="search_name" name="search_name" class="easyui-textbox" value="${search_name}"/>
								</td>
								<td>increment</td>
								<td>
									<input type="text" id="search_increment" name="search_increment" class="easyui-textbox" value="${search_increment}"/>
								</td>
								<td>min_value</td>
								<td>
									<input type="text" id="search_min_value" name="search_min_value" class="easyui-textbox" value="${search_min_value}"/>
								</td>
								<td>max_value</td>
								<td>
									<input type="text" id="search_max_value" name="search_max_value" class="easyui-textbox" value="${search_max_value}"/>
								</td>
								<td>cur_value</td>
								<td>
									<input type="text" id="search_cur_value" name="search_cur_value" class="easyui-textbox" value="${search_cur_value}"/>
								</td>
								<td>cycle</td>
								<td>
									<input type="text" id="search_cycle" name="search_cycle" class="easyui-textbox" value="${search_cycle}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_sequence" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'NAME',width:120,sortable:'true',align:'left'">name</th>
							<th data-options="field:'INCREMENT',width:120,sortable:'true',align:'left'">increment</th>
							<th data-options="field:'MIN_VALUE',width:120,sortable:'true',align:'left'">min_value</th>
							<th data-options="field:'MAX_VALUE',width:120,sortable:'true',align:'left'">max_value</th>
							<th data-options="field:'CUR_VALUE',width:120,sortable:'true',align:'left'">cur_value</th>
							<th data-options="field:'CYCLE',width:120,sortable:'true',align:'left'">cycle</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var sequence_list ={};
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
	sequence_list.buildQueryParams=function(){
	    $('#dg_sequence').datagrid({
			queryParams: {
						 'search_name':$("input[name='search_name']").val(),
						 'search_increment':$("input[name='search_increment']").val(),
						 'search_min_value':$("input[name='search_min_value']").val(),
						 'search_max_value':$("input[name='search_max_value']").val(),
						 'search_cur_value':$("input[name='search_cur_value']").val(),
						 'search_cycle':$("input[name='search_cycle']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		sequence_list.buildQueryParams();
		$('#dg_sequence').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_name']").val("");
			$("input[name='search_increment']").val("");
			$("input[name='search_min_value']").val("");
			$("input[name='search_max_value']").val("");
			$("input[name='search_cur_value']").val("");
			$("input[name='search_cycle']").val("");
		sequence_list.buildQueryParams();
		$('#dg_sequence').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSequenceFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'sequence',
		    width: 800,
		    height: 500,
		    href: 'addSequencePage.action',
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
		    		$('#addSequenceFrom').form({   
						 url:'addSequenceAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sequence_list.buildQueryParams();
									$('#dg_sequence').datagrid('load');
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
	sequence_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSequenceFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'Sequence',
		    width: 800,
		    height: 500,
		    href: 'editSequencePage.action',
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
		   				$('#editSequenceFrom').form({   
						 url:'editSequenceAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sequence_list.buildQueryParams();
									$('#dg_sequence').datagrid('load');
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
		     			$('#delSequenceFrom').form({   
						 url:'delSequenceAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sequence_list.buildQueryParams();
									$('#dg_sequence').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSequenceFrom').submit();
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
	sequence_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细Sequence',
		    width: 800,
		    height: 500,
		    href: 'detailSequencePage.action',
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