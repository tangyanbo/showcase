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
														<td>sequence_name</td>
								<td>
									<input type="text" id="search_sequence_name" name="search_sequence_name" class="easyui-textbox" value="${search_sequence_name}"/>
								</td>
								<td>sequence_increment</td>
								<td>
									<input type="text" id="search_sequence_increment" name="search_sequence_increment" class="easyui-textbox" value="${search_sequence_increment}"/>
								</td>
								<td>sequence_min_value</td>
								<td>
									<input type="text" id="search_sequence_min_value" name="search_sequence_min_value" class="easyui-textbox" value="${search_sequence_min_value}"/>
								</td>
								<td>sequence_max_value</td>
								<td>
									<input type="text" id="search_sequence_max_value" name="search_sequence_max_value" class="easyui-textbox" value="${search_sequence_max_value}"/>
								</td>
								<td>sequence_cur_value</td>
								<td>
									<input type="text" id="search_sequence_cur_value" name="search_sequence_cur_value" class="easyui-textbox" value="${search_sequence_cur_value}"/>
								</td>
								<td>sequence_cycle</td>
								<td>
									<input type="text" id="search_sequence_cycle" name="search_sequence_cycle" class="easyui-textbox" value="${search_sequence_cycle}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_sequenceData" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SEQUENCE_NAME',width:120,sortable:'true',align:'left'">sequence_name</th>
							<th data-options="field:'SEQUENCE_INCREMENT',width:120,sortable:'true',align:'left'">sequence_increment</th>
							<th data-options="field:'SEQUENCE_MIN_VALUE',width:120,sortable:'true',align:'left'">sequence_min_value</th>
							<th data-options="field:'SEQUENCE_MAX_VALUE',width:120,sortable:'true',align:'left'">sequence_max_value</th>
							<th data-options="field:'SEQUENCE_CUR_VALUE',width:120,sortable:'true',align:'left'">sequence_cur_value</th>
							<th data-options="field:'SEQUENCE_CYCLE',width:120,sortable:'true',align:'left'">sequence_cycle</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var sequenceData_list ={};
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
	sequenceData_list.buildQueryParams=function(){
	    $('#dg_sequenceData').datagrid({
			queryParams: {
						 'search_sequence_name':$("input[name='search_sequence_name']").val(),
						 'search_sequence_increment':$("input[name='search_sequence_increment']").val(),
						 'search_sequence_min_value':$("input[name='search_sequence_min_value']").val(),
						 'search_sequence_max_value':$("input[name='search_sequence_max_value']").val(),
						 'search_sequence_cur_value':$("input[name='search_sequence_cur_value']").val(),
						 'search_sequence_cycle':$("input[name='search_sequence_cycle']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		sequenceData_list.buildQueryParams();
		$('#dg_sequenceData').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_sequence_name']").val("");
			$("input[name='search_sequence_increment']").val("");
			$("input[name='search_sequence_min_value']").val("");
			$("input[name='search_sequence_max_value']").val("");
			$("input[name='search_sequence_cur_value']").val("");
			$("input[name='search_sequence_cycle']").val("");
		sequenceData_list.buildQueryParams();
		$('#dg_sequenceData').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSequenceDataFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'sequence_data',
		    width: 800,
		    height: 500,
		    href: 'addSequenceDataPage.action',
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
		    		$('#addSequenceDataFrom').form({   
						 url:'addSequenceDataAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sequenceData_list.buildQueryParams();
									$('#dg_sequenceData').datagrid('load');
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
	sequenceData_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSequenceDataFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SequenceData',
		    width: 800,
		    height: 500,
		    href: 'editSequenceDataPage.action',
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
		   				$('#editSequenceDataFrom').form({   
						 url:'editSequenceDataAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sequenceData_list.buildQueryParams();
									$('#dg_sequenceData').datagrid('load');
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
		     			$('#delSequenceDataFrom').form({   
						 url:'delSequenceDataAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									sequenceData_list.buildQueryParams();
									$('#dg_sequenceData').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSequenceDataFrom').submit();
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
	sequenceData_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SequenceData',
		    width: 800,
		    height: 500,
		    href: 'detailSequenceDataPage.action',
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