<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSubMerInfoDeletedFrom" name="addSubMerInfoDeletedFrom" method="post" action="addSubMerInfoDeletedAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="subMerInfoDeletedDto.sub_mer_id" name="subMerInfoDeletedDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>prefix_id</label></th>
							<td>
								<input type="text" id="subMerInfoDeletedDto.prefix_id" name="subMerInfoDeletedDto.prefix_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'prefix_id不能为空',missingMessage:'prefix_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>suffix_id</label></th>
							<td>
								<input type="text" id="subMerInfoDeletedDto.suffix_id" name="subMerInfoDeletedDto.suffix_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'suffix_id不能为空',missingMessage:'suffix_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="subMerInfoDeletedDto.reserved" name="subMerInfoDeletedDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>