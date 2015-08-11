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
								<td>cdate</td>
								<td>
									<input type="text" id="search_cdate" name="search_cdate" class="easyui-textbox" value="${search_cdate}"/>
								</td>
								<td>weekdy</td>
								<td>
									<input type="text" id="search_weekdy" name="search_weekdy" class="easyui-textbox" value="${search_weekdy}"/>
								</td>
								<td>is_work</td>
								<td>
									<input type="text" id="search_is_work" name="search_is_work" class="easyui-textbox" value="${search_is_work}"/>
								</td>
								<td>is_xend</td>
								<td>
									<input type="text" id="search_is_xend" name="search_is_xend" class="easyui-textbox" value="${search_is_xend}"/>
								</td>
								<td>is_mend</td>
								<td>
									<input type="text" id="search_is_mend" name="search_is_mend" class="easyui-textbox" value="${search_is_mend}"/>
								</td>
								<td>is_qend</td>
								<td>
									<input type="text" id="search_is_qend" name="search_is_qend" class="easyui-textbox" value="${search_is_qend}"/>
								</td>
								<td>is_hend</td>
								<td>
									<input type="text" id="search_is_hend" name="search_is_hend" class="easyui-textbox" value="${search_is_hend}"/>
								</td>
								<td>is_yend</td>
								<td>
									<input type="text" id="search_is_yend" name="search_is_yend" class="easyui-textbox" value="${search_is_yend}"/>
								</td>
								<td>reserved1</td>
								<td>
									<input type="text" id="search_reserved1" name="search_reserved1" class="easyui-textbox" value="${search_reserved1}"/>
								</td>
					</table>
				</form>
			</div>
			<!--搜索栏结束-->
			
			<!--搜索结果开始-->
			<div class="easyui-panel" style="padding:0px;margin: 0px;" data-options="region:'center'">
				<table  id="dg_cdateConfig" class="easyui-datagrid" 
					data-options="rownumbers:true,singleSelect:true,collapsible:true,sortName:'',sortOrder:'desc',pagination:'true',url:'',method:'post',toolbar:toolbar,fit:'true'">
					<thead>
						<tr>
						 	<th data-options="field:'DETAIL',width:50,align:'center'">detail</th>
							<th data-options="field:'EDIT',width:50,align:'center'">edit</th>
							<th data-options="field:'ID',width:120,sortable:'true',align:'left'">id</th>
							<th data-options="field:'CDATE',width:120,sortable:'true',align:'left'">cdate</th>
							<th data-options="field:'WEEKDY',width:120,sortable:'true',align:'left'">weekdy</th>
							<th data-options="field:'IS_WORK',width:120,sortable:'true',align:'left'">is_work</th>
							<th data-options="field:'IS_XEND',width:120,sortable:'true',align:'left'">is_xend</th>
							<th data-options="field:'IS_MEND',width:120,sortable:'true',align:'left'">is_mend</th>
							<th data-options="field:'IS_QEND',width:120,sortable:'true',align:'left'">is_qend</th>
							<th data-options="field:'IS_HEND',width:120,sortable:'true',align:'left'">is_hend</th>
							<th data-options="field:'IS_YEND',width:120,sortable:'true',align:'left'">is_yend</th>
							<th data-options="field:'RESERVED1',width:120,sortable:'true',align:'left'">reserved1</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--搜索栏结果end-->

<script>
var cdateConfig_list ={};
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
	cdateConfig_list.buildQueryParams=function(){
	    $('#dg_cdateConfig').datagrid({
			queryParams: {
						 'search_id':$("input[name='search_id']").val(),
						 'search_cdate':$("input[name='search_cdate']").val(),
						 'search_weekdy':$("input[name='search_weekdy']").val(),
						 'search_is_work':$("input[name='search_is_work']").val(),
						 'search_is_xend':$("input[name='search_is_xend']").val(),
						 'search_is_mend':$("input[name='search_is_mend']").val(),
						 'search_is_qend':$("input[name='search_is_qend']").val(),
						 'search_is_hend':$("input[name='search_is_hend']").val(),
						 'search_is_yend':$("input[name='search_is_yend']").val(),
						 'search_reserved1':$("input[name='search_reserved1']").val(),
			}
		});
	}

	//重新按照条件刷新查询内容
	$('#search_btn').click(function(){
		cdateConfig_list.buildQueryParams();
		$('#dg_cdateConfig').datagrid('load');
	});
	
    //重置查询条件并刷新内容
	$('#clear_btn').click(function(){
		//清空查询条件
			$("input[name='search_id']").val("");
			$("input[name='search_cdate']").val("");
			$("input[name='search_weekdy']").val("");
			$("input[name='search_is_work']").val("");
			$("input[name='search_is_xend']").val("");
			$("input[name='search_is_mend']").val("");
			$("input[name='search_is_qend']").val("");
			$("input[name='search_is_hend']").val("");
			$("input[name='search_is_yend']").val("");
			$("input[name='search_reserved1']").val("");
		cdateConfig_list.buildQueryParams();
		$('#dg_cdateConfig').datagrid('load');
	});
	
	
	//新增
	$('#add_btn').click(function(){
		var add_form_id ='#addCdateConfigFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CDATE_CONFIG',
		    width: 800,
		    height: 500,
		    href: 'addCdateConfigPage.action',
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
		    		$('#addCdateConfigFrom').form({   
						 url:'addCdateConfigAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cdateConfig_list.buildQueryParams();
									$('#dg_cdateConfig').datagrid('load');
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
	cdateConfig_list.updateFormSubmit = function(pkid){
	    var edit_form_id ='#editCdateConfigFrom';
		$('<div id="dialog_holder"></div>').dialog({
		    title: 'CdateConfig',
		    width: 800,
		    height: 500,
		    href: 'editCdateConfigPage.action',
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
		   				$('#editCdateConfigFrom').form({   
						 url:'editCdateConfigAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cdateConfig_list.buildQueryParams();
									$('#dg_cdateConfig').datagrid('load');
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
		     			$('#delCdateConfigFrom').form({   
						 url:'delCdateConfigAction.action',    
							     onSubmit: function(){
							       $.messager.progress(); 
							        // do some check       
							        // return false to prevent submit;    
							     },    
							     success:function(data){
							       //do some
							        $.messager.progress('close');
									cdateConfig_list.buildQueryParams();
									$('#dg_cdateConfig').datagrid('load');
									$('#dialog_holder').dialog('close');
							     }
						});// 
					    $('#delCdateConfigFrom').submit();
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
	cdateConfig_list.detailFormSubmit = function(pkid){
		$('<div id="dialog_holder"></div>').dialog({
		    title: '详细CdateConfig',
		    width: 800,
		    height: 500,
		    href: 'detailCdateConfigPage.action',
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