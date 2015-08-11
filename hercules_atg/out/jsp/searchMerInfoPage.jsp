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
														<td>mer_sys_id</td>
								<td>
									<input type="text" id="search_mer_sys_id" name="search_mer_sys_id" class="easyui-textbox" value="${search_mer_sys_id}"/>
								</td>
								<td>mer_name</td>
								<td>
									<input type="text" id="search_mer_name" name="search_mer_name" class="easyui-textbox" value="${search_mer_name}"/>
								</td>
								<td>mer_reg_no</td>
								<td>
									<input type="text" id="search_mer_reg_no" name="search_mer_reg_no" class="easyui-textbox" value="${search_mer_reg_no}"/>
								</td>
								<td>mer_tax_no</td>
								<td>
									<input type="text" id="search_mer_tax_no" name="search_mer_tax_no" class="easyui-textbox" value="${search_mer_tax_no}"/>
								</td>
								<td>organization_code</td>
								<td>
									<input type="text" id="search_organization_code" name="search_organization_code" class="easyui-textbox" value="${search_organization_code}"/>
								</td>
								<td>mer_reg_addr</td>
								<td>
									<input type="text" id="search_mer_reg_addr" name="search_mer_reg_addr" class="easyui-textbox" value="${search_mer_reg_addr}"/>
								</td>
								<td>mer_legal_person</td>
								<td>
									<input type="text" id="search_mer_legal_person" name="search_mer_legal_person" class="easyui-textbox" value="${search_mer_legal_person}"/>
								</td>
								<td>mer_legal_idcard</td>
								<td>
									<input type="text" id="search_mer_legal_idcard" name="search_mer_legal_idcard" class="easyui-textbox" value="${search_mer_legal_idcard}"/>
								</td>
								<td>reg_capital</td>
								<td>
									<input type="text" id="search_reg_capital" name="search_reg_capital" class="easyui-textbox" value="${search_reg_capital}"/>
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
								<td>sign_date</td>
								<td>
									<input type="text" id="search_sign_date" name="search_sign_date" class="easyui-textbox" value="${search_sign_date}"/>
								</td>
								<td>sign_person</td>
								<td>
									<input type="text" id="search_sign_person" name="search_sign_person" class="easyui-textbox" value="${search_sign_person}"/>
								</td>
								<td>disp_name</td>
								<td>
									<input type="text" id="search_disp_name" name="search_disp_name" class="easyui-textbox" value="${search_disp_name}"/>
								</td>
								<td>plat_mer_id</td>
								<td>
									<input type="text" id="search_plat_mer_id" name="search_plat_mer_id" class="easyui-textbox" value="${search_plat_mer_id}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>status</td>
								<td>
									<input type="text" id="search_status" name="search_status" class="easyui-textbox" value="${search_status}"/>
								</td>
								<td>auth_status</td>
								<td>
									<input type="text" id="search_auth_status" name="search_auth_status" class="easyui-textbox" value="${search_auth_status}"/>
								</td>
								<td>logo</td>
								<td>
									<input type="text" id="search_logo" name="search_logo" class="easyui-textbox" value="${search_logo}"/>
								</td>
								<td>color</td>
								<td>
									<input type="text" id="search_color" name="search_color" class="easyui-textbox" value="${search_color}"/>
								</td>
								<td>bill_cycle</td>
								<td>
									<input type="text" id="search_bill_cycle" name="search_bill_cycle" class="easyui-textbox" value="${search_bill_cycle}"/>
								</td>
								<td>remark</td>
								<td>
									<input type="text" id="search_remark" name="search_remark" class="easyui-textbox" value="${search_remark}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>sett_acc_type</td>
								<td>
									<input type="text" id="search_sett_acc_type" name="search_sett_acc_type" class="easyui-textbox" value="${search_sett_acc_type}"/>
								</td>
								<td>access_type</td>
								<td>
									<input type="text" id="search_access_type" name="search_access_type" class="easyui-textbox" value="${search_access_type}"/>
								</td>
								<td>mer_type</td>
								<td>
									<input type="text" id="search_mer_type" name="search_mer_type" class="easyui-textbox" value="${search_mer_type}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_merInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'MER_SYS_ID',width:120,sortable:'true',align:'left'">mer_sys_id</th>
							<th data-options="field:'MER_NAME',width:120,sortable:'true',align:'left'">mer_name</th>
							<th data-options="field:'MER_REG_NO',width:120,sortable:'true',align:'left'">mer_reg_no</th>
							<th data-options="field:'MER_TAX_NO',width:120,sortable:'true',align:'left'">mer_tax_no</th>
							<th data-options="field:'ORGANIZATION_CODE',width:120,sortable:'true',align:'left'">organization_code</th>
							<th data-options="field:'MER_REG_ADDR',width:120,sortable:'true',align:'left'">mer_reg_addr</th>
							<th data-options="field:'MER_LEGAL_PERSON',width:120,sortable:'true',align:'left'">mer_legal_person</th>
							<th data-options="field:'MER_LEGAL_IDCARD',width:120,sortable:'true',align:'left'">mer_legal_idcard</th>
							<th data-options="field:'REG_CAPITAL',width:120,sortable:'true',align:'left'">reg_capital</th>
							<th data-options="field:'MER_KIND',width:120,sortable:'true',align:'left'">mer_kind</th>
							<th data-options="field:'CONTACTOR',width:120,sortable:'true',align:'left'">contactor</th>
							<th data-options="field:'CONTACTOR_PHONE',width:120,sortable:'true',align:'left'">contactor_phone</th>
							<th data-options="field:'CONTACTOR_ADDR',width:120,sortable:'true',align:'left'">contactor_addr</th>
							<th data-options="field:'CONTACTOR_EMAIL',width:120,sortable:'true',align:'left'">contactor_email</th>
							<th data-options="field:'SETT_ACCOUNT_NAME',width:120,sortable:'true',align:'left'">sett_account_name</th>
							<th data-options="field:'SETT_ACCOUNT_NO',width:120,sortable:'true',align:'left'">sett_account_no</th>
							<th data-options="field:'SETT_AGENCY',width:120,sortable:'true',align:'left'">sett_agency</th>
							<th data-options="field:'SIGN_DATE',width:120,sortable:'true',align:'left'">sign_date</th>
							<th data-options="field:'SIGN_PERSON',width:120,sortable:'true',align:'left'">sign_person</th>
							<th data-options="field:'DISP_NAME',width:120,sortable:'true',align:'left'">disp_name</th>
							<th data-options="field:'PLAT_MER_ID',width:120,sortable:'true',align:'left'">plat_mer_id</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'STATUS',width:120,sortable:'true',align:'left'">status</th>
							<th data-options="field:'AUTH_STATUS',width:120,sortable:'true',align:'left'">auth_status</th>
							<th data-options="field:'LOGO',width:120,sortable:'true',align:'left'">logo</th>
							<th data-options="field:'COLOR',width:120,sortable:'true',align:'left'">color</th>
							<th data-options="field:'BILL_CYCLE',width:120,sortable:'true',align:'left'">bill_cycle</th>
							<th data-options="field:'REMARK',width:120,sortable:'true',align:'left'">remark</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'SETT_ACC_TYPE',width:120,sortable:'true',align:'left'">sett_acc_type</th>
							<th data-options="field:'ACCESS_TYPE',width:120,sortable:'true',align:'left'">access_type</th>
							<th data-options="field:'MER_TYPE',width:120,sortable:'true',align:'left'">mer_type</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var merInfo_list ={};
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
	merInfo_list.buildQueryParams=function(){
	    $('#dg_merInfo').datagrid({
			queryParams: {
						 'search_mer_sys_id':$("input[name='search_mer_sys_id']").val(),
						 'search_mer_name':$("input[name='search_mer_name']").val(),
						 'search_mer_reg_no':$("input[name='search_mer_reg_no']").val(),
						 'search_mer_tax_no':$("input[name='search_mer_tax_no']").val(),
						 'search_organization_code':$("input[name='search_organization_code']").val(),
						 'search_mer_reg_addr':$("input[name='search_mer_reg_addr']").val(),
						 'search_mer_legal_person':$("input[name='search_mer_legal_person']").val(),
						 'search_mer_legal_idcard':$("input[name='search_mer_legal_idcard']").val(),
						 'search_reg_capital':$("input[name='search_reg_capital']").val(),
						 'search_mer_kind':$("input[name='search_mer_kind']").val(),
						 'search_contactor':$("input[name='search_contactor']").val(),
						 'search_contactor_phone':$("input[name='search_contactor_phone']").val(),
						 'search_contactor_addr':$("input[name='search_contactor_addr']").val(),
						 'search_contactor_email':$("input[name='search_contactor_email']").val(),
						 'search_sett_account_name':$("input[name='search_sett_account_name']").val(),
						 'search_sett_account_no':$("input[name='search_sett_account_no']").val(),
						 'search_sett_agency':$("input[name='search_sett_agency']").val(),
						 'search_sign_date':$("input[name='search_sign_date']").val(),
						 'search_sign_person':$("input[name='search_sign_person']").val(),
						 'search_disp_name':$("input[name='search_disp_name']").val(),
						 'search_plat_mer_id':$("input[name='search_plat_mer_id']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_status':$("input[name='search_status']").val(),
						 'search_auth_status':$("input[name='search_auth_status']").val(),
						 'search_logo':$("input[name='search_logo']").val(),
						 'search_color':$("input[name='search_color']").val(),
						 'search_bill_cycle':$("input[name='search_bill_cycle']").val(),
						 'search_remark':$("input[name='search_remark']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_sett_acc_type':$("input[name='search_sett_acc_type']").val(),
						 'search_access_type':$("input[name='search_access_type']").val(),
						 'search_mer_type':$("input[name='search_mer_type']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		merInfo_list.buildQueryParams();
		$('#dg_merInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_mer_sys_id']").val("");
			$("input[name='search_mer_name']").val("");
			$("input[name='search_mer_reg_no']").val("");
			$("input[name='search_mer_tax_no']").val("");
			$("input[name='search_organization_code']").val("");
			$("input[name='search_mer_reg_addr']").val("");
			$("input[name='search_mer_legal_person']").val("");
			$("input[name='search_mer_legal_idcard']").val("");
			$("input[name='search_reg_capital']").val("");
			$("input[name='search_mer_kind']").val("");
			$("input[name='search_contactor']").val("");
			$("input[name='search_contactor_phone']").val("");
			$("input[name='search_contactor_addr']").val("");
			$("input[name='search_contactor_email']").val("");
			$("input[name='search_sett_account_name']").val("");
			$("input[name='search_sett_account_no']").val("");
			$("input[name='search_sett_agency']").val("");
			$("input[name='search_sign_date']").val("");
			$("input[name='search_sign_person']").val("");
			$("input[name='search_disp_name']").val("");
			$("input[name='search_plat_mer_id']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_status']").val("");
			$("input[name='search_auth_status']").val("");
			$("input[name='search_logo']").val("");
			$("input[name='search_color']").val("");
			$("input[name='search_bill_cycle']").val("");
			$("input[name='search_remark']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_sett_acc_type']").val("");
			$("input[name='search_access_type']").val("");
			$("input[name='search_mer_type']").val("");
		merInfo_list.buildQueryParams();
		$('#dg_merInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addMerInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MER_INFO',
		    width: 800,
		    height: 500,
		    href: 'addMerInfoPage.action',
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
		    		$('#addMerInfoFrom').form({   
						 url:'addMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merInfo_list.buildQueryParams();
									$('#dg_merInfo').datagrid('load');
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
	merInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editMerInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'MerInfo',
		    width: 800,
		    height: 500,
		    href: 'editMerInfoPage.action',
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
		   				$('#editMerInfoFrom').form({   
						 url:'editMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merInfo_list.buildQueryParams();
									$('#dg_merInfo').datagrid('load');
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
		     			$('#delMerInfoFrom').form({   
						 url:'delMerInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									merInfo_list.buildQueryParams();
									$('#dg_merInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delMerInfoFrom').submit();
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
	merInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细MerInfo',
		    width: 800,
		    height: 500,
		    href: 'detailMerInfoPage.action',
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