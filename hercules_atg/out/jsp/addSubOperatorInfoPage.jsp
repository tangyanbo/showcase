<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSubOperatorInfoFrom" name="addSubOperatorInfoFrom" method="post" action="addSubOperatorInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.sub_mer_id" name="subOperatorInfoDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>operator_id</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.operator_id" name="subOperatorInfoDto.operator_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'operator_id不能为空',missingMessage:'operator_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>operator_name</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.operator_name" name="subOperatorInfoDto.operator_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'operator_name不能为空',missingMessage:'operator_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contactor</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.contactor" name="subOperatorInfoDto.contactor" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor不能为空',missingMessage:'contactor不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contactor_phone</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.contactor_phone" name="subOperatorInfoDto.contactor_phone" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor_phone不能为空',missingMessage:'contactor_phone不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contactor_addr</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.contactor_addr" name="subOperatorInfoDto.contactor_addr" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor_addr不能为空',missingMessage:'contactor_addr不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.status" name="subOperatorInfoDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.create_time" name="subOperatorInfoDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.remark" name="subOperatorInfoDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="subOperatorInfoDto.reserved" name="subOperatorInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>