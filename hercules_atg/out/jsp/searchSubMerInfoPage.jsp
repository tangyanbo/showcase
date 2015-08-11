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
								<td>sub_mer_name</td>
								<td>
									<input type="text" id="search_sub_mer_name" name="search_sub_mer_name" class="easyui-textbox" value="${search_sub_mer_name}"/>
								</td>
								<td>short_name</td>
								<td>
									<input type="text" id="search_short_name" name="search_short_name" class="easyui-textbox" value="${search_short_name}"/>
								</td>
								<td>reg_no</td>
								<td>
									<input type="text" id="search_reg_no" name="search_reg_no" class="easyui-textbox" value="${search_reg_no}"/>
								</td>
								<td>tax_no</td>
								<td>
									<input type="text" id="search_tax_no" name="search_tax_no" class="easyui-textbox" value="${search_tax_no}"/>
								</td>
								<td>organization_code</td>
								<td>
									<input type="text" id="search_organization_code" name="search_organization_code" class="easyui-textbox" value="${search_organization_code}"/>
								</td>
								<td>reg_addr</td>
								<td>
									<input type="text" id="search_reg_addr" name="search_reg_addr" class="easyui-textbox" value="${search_reg_addr}"/>
								</td>
								<td>legal_person</td>
								<td>
									<input type="text" id="search_legal_person" name="search_legal_person" class="easyui-textbox" value="${search_legal_person}"/>
								</td>
								<td>legal_idcard</td>
								<td>
									<input type="text" id="search_legal_idcard" name="search_legal_idcard" class="easyui-textbox" value="${search_legal_idcard}"/>
								</td>
								<td>mer_kind</td>
								<td>
									<input type="text" id="search_mer_kind" name="search_mer_kind" class="easyui-textbox" value="${search_mer_kind}"/>
								</td>
								<td>contactor</td>
								<td>
									<input type="text" id="search_contactor" name="search_contactor" class="easyui-textbox" value="${search_contactor}"/>
								</td>
								<td>contactor_phone</td>
								<td>
									<input type="text" id="search_contactor_phone" name="search_contactor_phone" class="easyui-textbox" value="${search_contactor_phone}"/>
								</td>
								<td>contactor_addr</td>
								<td>
									<input type="text" id="search_contactor_addr" name="search_contactor_addr" class="easyui-textbox" value="${search_contactor_addr}"/>
								</td>
								<td>contactor_email</td>
								<td>
									<input type="text" id="search_contactor_email" name="search_contactor_email" class="easyui-textbox" value="${search_contactor_email}"/>
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
								<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>agent_id_l1</td>
								<td>
									<input type="text" id="search_agent_id_l1" name="search_agent_id_l1" class="easyui-textbox" value="${search_agent_id_l1}"/>
								</td>
								<td>agent_id_l2</td>
								<td>
									<input type="text" id="search_agent_id_l2" name="search_agent_id_l2" class="easyui-textbox" value="${search_agent_id_l2}"/>
								</td>
								<td>mcc</td>
								<td>
									<input type="text" id="search_mcc" name="search_mcc" class="easyui-textbox" value="${search_mcc}"/>
								</td>
								<td>realmcc</td>
								<td>
									<input type="text" id="search_realmcc" name="search_realmcc" class="easyui-textbox" value="${search_realmcc}"/>
								</td>
								<td>region</td>
								<td>
									<input type="text" id="search_region" name="search_region" class="easyui-textbox" value="${search_region}"/>
								</td>
								<td>bill_cycle</td>
								<td>
									<input type="text" id="search_bill_cycle" name="search_bill_cycle" class="easyui-textbox" value="${search_bill_cycle}"/>
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
								<td>sett_acc_type</td>
								<td>
									<input type="text" id="search_sett_acc_type" name="search_sett_acc_type" class="easyui-textbox" value="${search_sett_acc_type}"/>
								</td>
								<td>sub_mer_tract</td>
								<td>
									<input type="text" id="search_sub_mer_tract" name="search_sub_mer_tract" class="easyui-textbox" value="${search_sub_mer_tract}"/>
								</td>
								<td>settle_status</td>
								<td>
									<input type="text" id="search_settle_status" name="search_settle_status" class="easyui-textbox" value="${search_settle_status}"/>
								</td>
								<td>balance</td>
								<td>
									<input type="text" id="search_balance" name="search_balance" class="easyui-textbox" value="${search_balance}"/>
								</td>
								<td>withdrawals</td>
								<td>
									<input type="text" id="search_withdrawals" name="search_withdrawals" class="easyui-textbox" value="${search_withdrawals}"/>
								</td>
								<td>is_t0</td>
								<td>
									<input type="text" id="search_is_t0" name="search_is_t0" class="easyui-textbox" value="${search_is_t0}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_subMerInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'SUB_MER_ID',width:120,sortable:'true',align:'left'">sub_mer_id</th>
							<th data-options="field:'SUB_MER_NAME',width:120,sortable:'true',align:'left'">sub_mer_name</th>
							<th data-options="field:'SHORT_NAME',width:120,sortable:'true',align:'left'">short_name</th>
							<th data-options="field:'REG_NO',width:120,sortable:'true',align:'left'">reg_no</th>
							<th data-options="field:'TAX_NO',width:120,sortable:'true',align:'left'">tax_no</th>
							<th data-options="field:'ORGANIZATION_CODE',width:120,sortable:'true',align:'left'">organization_code</th>
							<th data-options="field:'REG_ADDR',width:120,sortable:'true',align:'left'">reg_addr</th>
							<th data-options="field:'LEGAL_PERSON',width:120,sortable:'true',align:'left'">legal_person</th>
							<th data-options="field:'LEGAL_IDCARD',width:120,sortable:'true',align:'left'">legal_idcard</th>
							<th data-options="field:'MER_KIND',width:120,sortable:'true',align:'left'">mer_kind</th>
							<th data-options="field:'CONTACTOR',width:120,sortable:'true',align:'left'">contactor</th>
							<th data-options="field:'CONTACTOR_PHONE',width:120,sortable:'true',align:'left'">contactor_phone</th>
							<th data-options="field:'CONTACTOR_ADDR',width:120,sortable:'true',align:'left'">contactor_addr</th>
							<th data-options="field:'CONTACTOR_EMAIL',width:120,sortable:'true',align:'left'">contactor_email</th>
							<th data-options="field:'SETT_ACCOUNT_NAME',width:120,sortable:'true',align:'left'">sett_account_name</th>
							<th data-options="field:'SETT_ACCOUNT_NO',width:120,sortable:'true',align:'left'">sett_account_no</th>
							<th data-options="field:'SETT_AGENCY',width:120,sortable:'true',align:'left'">sett_agency</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'AGENT_ID_L1',width:120,sortable:'true',align:'left'">agent_id_l1</th>
							<th data-options="field:'AGENT_ID_L2',width:120,sortable:'true',align:'left'">agent_id_l2</th>
							<th data-options="field:'MCC',width:120,sortable:'true',align:'left'">mcc</th>
							<th data-options="field:'REALMCC',width:120,sortable:'true',align:'left'">realmcc</th>
							<th data-options="field:'REGION',width:120,sortable:'true',align:'left'">region</th>
							<th data-options="field:'BILL_CYCLE',width:120,sortable:'true',align:'left'">bill_cycle</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'LOGO',width:120,sortable:'true',align:'left'">logo</th>
							<th data-options="field:'COLOR',width:120,sortable:'true',align:'left'">color</th>
							<th data-options="field:'SETT_ACC_TYPE',width:120,sortable:'true',align:'left'">sett_acc_type</th>
							<th data-options="field:'SUB_MER_TRACT',width:120,sortable:'true',align:'left'">sub_mer_tract</th>
							<th data-options="field:'SETTLE_STATUS',width:120,sortable:'true',align:'left'">settle_status</th>
							<th data-options="field:'BALANCE',width:120,sortable:'true',align:'left'">balance</th>
							<th data-options="field:'WITHDRAWALS',width:120,sortable:'true',align:'left'">withdrawals</th>
							<th data-options="field:'IS_T0',width:120,sortable:'true',align:'left'">is_t0</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var subMerInfo_list ={};
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
	subMerInfo_list.buildQueryParams=function(){
	    $('#dg_subMerInfo').datagrid({
			queryParams: {
						 'search_sub_mer_id':$("input[name='search_sub_mer_id']").val(),
						 'search_sub_mer_name':$("input[name='search_sub_mer_name']").val(),
						 'search_short_name':$("input[name='search_short_name']").val(),
						 'search_reg_no':$("input[name='search_reg_no']").val(),
						 'search_tax_no':$("input[name='search_tax_no']").val(),
						 'search_organization_code':$("input[name='search_organization_code']").val(),
						 'search_reg_addr':$("input[name='search_reg_addr']").val(),
						 'search_legal_person':$("input[name='search_legal_person']").val(),
						 'search_legal_idcard':$("input[name='search_legal_idcard']").val(),
						 'search_mer_kind':$("input[name='search_mer_kind']").val(),
						 'search_contactor':$("input[name='search_contactor']").val(),
						 'search_contactor_phone':$("input[name='search_contactor_phone']").val(),
						 'search_contactor_addr':$("input[name='search_contactor_addr']").val(),
						 'search_contactor_email':$("input[name='search_contactor_email']").val(),
						 'search_sett_account_name':$("input[name='search_sett_account_name']").val(),
						 'search_sett_account_no':$("input[name='search_sett_account_no']").val(),
						 'search_sett_agency':$("input[name='search_sett_agency']").val(),
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_agent_id_l1':$("input[name='search_agent_id_l1']").val(),
						 'search_agent_id_l2':$("input[name='search_agent_id_l2']").val(),
						 'search_mcc':$("input[name='search_mcc']").val(),
						 'search_realmcc':$("input[name='search_realmcc']").val(),
						 'search_region':$("input[name='search_region']").val(),
						 'search_bill_cycle':$("input[name='search_bill_cycle']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_logo':$("input[name='search_logo']").val(),
						 'search_color':$("input[name='search_color']").val(),
						 'search_sett_acc_type':$("input[name='search_sett_acc_type']").val(),
						 'search_sub_mer_tract':$("input[name='search_sub_mer_tract']").val(),
						 'search_settle_status':$("input[name='search_settle_status']").val(),
						 'search_balance':$("input[name='search_balance']").val(),
						 'search_withdrawals':$("input[name='search_withdrawals']").val(),
						 'search_is_t0':$("input[name='search_is_t0']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		subMerInfo_list.buildQueryParams();
		$('#dg_subMerInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_sub_mer_id']").val("");
			$("input[name='search_sub_mer_name']").val("");
			$("input[name='search_short_name']").val("");
			$("input[name='search_reg_no']").val("");
			$("input[name='search_tax_no']").val("");
			$("input[name='search_organization_code']").val("");
			$("input[name='search_reg_addr']").val("");
			$("input[name='search_legal_person']").val("");
			$("input[name='search_legal_idcard']").val("");
			$("input[name='search_mer_kind']").val("");
			$("input[name='search_contactor']").val("");
			$("input[name='search_contactor_phone']").val("");
			$("input[name='search_contactor_addr']").val("");
			$("input[name='search_contactor_email']").val("");
			$("input[name='search_sett_account_name']").val("");
			$("input[name='search_sett_account_no']").val("");
			$("input[name='search_sett_agency']").val("");
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_agent_id_l1']").val("");
			$("input[name='search_agent_id_l2']").val("");
			$("input[name='search_mcc']").val("");
			$("input[name='search_realmcc']").val("");
			$("input[name='search_region']").val("");
			$("input[name='search_bill_cycle']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_logo']").val("");
			$("input[name='search_color']").val("");
			$("input[name='search_sett_acc_type']").val("");
			$("input[name='search_sub_mer_tract']").val("");
			$("input[name='search_settle_status']").val("");
			$("input[name='search_balance']").val("");
			$("input[name='search_withdrawals']").val("");
			$("input[name='search_is_t0']").val("");
		subMerInfo_list.buildQueryParams();
		$('#dg_subMerInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addSubMerInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SUB_MER_INFO',
		    width: 800,
		    height: 500,
		    href: 'addSubMerInfoPage.action',
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
		    		$('#addSubMerInfoFrom').form({   
						 url:'addSubMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerInfo_list.buildQueryParams();
									$('#dg_subMerInfo').datagrid('load');
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
	subMerInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editSubMerInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'SubMerInfo',
		    width: 800,
		    height: 500,
		    href: 'editSubMerInfoPage.action',
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
		   				$('#editSubMerInfoFrom').form({   
						 url:'editSubMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerInfo_list.buildQueryParams();
									$('#dg_subMerInfo').datagrid('load');
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
		     			$('#delSubMerInfoFrom').form({   
						 url:'delSubMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									subMerInfo_list.buildQueryParams();
									$('#dg_subMerInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delSubMerInfoFrom').submit();
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
	subMerInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细SubMerInfo',
		    width: 800,
		    height: 500,
		    href: 'detailSubMerInfoPage.action',
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