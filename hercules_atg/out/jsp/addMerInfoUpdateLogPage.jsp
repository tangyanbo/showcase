<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerInfoUpdateLogFrom" name="addMerInfoUpdateLogFrom" method="post" action="addMerInfoUpdateLogAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_id</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.mer_id" name="merInfoUpdateLogDto.mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_id必须为数字',missingMessage:'mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_value</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.org_value" name="merInfoUpdateLogDto.org_value" class="easyui-validatebox" data-options="required:true,invalidMessage:'org_value不能为空',missingMessage:'org_value不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>new_value</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.new_value" name="merInfoUpdateLogDto.new_value" class="easyui-validatebox" data-options="required:true,invalidMessage:'new_value不能为空',missingMessage:'new_value不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>org_time</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.org_time" name="merInfoUpdateLogDto.org_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'org_time不能为空',missingMessage:'org_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>update_time</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.update_time" name="merInfoUpdateLogDto.update_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'update_time不能为空',missingMessage:'update_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.reserved1" name="merInfoUpdateLogDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.reserved2" name="merInfoUpdateLogDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="merInfoUpdateLogDto.reserved3" name="merInfoUpdateLogDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>