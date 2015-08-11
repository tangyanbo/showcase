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
														<td>order_id</td>
								<td>
									<input type="text" id="search_order_id" name="search_order_id" class="easyui-textbox" value="${search_order_id}"/>
								</td>
								<td>trans_mer_id</td>
								<td>
									<input type="text" id="search_trans_mer_id" name="search_trans_mer_id" class="easyui-textbox" value="${search_trans_mer_id}"/>
								</td>
								<td>trans_ter_id</td>
								<td>
									<input type="text" id="search_trans_ter_id" name="search_trans_ter_id" class="easyui-textbox" value="${search_trans_ter_id}"/>
								</td>
								<td>channel_type</td>
								<td>
									<input type="text" id="search_channel_type" name="search_channel_type" class="easyui-textbox" value="${search_channel_type}"/>
								</td>
								<td>trans_amt</td>
								<td>
									<input type="text" id="search_trans_amt" name="search_trans_amt" class="easyui-textbox" value="${search_trans_amt}"/>
								</td>
								<td>trans_cur</td>
								<td>
									<input type="text" id="search_trans_cur" name="search_trans_cur" class="easyui-textbox" value="${search_trans_cur}"/>
								</td>
								<td>trans_time</td>
								<td>
									<input type="text" id="search_trans_time" name="search_trans_time" class="easyui-textbox" value="${search_trans_time}"/>
								</td>
								<td>trans_status</td>
								<td>
									<input type="text" id="search_trans_status" name="search_trans_status" class="easyui-textbox" value="${search_trans_status}"/>
								</td>
								<td>trans_type</td>
								<td>
									<input type="text" id="search_trans_type" name="search_trans_type" class="easyui-textbox" value="${search_trans_type}"/>
								</td>
								<td>res_code</td>
								<td>
									<input type="text" id="search_res_code" name="search_res_code" class="easyui-textbox" value="${search_res_code}"/>
								</td>
								<td>res_desc</td>
								<td>
									<input type="text" id="search_res_desc" name="search_res_desc" class="easyui-textbox" value="${search_res_desc}"/>
								</td>
								<td>settle_date</td>
								<td>
									<input type="text" id="search_settle_date" name="search_settle_date" class="easyui-textbox" value="${search_settle_date}"/>
								</td>
								<td>settle_cur</td>
								<td>
									<input type="text" id="search_settle_cur" name="search_settle_cur" class="easyui-textbox" value="${search_settle_cur}"/>
								</td>
								<td>id_no</td>
								<td>
									<input type="text" id="search_id_no" name="search_id_no" class="easyui-textbox" value="${search_id_no}"/>
								</td>
								<td>user_name</td>
								<td>
									<input type="text" id="search_user_name" name="search_user_name" class="easyui-textbox" value="${search_user_name}"/>
								</td>
								<td>pan</td>
								<td>
									<input type="text" id="search_pan" name="search_pan" class="easyui-textbox" value="${search_pan}"/>
								</td>
								<td>card_type</td>
								<td>
									<input type="text" id="search_card_type" name="search_card_type" class="easyui-textbox" value="${search_card_type}"/>
								</td>
								<td>account2</td>
								<td>
									<input type="text" id="search_account2" name="search_account2" class="easyui-textbox" value="${search_account2}"/>
								</td>
								<td>org_order_id</td>
								<td>
									<input type="text" id="search_org_order_id" name="search_org_order_id" class="easyui-textbox" value="${search_org_order_id}"/>
								</td>
								<td>create_time</td>
								<td>
									<input type="text" id="search_create_time" name="search_create_time" class="easyui-textbox" value="${search_create_time}"/>
								</td>
								<td>modify_time</td>
								<td>
									<input type="text" id="search_modify_time" name="search_modify_time" class="easyui-textbox" value="${search_modify_time}"/>
								</td>
								<td>reserved</td>
								<td>
									<input type="text" id="search_reserved" name="search_reserved" class="easyui-textbox" value="${search_reserved}"/>
								</td>
								<td>ext</td>
								<td>
									<input type="text" id="search_ext" name="search_ext" class="easyui-textbox" value="${search_ext}"/>
								</td>
								<td>csn</td>
								<td>
									<input type="text" id="search_csn" name="search_csn" class="easyui-textbox" value="${search_csn}"/>
								</td>
								<td>trans_mer_name</td>
								<td>
									<input type="text" id="search_trans_mer_name" name="search_trans_mer_name" class="easyui-textbox" value="${search_trans_mer_name}"/>
								</td>
								<td>spid</td>
								<td>
									<input type="text" id="search_spid" name="search_spid" class="easyui-textbox" value="${search_spid}"/>
								</td>
								<td>ip</td>
								<td>
									<input type="text" id="search_ip" name="search_ip" class="easyui-textbox" value="${search_ip}"/>
								</td>
								<td>reference_no</td>
								<td>
									<input type="text" id="search_reference_no" name="search_reference_no" class="easyui-textbox" value="${search_reference_no}"/>
								</td>
								<td>auth_no</td>
								<td>
									<input type="text" id="search_auth_no" name="search_auth_no" class="easyui-textbox" value="${search_auth_no}"/>
								</td>
								<td>tracking_no</td>
								<td>
									<input type="text" id="search_tracking_no" name="search_tracking_no" class="easyui-textbox" value="${search_tracking_no}"/>
								</td>
								<td>account2_name</td>
								<td>
									<input type="text" id="search_account2_name" name="search_account2_name" class="easyui-textbox" value="${search_account2_name}"/>
								</td>
								<td>batch_no</td>
								<td>
									<input type="text" id="search_batch_no" name="search_batch_no" class="easyui-textbox" value="${search_batch_no}"/>
								</td>
								<td>ext1</td>
								<td>
									<input type="text" id="search_ext1" name="search_ext1" class="easyui-textbox" value="${search_ext1}"/>
								</td>
								<td>ext2</td>
								<td>
									<input type="text" id="search_ext2" name="search_ext2" class="easyui-textbox" value="${search_ext2}"/>
								</td>
								<td>ext3</td>
								<td>
									<input type="text" id="search_ext3" name="search_ext3" class="easyui-textbox" value="${search_ext3}"/>
								</td>
								<td>create_date</td>
								<td>
									<input type="text" id="search_create_date" name="search_create_date" class="easyui-textbox" value="${search_create_date}"/>
								</td>
								<td>entry_mode</td>
								<td>
									<input type="text" id="search_entry_mode" name="search_entry_mode" class="easyui-textbox" value="${search_entry_mode}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_payInfo" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ORDER_ID',width:120,sortable:'true',align:'left'">order_id</th>
							<th data-options="field:'TRANS_MER_ID',width:120,sortable:'true',align:'left'">trans_mer_id</th>
							<th data-options="field:'TRANS_TER_ID',width:120,sortable:'true',align:'left'">trans_ter_id</th>
							<th data-options="field:'CHANNEL_TYPE',width:120,sortable:'true',align:'left'">channel_type</th>
							<th data-options="field:'TRANS_AMT',width:120,sortable:'true',align:'left'">trans_amt</th>
							<th data-options="field:'TRANS_CUR',width:120,sortable:'true',align:'left'">trans_cur</th>
							<th data-options="field:'TRANS_TIME',width:120,sortable:'true',align:'left'">trans_time</th>
							<th data-options="field:'TRANS_STATUS',width:120,sortable:'true',align:'left'">trans_status</th>
							<th data-options="field:'TRANS_TYPE',width:120,sortable:'true',align:'left'">trans_type</th>
							<th data-options="field:'RES_CODE',width:120,sortable:'true',align:'left'">res_code</th>
							<th data-options="field:'RES_DESC',width:120,sortable:'true',align:'left'">res_desc</th>
							<th data-options="field:'SETTLE_DATE',width:120,sortable:'true',align:'left'">settle_date</th>
							<th data-options="field:'SETTLE_CUR',width:120,sortable:'true',align:'left'">settle_cur</th>
							<th data-options="field:'ID_NO',width:120,sortable:'true',align:'left'">id_no</th>
							<th data-options="field:'USER_NAME',width:120,sortable:'true',align:'left'">user_name</th>
							<th data-options="field:'PAN',width:120,sortable:'true',align:'left'">pan</th>
							<th data-options="field:'CARD_TYPE',width:120,sortable:'true',align:'left'">card_type</th>
							<th data-options="field:'ACCOUNT2',width:120,sortable:'true',align:'left'">account2</th>
							<th data-options="field:'ORG_ORDER_ID',width:120,sortable:'true',align:'left'">org_order_id</th>
							<th data-options="field:'CREATE_TIME',width:120,sortable:'true',align:'left'">create_time</th>
							<th data-options="field:'MODIFY_TIME',width:120,sortable:'true',align:'left'">modify_time</th>
							<th data-options="field:'RESERVED',width:120,sortable:'true',align:'left'">reserved</th>
							<th data-options="field:'EXT',width:120,sortable:'true',align:'left'">ext</th>
							<th data-options="field:'CSN',width:120,sortable:'true',align:'left'">csn</th>
							<th data-options="field:'TRANS_MER_NAME',width:120,sortable:'true',align:'left'">trans_mer_name</th>
							<th data-options="field:'SPID',width:120,sortable:'true',align:'left'">spid</th>
							<th data-options="field:'IP',width:120,sortable:'true',align:'left'">ip</th>
							<th data-options="field:'REFERENCE_NO',width:120,sortable:'true',align:'left'">reference_no</th>
							<th data-options="field:'AUTH_NO',width:120,sortable:'true',align:'left'">auth_no</th>
							<th data-options="field:'TRACKING_NO',width:120,sortable:'true',align:'left'">tracking_no</th>
							<th data-options="field:'ACCOUNT2_NAME',width:120,sortable:'true',align:'left'">account2_name</th>
							<th data-options="field:'BATCH_NO',width:120,sortable:'true',align:'left'">batch_no</th>
							<th data-options="field:'EXT1',width:120,sortable:'true',align:'left'">ext1</th>
							<th data-options="field:'EXT2',width:120,sortable:'true',align:'left'">ext2</th>
							<th data-options="field:'EXT3',width:120,sortable:'true',align:'left'">ext3</th>
							<th data-options="field:'CREATE_DATE',width:120,sortable:'true',align:'left'">create_date</th>
							<th data-options="field:'ENTRY_MODE',width:120,sortable:'true',align:'left'">entry_mode</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var payInfo_list ={};
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
	payInfo_list.buildQueryParams=function(){
	    $('#dg_payInfo').datagrid({
			queryParams: {
						 'search_order_id':$("input[name='search_order_id']").val(),
						 'search_trans_mer_id':$("input[name='search_trans_mer_id']").val(),
						 'search_trans_ter_id':$("input[name='search_trans_ter_id']").val(),
						 'search_channel_type':$("input[name='search_channel_type']").val(),
						 'search_trans_amt':$("input[name='search_trans_amt']").val(),
						 'search_trans_cur':$("input[name='search_trans_cur']").val(),
						 'search_trans_time':$("input[name='search_trans_time']").val(),
						 'search_trans_status':$("input[name='search_trans_status']").val(),
						 'search_trans_type':$("input[name='search_trans_type']").val(),
						 'search_res_code':$("input[name='search_res_code']").val(),
						 'search_res_desc':$("input[name='search_res_desc']").val(),
						 'search_settle_date':$("input[name='search_settle_date']").val(),
						 'search_settle_cur':$("input[name='search_settle_cur']").val(),
						 'search_id_no':$("input[name='search_id_no']").val(),
						 'search_user_name':$("input[name='search_user_name']").val(),
						 'search_pan':$("input[name='search_pan']").val(),
						 'search_card_type':$("input[name='search_card_type']").val(),
						 'search_account2':$("input[name='search_account2']").val(),
						 'search_org_order_id':$("input[name='search_org_order_id']").val(),
						 'search_create_time':$("input[name='search_create_time']").val(),
						 'search_modify_time':$("input[name='search_modify_time']").val(),
						 'search_reserved':$("input[name='search_reserved']").val(),
						 'search_ext':$("input[name='search_ext']").val(),
						 'search_csn':$("input[name='search_csn']").val(),
						 'search_trans_mer_name':$("input[name='search_trans_mer_name']").val(),
						 'search_spid':$("input[name='search_spid']").val(),
						 'search_ip':$("input[name='search_ip']").val(),
						 'search_reference_no':$("input[name='search_reference_no']").val(),
						 'search_auth_no':$("input[name='search_auth_no']").val(),
						 'search_tracking_no':$("input[name='search_tracking_no']").val(),
						 'search_account2_name':$("input[name='search_account2_name']").val(),
						 'search_batch_no':$("input[name='search_batch_no']").val(),
						 'search_ext1':$("input[name='search_ext1']").val(),
						 'search_ext2':$("input[name='search_ext2']").val(),
						 'search_ext3':$("input[name='search_ext3']").val(),
						 'search_create_date':$("input[name='search_create_date']").val(),
						 'search_entry_mode':$("input[name='search_entry_mode']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		payInfo_list.buildQueryParams();
		$('#dg_payInfo').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_order_id']").val("");
			$("input[name='search_trans_mer_id']").val("");
			$("input[name='search_trans_ter_id']").val("");
			$("input[name='search_channel_type']").val("");
			$("input[name='search_trans_amt']").val("");
			$("input[name='search_trans_cur']").val("");
			$("input[name='search_trans_time']").val("");
			$("input[name='search_trans_status']").val("");
			$("input[name='search_trans_type']").val("");
			$("input[name='search_res_code']").val("");
			$("input[name='search_res_desc']").val("");
			$("input[name='search_settle_date']").val("");
			$("input[name='search_settle_cur']").val("");
			$("input[name='search_id_no']").val("");
			$("input[name='search_user_name']").val("");
			$("input[name='search_pan']").val("");
			$("input[name='search_card_type']").val("");
			$("input[name='search_account2']").val("");
			$("input[name='search_org_order_id']").val("");
			$("input[name='search_create_time']").val("");
			$("input[name='search_modify_time']").val("");
			$("input[name='search_reserved']").val("");
			$("input[name='search_ext']").val("");
			$("input[name='search_csn']").val("");
			$("input[name='search_trans_mer_name']").val("");
			$("input[name='search_spid']").val("");
			$("input[name='search_ip']").val("");
			$("input[name='search_reference_no']").val("");
			$("input[name='search_auth_no']").val("");
			$("input[name='search_tracking_no']").val("");
			$("input[name='search_account2_name']").val("");
			$("input[name='search_batch_no']").val("");
			$("input[name='search_ext1']").val("");
			$("input[name='search_ext2']").val("");
			$("input[name='search_ext3']").val("");
			$("input[name='search_create_date']").val("");
			$("input[name='search_entry_mode']").val("");
		payInfo_list.buildQueryParams();
		$('#dg_payInfo').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addPayInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'PAY_INFO',
		    width: 800,
		    height: 500,
		    href: 'addPayInfoPage.action',
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
		    		$('#addPayInfoFrom').form({   
						 url:'addPayInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									payInfo_list.buildQueryParams();
									$('#dg_payInfo').datagrid('load');
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
	payInfo_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editPayInfoFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'PayInfo',
		    width: 800,
		    height: 500,
		    href: 'editPayInfoPage.action',
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
		   				$('#editPayInfoFrom').form({   
						 url:'editPayInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									payInfo_list.buildQueryParams();
									$('#dg_payInfo').datagrid('load');
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
		     			$('#delPayInfoFrom').form({   
						 url:'delPayInfoAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									payInfo_list.buildQueryParams();
									$('#dg_payInfo').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delPayInfoFrom').submit();
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
	payInfo_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细PayInfo',
		    width: 800,
		    height: 500,
		    href: 'detailPayInfoPage.action',
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