<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMccCategoryInfoFrom" name="addMccCategoryInfoFrom" method="post" action="addMccCategoryInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mcc_category_name</label></th>
							<td>
								<input type="text" id="mccCategoryInfoDto.mcc_category_name" name="mccCategoryInfoDto.mcc_category_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'mcc_category_name不能为空',missingMessage:'mcc_category_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>profit</label></th>
							<td>
								<input type="text" id="mccCategoryInfoDto.profit" name="mccCategoryInfoDto.profit" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit不能为空',missingMessage:'profit不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>desc</label></th>
							<td>
								<input type="text" id="mccCategoryInfoDto.desc" name="mccCategoryInfoDto.desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="mccCategoryInfoDto.remark" name="mccCategoryInfoDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>