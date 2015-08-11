<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRegionCodeNewFrom" name="editRegionCodeNewFrom" method="post" action="editRegionCodeNewAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="regionCodeNewDto.id" name="regionCodeNewDto.id" value="${regionCodeNewDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>code</label></th>
									<td>
										<input type="text" id="regionCodeNewDto.code" name="regionCodeNewDto.code" value="${regionCodeNewDto.code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'code不能为空',missingMessage:'code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>name</label></th>
									<td>
										<input type="text" id="regionCodeNewDto.name" name="regionCodeNewDto.name" value="${regionCodeNewDto.name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'name不能为空',missingMessage:'name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>level</label></th>
									<td>
										<input type="text" id="regionCodeNewDto.level" name="regionCodeNewDto.level" value="${regionCodeNewDto.level}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'level必须为数字',missingMessage:'level必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_code</label></th>
									<td>
										<input type="text" id="regionCodeNewDto.super_code" name="regionCodeNewDto.super_code" value="${regionCodeNewDto.super_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_code不能为空',missingMessage:'super_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="regionCodeNewDto.remark" name="regionCodeNewDto.remark" value="${regionCodeNewDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delRegionCodeNewFrom" name="delRegionCodeNewFrom" method="post" action="delRegionCodeNewAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${regionCodeNewDto.id}" />
			</form>
		</div>
	</div>
</div>