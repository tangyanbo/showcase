<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerModelFrom" name="editMerModelFrom" method="post" action="editMerModelAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="merModelDto.id" name="merModelDto.id" value="${merModelDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>model_name</label></th>
									<td>
										<input type="text" id="merModelDto.model_name" name="merModelDto.model_name" value="${merModelDto.model_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>model_no</label></th>
									<td>
										<input type="text" id="merModelDto.model_no" name="merModelDto.model_no" value="${merModelDto.model_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>path</label></th>
									<td>
										<input type="text" id="merModelDto.path" name="merModelDto.path" value="${merModelDto.path}" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="merModelDto.desc" name="merModelDto.desc" value="${merModelDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_no</label></th>
									<td>
										<input type="text" id="merModelDto.super_no" name="merModelDto.super_no" value="${merModelDto.super_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="merModelDto.remark" name="merModelDto.remark" value="${merModelDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delMerModelFrom" name="delMerModelFrom" method="post" action="delMerModelAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${merModelDto.id}" />
			</form>
		</div>
	</div>
</div>