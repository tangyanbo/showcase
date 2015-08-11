<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerTractFrom" name="addMerTractFrom" method="post" action="addMerTractAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="merTractDto.mer_sys_id" name="merTractDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_id</label></th>
							<td>
								<input type="text" id="merTractDto.tract_id" name="merTractDto.tract_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tract_id必须为数字',missingMessage:'tract_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>profit_type</label></th>
							<td>
								<input type="text" id="merTractDto.profit_type" name="merTractDto.profit_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit_type不能为空',missingMessage:'profit_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>defalut_status</label></th>
							<td>
								<input type="text" id="merTractDto.defalut_status" name="merTractDto.defalut_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'defalut_status不能为空',missingMessage:'defalut_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="merTractDto.status" name="merTractDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="merTractDto.reserved" name="merTractDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>