<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addCssConfigFrom" name="addCssConfigFrom" method="post" action="addCssConfigAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>css_name</label></th>
							<td>
								<input type="text" id="cssConfigDto.css_name" name="cssConfigDto.css_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'css_name不能为空',missingMessage:'css_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>css_url</label></th>
							<td>
								<input type="text" id="cssConfigDto.css_url" name="cssConfigDto.css_url" class="easyui-validatebox" data-options="required:true,invalidMessage:'css_url不能为空',missingMessage:'css_url不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>css_id</label></th>
							<td>
								<input type="text" id="cssConfigDto.css_id" name="cssConfigDto.css_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'css_id不能为空',missingMessage:'css_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="cssConfigDto.reserved1" name="cssConfigDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="cssConfigDto.reserved2" name="cssConfigDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="cssConfigDto.reserved3" name="cssConfigDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="cssConfigDto.remark" name="cssConfigDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>