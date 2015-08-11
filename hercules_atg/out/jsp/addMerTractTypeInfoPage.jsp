<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerTractTypeInfoFrom" name="addMerTractTypeInfoFrom" method="post" action="addMerTractTypeInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.mer_sys_id" name="merTractTypeInfoDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mcc_category_id</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.mcc_category_id" name="merTractTypeInfoDto.mcc_category_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mcc_category_id必须为数字',missingMessage:'mcc_category_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>profit_type</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.profit_type" name="merTractTypeInfoDto.profit_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit_type不能为空',missingMessage:'profit_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_rate_1</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.mer_rate_1" name="merTractTypeInfoDto.mer_rate_1" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_rate_1不能为空',missingMessage:'mer_rate_1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_rate_2</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.mer_rate_2" name="merTractTypeInfoDto.mer_rate_2" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_rate_2不能为空',missingMessage:'mer_rate_2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_highest_fee</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.mer_highest_fee" name="merTractTypeInfoDto.mer_highest_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_highest_fee不能为空',missingMessage:'mer_highest_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_lowest_fee</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.mer_lowest_fee" name="merTractTypeInfoDto.mer_lowest_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_lowest_fee不能为空',missingMessage:'mer_lowest_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.status" name="merTractTypeInfoDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="merTractTypeInfoDto.reserved" name="merTractTypeInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>