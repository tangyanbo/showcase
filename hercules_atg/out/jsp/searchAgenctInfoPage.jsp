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
														<td>agent_id</td>
								<td>
									<input type="text" id="search_agent_id" name="search_agent_id" class="easyui-textbox" value="${search_agent_id}"/>
								</td>
								<td>agent_name</td>
								<td>
									<input type="text" id="search_agent_name" name="search_agent_name" class="easyui-textbox" value="${search_agent_name}"/>
								</td>
								<td>reg_no</td>
								<td>
									<input type="text" id="search_reg_no" name="search_reg_no" class="easyui-textbox" value="${search_reg_no}"/>
								</td>
								<td>tax_no</td>
								<td>
									<input type="text" id="search_tax_no" name="search_tax_no" class="easyui-textbox" value="${search_tax_no}"/>
								</td>
								<td>reg_addr</td>
								<td>
									<input type="text" id="search_reg_addr" name="search_reg_addr" class="easyui-textbox" value="${search_reg_addr}"/>
								</td>
								<td>region</td>
								<td>
									<input type="text" id="search_region" name="search_region" class="easyui-textbox" value="${search_region}"/>
								</td>
								<td>sett_account_name</td>
								<td>
									<input type="text" id="search_sett_account_name" name="search_sett_account_name" class="easyui-textbox" value="${search_sett_account_name}"/>
								</td>
								<td>sett_account_no</td>
								<td>
									<input type="text" id="search_sett_account_no" name="search_sett_account_no" class="easyui-textbox" value="${search_sett_account_no}"/>
								</td>
								<td>sett_agency</td>
								<td>
									<input type="text" id="search_sett_agency" name="search_sett_agency" class="easyui-textbox" value="${search_sett_agency}"/>
								</td>
								<td>sett_acc_type</td>
								<td>
									<input type="text" id="search_sett_acc_type" name="search_sett_acc_type" class="easyui-textbox" value="${search_sett_acc_type}"/>
								</td>
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>level</td>
								<td>
									<input type="text" id="search_level" name="search_level" class="easyui-textbox" value="${search_level}"/>
								</td>
								<td>super_agent_id</td>
								<td>
									<input type="text" id="search_super_agent_id" name="search_super_agent_id" class="easyui-textbox" value="${search_super_agent_id}"/>
								</td>
								<td>bill_cycle</td>
								<td>
									<input type="text" id="search_bill_cycle" name="search_bill_cycle" class="easyui-textbox" value="${search_bill_cycle}"/>
								</td>
								<td>terminal_type</td>
								<td>
									<input type="text" id="search_terminal_type" name="search_terminal_type" class="easyui-textbox" value="${search_terminal_type}"/>
								</td>
								<td>bus_type</td>
								<td>
									<input type="text" id="search_bus_type" name="search_bus_type" class="easyui-textbox" value="${search_bus_type}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
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
								<td>agent_rate_1</td>
								<td>
									<input type="text" id="search_agent_rate_1" name="search_agent_rate_1" class="easyui-textbox" value="${search_agent_rate_1}"/>
								</td>
								<td>agent_highest_fee</td>
								<td>
									<input type="text" id="search_agent_highest_fee" name="search_agent_highest_fee" class="easyui-textbox" value="${search_agent_highest_fee}"/>
								</td>
								<td>agent_profit_rate</td>
								<td>
									<input type="text" id="search_agent_profit_rate" name="search_agent_profit_rate" class="easyui-textbox" value="${search_agent_profit_rate}"/>
								</td>
								<td>agent_rate_2</td>
								<td>
									<input type="text" id="search_agent_rate_2" name="search_agent_rate_2" class="easyui-textbox" value="${search_agent_rate_2}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_agenctInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'AGENT_ID',width:120,sortable:'true',align:'left'">agent_id</th>
							<th data-options="field:'AGENT_NAME',width:120,sortable:'true',align:'left'">agent_name</th>
							<th data-options="field:'REG_NO',width:120,sortable:'true',align:'left'">reg_no</th>
							<th data-options="field:'TAX_NO',width:120,sortable:'true',align:'left'">tax_no</th>
							<th data-options="field:'REG_ADDR',width:120,sortable:'true',align:'left'">reg_addr</th>
							<th data-options="field:'REGION',width:120,sortable:'true',align:'left'">region</th>
							<th data-options="field:'SETT_ACCOUNT_NAME',width:120,sortable:'true',align:'left'">sett_account_name</th>
							<th data-options="field:'SETT_ACCOUNT_NO',width:120,sortable:'true',align:'left'">sett_account_no</th>
							<th data-options="field:'SETT_AGENCY',width:120,sortable:'true',align:'left'">sett_agency</th>
							<th data-options="field:'SETT_ACC_TYPE',width:120,sortable:'true',align:'left'">sett_acc_type</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'LEVEL',width:120,sortable:'true',align:'left'">level</th>
							<th data-options="field:'SUPER_AGENT_ID',width:120,sortable:'true',align:'left'">super_agent_id</th>
							<th data-options="field:'BILL_CYCLE',width:120,sortable:'true',align:'left'">bill_cycle</th>
							<th data-options="field:'TERMINAL_TYPE',width:120,sortable:'true',align:'left'">terminal_type</th>
							<th data-options="field:'BUS_TYPE',width:120,sortable:'true',align:'left'">bus_type</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'LOGO',width:120,sortable:'true',align:'left'">logo</th>
							<th data-options="field:'COLOR',width:120,sortable:'true',align:'left'">color</th>
							<th data-options="field:'AGENT_RATE_1',width:120,sortable:'true',align:'left'">agent_rate_1</th>
							<th data-options="field:'AGENT_HIGHEST_FEE',width:120,sortable:'true',align:'left'">agent_highest_fee</th>
							<th data-options="field:'AGENT_PROFIT_RATE',width:120,sortable:'true',align:'left'">agent_profit_rate</th>
							<th data-options="field:'AGENT_RATE_2',width:120,sortable:'true',align:'left'">agent_rate_2</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var agenctInfo_list ={};
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
	agenctInfo_list.buildQueryParams=function(){
	    $('#dg_agenctInfo').datagrid({
			queryParams: {
						 'search_agent_id':$("input[name='search_agent_id']").val(),
						 'search_agent_name':$("input[name='search_agent_name']").val(),
						 'search_reg_no':$("input[name='search_reg_no']").val(),
						 'search_tax_no':$("input[name='search_tax_no']").val(),
						 'search_reg_addr':$("input[name='search_reg_addr']").val(),
						 'search_region':$("input[name='search_region']").val(),
						 'search_sett_account_name':$("input[name='search_sett_account_name']").val(),
						 'search_sett_account_no':$("input[name='search_sett_account_no']").val(),
						 'search_sett_agency':$("input[name='search_sett_agency']").val(),
						 'search_sett_acc_type':$("input[name='search_sett_acc_type']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_level':$("input[name='search_level']").val(),
						 'search_super_agent_id':$("input[name='search_super_agent_id']").val(),
						 'search_bill_cycle':$("input[name='search_bill_cycle']").val(),
						 'search_terminal_type':$("input[name='search_terminal_type']").val(),
						 'search_bus_type':$("input[name='search_bus_type']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_logo':$("input[name='search_logo']").val(),
						 'search_color':$("input[name='search_color']").val(),
						 'search_agent_rate_1':$("input[name='search_agent_rate_1']").val(),
						 'search_agent_highest_fee':$("input[name='search_agent_highest_fee']").val(),
						 'search_agent_profit_rate':$("input[name='search_agent_profit_rate']").val(),
						 'search_agent_rate_2':$("input[name='search_agent_rate_2']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		agenctInfo_list.buildQueryParams();
		$('#dg_agenctInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_agent_id']").val("");
			$("input[name='search_agent_name']").val("");
			$("input[name='search_reg_no']").val("");
			$("input[name='search_tax_no']").val("");
			$("input[name='search_reg_addr']").val("");
			$("input[name='search_region']").val("");
			$("input[name='search_sett_account_name']").val("");
			$("input[name='search_sett_account_no']").val("");
			$("input[name='search_sett_agency']").val("");
			$("input[name='search_sett_acc_type']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_level']").val("");
			$("input[name='search_super_agent_id']").val("");
			$("input[name='search_bill_cycle']").val("");
			$("input[name='search_terminal_type']").val("");
			$("input[name='search_bus_type']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_logo']").val("");
			$("input[name='search_color']").val("");
			$("input[name='search_agent_rate_1']").val("");
			$("input[name='search_agent_highest_fee']").val("");
			$("input[name='search_agent_profit_rate']").val("");
			$("input[name='search_agent_rate_2']").val("");
		agenctInfo_list.buildQueryParams();
		$('#dg_agenctInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addAgenctInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'AGENCT_INFO',
		    width: 800,
		    height: 500,
		    href: 'addAgenctInfoPage.action',
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
		    		$('#addAgenctInfoFrom').form({   
						 url:'addAgenctInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									agenctInfo_list.buildQueryParams();
									$('#dg_agenctInfo').datagrid('load');
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
	agenctInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editAgenctInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'AgenctInfo',
		    width: 800,
		    height: 500,
		    href: 'editAgenctInfoPage.action',
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
		   				$('#editAgenctInfoFrom').form({   
						 url:'editAgenctInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									agenctInfo_list.buildQueryParams();
									$('#dg_agenctInfo').datagrid('load');
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
		     			$('#delAgenctInfoFrom').form({   
						 url:'delAgenctInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									agenctInfo_list.buildQueryParams();
									$('#dg_agenctInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delAgenctInfoFrom').submit();
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
	agenctInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细AgenctInfo',
		    width: 800,
		    height: 500,
		    href: 'detailAgenctInfoPage.action',
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