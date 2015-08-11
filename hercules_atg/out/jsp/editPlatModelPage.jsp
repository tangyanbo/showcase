<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editPlatModelFrom" name="editPlatModelFrom" method="post" action="editPlatModelAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="platModelDto.id" name="platModelDto.id" value="${platModelDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>model_name</label></th>
									<td>
										<input type="text" id="platModelDto.model_name" name="platModelDto.model_name" value="${platModelDto.model_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>model_no</label></th>
									<td>
										<input type="text" id="platModelDto.model_no" name="platModelDto.model_no" value="${platModelDto.model_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>path</label></th>
									<td>
										<input type="text" id="platModelDto.path" name="platModelDto.path" value="${platModelDto.path}" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="platModelDto.desc" name="platModelDto.desc" value="${platModelDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_no</label></th>
									<td>
										<input type="text" id="platModelDto.super_no" name="platModelDto.super_no" value="${platModelDto.super_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="platModelDto.remark" name="platModelDto.remark" value="${platModelDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delPlatModelFrom" name="delPlatModelFrom" method="post" action="delPlatModelAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${platModelDto.id}" />
			</form>
		</div>
	</div>
</div>