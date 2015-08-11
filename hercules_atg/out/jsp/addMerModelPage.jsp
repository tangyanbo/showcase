<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerModelFrom" name="addMerModelFrom" method="post" action="addMerModelAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>model_name</label></th>
							<td>
								<input type="text" id="merModelDto.model_name" name="merModelDto.model_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>model_no</label></th>
							<td>
								<input type="text" id="merModelDto.model_no" name="merModelDto.model_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>path</label></th>
							<td>
								<input type="text" id="merModelDto.path" name="merModelDto.path" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>desc</label></th>
							<td>
								<input type="text" id="merModelDto.desc" name="merModelDto.desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>super_no</label></th>
							<td>
								<input type="text" id="merModelDto.super_no" name="merModelDto.super_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="merModelDto.remark" name="merModelDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>