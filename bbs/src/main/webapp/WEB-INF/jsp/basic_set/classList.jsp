<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>班级设置</title>
<jsp:include page="../common/head_tag.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value='/theme/${theme}/css/common.css'/>" />
<script>
	jQuery(function($) {
		initBasicTab(3);
		//$("#users").tabs();
		
		var dialogUpdate = $("#form-update").dialog({
			autoOpen:false,
			show:"slide",
			hide:"slide",
			position: ["center",200] ,
			modal: true,
			minWidth:440
		});
		dialogUpdate.validate({
			rules :{
				"classes.name" : "required",
				"classes.sort" : {
					required : true,
					digits : true
				}
			},
			messages : {
				"classes.name" : "班级名称必须填写",
				"classes.sort" : {
					required : "序号必须填写",
					digits : "请输入正确的数字"
				}
			}			
		});
		
		var toUpdateClass = function(){
			var tr_Class = $(this).closest("TR");
			var clas = tr_Class.data("class");
			if(!clas){
				clas = $.parseJSON(tr_Class.attr("data"));
			}
			$("#form-update-gradeName").text(clas.gradeName);
			$("input[name='classes.classId']",dialogUpdate).val(clas.classId);
			$("input[name='classes.name']",dialogUpdate).val(clas.name);
			$("input[name='classes.sort']",dialogUpdate).val(clas.sort);
			dialogUpdate.dialog("option",{
				buttons : {
					'提交':function(){
						if(!dialogUpdate.valid()){
							return;
						}
						$.ajax({
							url:"updateClass.action",
							type:"post",
							data:dialogUpdate.serializeArray(),
							dataType:"json",
							success:function(c){
								c = $.extend(clas,c);
								tr_Class.data("class",c);
								tr_Class.children("td:eq(1)").text(c.name);
								tr_Class.children("td:eq(2)").text(c.sort);
								//tr_Class.remove();
								//appendClass(clas.gradeId,tr_Class);
							},
							complete : function(){
								dialogUpdate.dialog("close");
							},
							error:exceptionHandler
						});
					}
				}
			}).dialog("open");
		},
		deleteClass = function(){
			var tr_Class = $(this).closest("TR");
			$.confirm("提示", "确认删除该班级吗？", function() {
				var clas = tr_Class.data("class");
				if(!clas){
					clas = $.parseJSON(tr_Class.attr("data"));
				}
				$.ajax({
					url:"deleteClass.action",
					type:"post",
					data:{"classes.classId":clas.classId},
					dataType:"json",
					success:function(c){
						tr_Class.remove();parent.indexIframeResize();
					},
					error:exceptionHandler
				});
			});
		};
		createClass = function(clas){
			var str = '<tr parent="grade-'+clas.gradeId+'" sort="'+clas.sort+'">'
						+'<td>&nbsp;</td>'
						+'<td nowrap="nowrap">'+clas.name+'</td>'
						+'<td nowrap="nowrap">'+clas.sort+'</td>'
						+'<td nowrap="nowrap">'
							+'<a href="javascript:void(0);" class="icon_update" title="修改班级名称" ></a>&nbsp;'
							+'<a href="javascript:void(0);" class="icon_delete" title="删除该班级" ></a>'
						+'</td>'
					 +'</tr>';
			var tr = $(str).data("class",clas);
			$("a.icon_delete",tr).click(deleteClass);
			$("a.icon_update",tr).click(toUpdateClass);
			return tr;
		},
		appendClass = function(gradeId,element){
			var sort = $(element).attr("sort");
			sort = parseInt(sort);
			var gradeElt = $("#grade-"+gradeId);
			var allClass = gradeElt.nextAll("tr[parent='grade-"+gradeId+"']");
			if(allClass.size()==0){
				allClass.next().remove();
				gradeElt.after(element);
			}else{
				var flag = false;
				allClass.each(function(){
					var s = $(this).attr("sort");
					s = parseInt(s);
					if(sort < s){
						$(this).before(element);
						flag = true;
						return false;
					}
				});
				if(!flag){
					allClass.filter(":last").after(element);
				}
				parent.indexIframeResize();
			}
		};
		$("a.icon_add_grade").click(function(){
			var gradeId = $(this).attr("gradeId");
			$.post("fastAddClassToGrade.action",{"classes.grade.gradeId":gradeId},function(clas){
				var tr = createClass(clas);
				appendClass(gradeId,tr);
			},"json");
		});
		$("a.icon_delete").click(deleteClass);
		$("a.icon_update").click(toUpdateClass);
		parent.indexIframeResize();
		
	});
	
	</script>
</head>
<body style="margin: 1px;">
<div id="basicTab">
	<jsp:include page="basicset_header.jsp" />
    <div id="teacher">
    
    	 <form action="#" method="post" id="form-update" title="修改班级信息" style="display:none;">       
           <input type="hidden" name="classes.classId" value="" />
        <ul class="add_form">
        	<li><div class="item"><strong>*</strong>年级</div>&nbsp;&nbsp;<span id="form-update-gradeName"></span></li>
        	<li><div class="item"><strong>*</strong>班级</div>&nbsp;&nbsp;<input type="text" name="classes.name" maxlength="25" /></li>
        	<li><div class="item">序号</div>&nbsp;&nbsp;<input type="text" name="classes.sort"  maxlength="5" /></li>
        </ul>
        </form>
        <div style="clear:both"></div>
        <table class="user_table">
		<thead>
			<tr>
				<th width="15%" nowrap="nowrap">年级</th>
				<th width="50%" nowrap="nowrap">班级</th>
				<th width="5%" nowrap="nowrap">序号</th>
				<th width="5%" nowrap="nowrap">操作</th>
			</tr>
		</thead>
		<tbody>
		    
		<c:if test="${! empty requestScope.gradeList}">
		     <c:forEach items="${requestScope.gradeList}" var="grade">
			<tr id="grade-${grade.gradeId }">
            	<td nowrap="nowrap">${grade.name}</td>
				<td nowrap="nowrap">&nbsp;</td>
				<td nowrap="nowrap">&nbsp;</td>
				<td nowrap="nowrap">
					<div style="padding-right:48px;"><a href="javascript:void(0);"  gradeId="${grade.gradeId}" class="icon_add_grade r" title="快速添加班级" ></a></div>
				</td>
			</tr>
				<c:choose>
		         	<c:when test="${! empty grade.classes}">
		            <c:forEach items="${grade.classes}" var="clas">
				    <tr parent="grade-${grade.gradeId }" data='{"classId":"${clas.classId}","name":"${clas.name }","sort":"${clas.sort}","gradeId":"${grade.gradeId}","gradeName":"${grade.name }"}' sort=${clas.sort}>
		            	<td>&nbsp;</td>
						<td nowrap="nowrap">${clas.name}</td>
						<td nowrap="nowrap">${clas.sort }</td>
						<td nowrap="nowrap">
							<a href="javascript:void(0);" class="icon_update" title="修改班级名称" ></a>
							<a href="javascript:void(0);" class="icon_delete" title="删除该班级" ></a>
						</td>
				    </tr>
					</c:forEach>
		            </c:when>
		            <c:otherwise>
		            <tr>
			            <td>&nbsp;</td>
			            <td><font color="gray">无相关班级</font></td>
			            <td>&nbsp;</td>
			            <td>&nbsp;</td>
		            </tr>
		            </c:otherwise>
		        </c:choose>
           </c:forEach>
         </c:if>
		</tbody>
	</table>    
    </div>   
</div>
</body>
</html>
