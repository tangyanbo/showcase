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
								<td>sub_mer_id</td>
								<td>
									<input type="text" id="search_sub_mer_id" name="search_sub_mer_id" class="easyui-textbox" value="${search_sub_mer_id}"/>
								</td>
								<td>mer_amt</td>
								<td>
									<input type="text" id="search_mer_amt" name="search_mer_amt" class="easyui-textbox" value="${search_mer_amt}"/>
								</td>
								<td>trans_fee</td>
								<td>
									<input type="text" id="search_trans_fee" name="search_trans_fee" class="easyui-textbox" value="${search_trans_fee}"/>
								</td>
								<td>clear_amt</td>
								<td>
									<input type="text" id="search_clear_amt" name="search_clear_amt" class="easyui-textbox" value="${search_clear_amt}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
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
								<td>account_num</td>
								<td>
									<input type="text" id="search_account_num" name="search_account_num" class="easyui-textbox" value="${search_account_num}"/>
								</td>
								<td>account_name</td>
								<td>
									<input type="text" id="search_account_name" name="search_account_name" class="easyui-textbox" value="${search_account_name}"/>
								</td>
								<td>account_agency_id</td>
								<td>
									<input type="text" id="search_account_agency_id" name="search_account_agency_id" class="easyui-textbox" value="${search_account_agency_id}"/>
								</td>
								<td>reserved4</td>
								<td>
									<input type="text" id="search_reserved4" name="search_reserved4" class="easyui-textbox" value="${search_reserved4}"/>
								</td>
								<td>reserved5</td>
								<td>
									<input type="text" id="search_reserved5" name="search_reserved5" class="easyui-textbox" value="${search_reserved5}"/>
								</td>
								<td>mer_name</td>
								<td>
									<input type="text" id="search_mer_name" name="search_mer_name" class="easyui-textbox" value="${search_mer_name}"/>
								</td>
								<td>mss_id</td>
								<td>
									<input type="text" id="search_mss_id" name="search_mss_id" class="easyui-textbox" value="${search_mss_id}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_stopSettleStatictis" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'MER_AMT',width:120,sortable:'true',align:'left'">mer_amt</th>
							<th data-options="field:'TRANS_FEE',width:120,sortable:'true',align:'left'">trans_fee</th>
							<th data-options="field:'CLEAR_AMT',width:120,sortable:'true',align:'left'">clear_amt</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
							<th data-options="field:'RESERVED2',width:120,sortable:'true',align:'left'">reserved2</th>
							<th data-options="field:'RESERVED3',width:120,sortable:'true',align:'left'">reserved3</th>
							<th data-options="field:'ACCOUNT_NUM',width:120,sortable:'true',align:'left'">account_num</th>
							<th data-options="field:'ACCOUNT_NAME',width:120,sortable:'true',align:'left'">account_name</th>
							<th data-options="field:'ACCOUNT_AGENCY_ID',width:120,sortable:'true',align:'left'">account_agency_id</th>
							<th data-options="field:'RESERVED4',width:120,sortable:'true',align:'left'">reserved4</th>
							<th data-options="field:'RESERVED5',width:120,sortable:'true',align:'left'">reserved5</th>
							<th data-options="field:'MER_NAME',width:120,sortable:'true',align:'left'">mer_name</th>
							<th data-options="field:'MSS_ID',width:120,sortable:'true',align:'left'">mss_id</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var stopSettleStatictis_list ={};
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
	stopSettleStatictis_list.buildQueryParams=function(){
	    $('#dg_stopSettleStatictis').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_mer_amt':$("input[name='search_mer_amt']").val(),
						 'search_trans_fee':$("input[name='search_trans_fee']").val(),
						 'search_clear_amt':$("input[name='search_clear_amt']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
						 'search_reserved2':$("input[name='search_reserved2']").val(),
						 'search_reserved3':$("input[name='search_reserved3']").val(),
						 'search_account_num':$("input[name='search_account_num']").val(),
						 'search_account_name':$("input[name='search_account_name']").val(),
						 'search_account_agency_id':$("input[name='search_account_agency_id']").val(),
						 'search_reserved4':$("input[name='search_reserved4']").val(),
						 'search_reserved5':$("input[name='search_reserved5']").val(),
						 'search_mer_name':$("input[name='search_mer_name']").val(),
						 'search_mss_id':$("input[name='search_mss_id']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		stopSettleStatictis_list.buildQueryParams();
		$('#dg_stopSettleStatictis').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_mer_amt']").val("");
			$("input[name='search_trans_fee']").val("");
			$("input[name='search_clear_amt']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_reserved1']").val("");
			$("input[name='search_reserved2']").val("");
			$("input[name='search_reserved3']").val("");
			$("input[name='search_account_num']").val("");
			$("input[name='search_account_name']").val("");
			$("input[name='search_account_agency_id']").val("");
			$("input[name='search_reserved4']").val("");
			$("input[name='search_reserved5']").val("");
			$("input[name='search_mer_name']").val("");
			$("input[name='search_mss_id']").val("");
		stopSettleStatictis_list.buildQueryParams();
		$('#dg_stopSettleStatictis').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addStopSettleStatictisFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'STOP_SETTLE_STATICTIS',
		    width: 800,
		    height: 500,
		    href: 'addStopSettleStatictisPage.action',
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
		    		$('#addStopSettleStatictisFrom').form({   
						 url:'addStopSettleStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									stopSettleStatictis_list.buildQueryParams();
									$('#dg_stopSettleStatictis').datagrid('load');
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
	stopSettleStatictis_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editStopSettleStatictisFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'StopSettleStatictis',
		    width: 800,
		    height: 500,
		    href: 'editStopSettleStatictisPage.action',
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
		   				$('#editStopSettleStatictisFrom').form({   
						 url:'editStopSettleStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									stopSettleStatictis_list.buildQueryParams();
									$('#dg_stopSettleStatictis').datagrid('load');
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
		     			$('#delStopSettleStatictisFrom').form({   
						 url:'delStopSettleStatictisAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									stopSettleStatictis_list.buildQueryParams();
									$('#dg_stopSettleStatictis').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delStopSettleStatictisFrom').submit();
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
	stopSettleStatictis_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细StopSettleStatictis',
		    width: 800,
		    height: 500,
		    href: 'detailStopSettleStatictisPage.action',
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