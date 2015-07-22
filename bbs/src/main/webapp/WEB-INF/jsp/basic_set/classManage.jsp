<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<script type="text/javascript">
function changeGrade(gradeId,self){
	$("#confirmSet").css("display","none").next().css("display","");
	$('#class-container').panel('refresh', 'toClassManageList.action?gradeId='+gradeId);
	$(".claSysUI a").removeClass("actived");
	$(self).addClass("actived");
	
}

function toModify(){
	var gradeId = $(".claSysUI .actived").attr("gradeId");
	$("#confirmSet").css("display","").next().css("display","none");
	$('#class-container').panel('refresh', 'toClassManageModifyList.action?gradeId='+gradeId);
}
</script>

<div class="sysContent">
	<div class="leftCla">
		<div class="leTitle">
			<span class="leminTitle">所有年级</span>
		</div>
		<ul id="class-manage-gradelist" class="claSysUI">
			<c:forEach var="g" items="${gradeList }" varStatus="sta">
				<li><a href="javascript:changeGrade('${g.gradeId}',$('a[index=${sta.index }]'));" index="${sta.index }" gradeId=${g.gradeId } class="${g.gradeId eq gradeId ? 'actived' : '' }">${g.name }</a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="rightCla">
		<div id="class-container" class="easyui-panel" href="toClassManageList.action?gradeId=${gradeList[0].gradeId }" style="height: 365px;overflow: auto;">
		
		</div>
		<div class="tabbottom">
			<span class="icon-ok" id="confirmSet" style="display: none;cursor: pointer;" onclick="fillForm()">确认设置</span><span class="icon-ok" style="cursor: pointer;" onclick="toModify()">班级设置</span>
		</div>
		<div class="tShow">
			<p>提示：</p>
			<p>1、要添加新的班级请勾选复选框并填入班级名称、班级类型及显示数据；</p>
			<p>2、如果需要删除某班级则取消勾选复选框；</p>
			<p>3、删除班级并不会删除用户等其他信息。</p>
		</div>

	</div>
</div>