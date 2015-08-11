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
								<td>pos_dev_id</td>
								<td>
									<input type="text" id="search_pos_dev_id" name="search_pos_dev_id" class="easyui-textbox" value="${search_pos_dev_id}"/>
								</td>
								<td>file_code</td>
								<td>
									<input type="text" id="search_file_code" name="search_file_code" class="easyui-textbox" value="${search_file_code}"/>
								</td>
								<td>sec_main_key</td>
								<td>
									<input type="text" id="search_sec_main_key" name="search_sec_main_key" class="easyui-textbox" value="${search_sec_main_key}"/>
								</td>
								<td>main_key</td>
								<td>
									<input type="text" id="search_main_key" name="search_main_key" class="easyui-textbox" value="${search_main_key}"/>
								</td>
								<td>date</td>
								<td>
									<input type="text" id="search_date" name="search_date" class="easyui-textbox" value="${search_date}"/>
								</td>
								<td>time</td>
								<td>
									<input type="text" id="search_time" name="search_time" class="easyui-textbox" value="${search_time}"/>
								</td>
								<td>machine_no</td>
								<td>
									<input type="text" id="search_machine_no" name="search_machine_no" class="easyui-textbox" value="${search_machine_no}"/>
								</td>
								<td>bk_term_id</td>
								<td>
									<input type="text" id="search_bk_term_id" name="search_bk_term_id" class="easyui-textbox" value="${search_bk_term_id}"/>
								</td>
								<td>bk_mer_id</td>
								<td>
									<input type="text" id="search_bk_mer_id" name="search_bk_mer_id" class="easyui-textbox" value="${search_bk_mer_id}"/>
								</td>
								<td>batch_id</td>
								<td>
									<input type="text" id="search_batch_id" name="search_batch_id" class="easyui-textbox" value="${search_batch_id}"/>
								</td>
								<td>pin_key</td>
								<td>
									<input type="text" id="search_pin_key" name="search_pin_key" class="easyui-textbox" value="${search_pin_key}"/>
								</td>
								<td>pack_key</td>
								<td>
									<input type="text" id="search_pack_key" name="search_pack_key" class="easyui-textbox" value="${search_pack_key}"/>
								</td>
								<td>mac_key</td>
								<td>
									<input type="text" id="search_mac_key" name="search_mac_key" class="easyui-textbox" value="${search_mac_key}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
								<td>ext1</td>
								<td>
									<input type="text" id="search_ext1" name="search_ext1" class="easyui-textbox" value="${search_ext1}"/>
								</td>
								<td>pos_id</td>
								<td>
									<input type="text" id="search_pos_id" name="search_pos_id" class="easyui-textbox" value="${search_pos_id}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_yunrichTerminal" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'POS_DEV_ID',width:120,sortable:'true',align:'left'">pos_dev_id</th>
							<th data-options="field:'FILE_CODE',width:120,sortable:'true',align:'left'">file_code</th>
							<th data-options="field:'SEC_MAIN_KEY',width:120,sortable:'true',align:'left'">sec_main_key</th>
							<th data-options="field:'MAIN_KEY',width:120,sortable:'true',align:'left'">main_key</th>
							<th data-options="field:'DATE',width:120,sortable:'true',align:'left'">date</th>
							<th data-options="field:'TIME',width:120,sortable:'true',align:'left'">time</th>
							<th data-options="field:'MACHINE_NO',width:120,sortable:'true',align:'left'">machine_no</th>
							<th data-options="field:'BK_TERM_ID',width:120,sortable:'true',align:'left'">bk_term_id</th>
							<th data-options="field:'BK_MER_ID',width:120,sortable:'true',align:'left'">bk_mer_id</th>
							<th data-options="field:'BATCH_ID',width:120,sortable:'true',align:'left'">batch_id</th>
							<th data-options="field:'PIN_KEY',width:120,sortable:'true',align:'left'">pin_key</th>
							<th data-options="field:'PACK_KEY',width:120,sortable:'true',align:'left'">pack_key</th>
							<th data-options="field:'MAC_KEY',width:120,sortable:'true',align:'left'">mac_key</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
							<th data-options="field:'EXT1',width:120,sortable:'true',align:'left'">ext1</th>
							<th data-options="field:'POS_ID',width:120,sortable:'true',align:'left'">pos_id</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var yunrichTerminal_list ={};
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
	yunrichTerminal_list.buildQueryParams=function(){
	    $('#dg_yunrichTerminal').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_pos_dev_id':$("input[name='search_pos_dev_id']").val(),
						 'search_file_code':$("input[name='search_file_code']").val(),
						 'search_sec_main_key':$("input[name='search_sec_main_key']").val(),
						 'search_main_key':$("input[name='search_main_key']").val(),
						 'search_date':$("input[name='search_date']").val(),
						 'search_time':$("input[name='search_time']").val(),
						 'search_machine_no':$("input[name='search_machine_no']").val(),
						 'search_bk_term_id':$("input[name='search_bk_term_id']").val(),
						 'search_bk_mer_id':$("input[name='search_bk_mer_id']").val(),
						 'search_batch_id':$("input[name='search_batch_id']").val(),
						 'search_pin_key':$("input[name='search_pin_key']").val(),
						 'search_pack_key':$("input[name='search_pack_key']").val(),
						 'search_mac_key':$("input[name='search_mac_key']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
						 'search_ext1':$("input[name='search_ext1']").val(),
						 'search_pos_id':$("input[name='search_pos_id']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		yunrichTerminal_list.buildQueryParams();
		$('#dg_yunrichTerminal').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_pos_dev_id']").val("");
			$("input[name='search_file_code']").val("");
			$("input[name='search_sec_main_key']").val("");
			$("input[name='search_main_key']").val("");
			$("input[name='search_date']").val("");
			$("input[name='search_time']").val("");
			$("input[name='search_machine_no']").val("");
			$("input[name='search_bk_term_id']").val("");
			$("input[name='search_bk_mer_id']").val("");
			$("input[name='search_batch_id']").val("");
			$("input[name='search_pin_key']").val("");
			$("input[name='search_pack_key']").val("");
			$("input[name='search_mac_key']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_ext']").val("");
			$("input[name='search_ext1']").val("");
			$("input[name='search_pos_id']").val("");
		yunrichTerminal_list.buildQueryParams();
		$('#dg_yunrichTerminal').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addYunrichTerminalFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'yunrich_terminal',
		    width: 800,
		    height: 500,
		    href: 'addYunrichTerminalPage.action',
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
		    		$('#addYunrichTerminalFrom').form({   
						 url:'addYunrichTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									yunrichTerminal_list.buildQueryParams();
									$('#dg_yunrichTerminal').datagrid('load');
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
	yunrichTerminal_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editYunrichTerminalFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'YunrichTerminal',
		    width: 800,
		    height: 500,
		    href: 'editYunrichTerminalPage.action',
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
		   				$('#editYunrichTerminalFrom').form({   
						 url:'editYunrichTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									yunrichTerminal_list.buildQueryParams();
									$('#dg_yunrichTerminal').datagrid('load');
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
		     			$('#delYunrichTerminalFrom').form({   
						 url:'delYunrichTerminalAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									yunrichTerminal_list.buildQueryParams();
									$('#dg_yunrichTerminal').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delYunrichTerminalFrom').submit();
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
	yunrichTerminal_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细YunrichTerminal',
		    width: 800,
		    height: 500,
		    href: 'detailYunrichTerminalPage.action',
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