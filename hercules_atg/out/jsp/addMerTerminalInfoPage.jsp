<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerTerminalInfoFrom" name="addMerTerminalInfoFrom" method="post" action="addMerTerminalInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.mer_sys_id" name="merTerminalInfoDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>category</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.category" name="merTerminalInfoDto.category" class="easyui-validatebox" data-options="required:true,invalidMessage:'category不能为空',missingMessage:'category不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_code</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.terminal_code" name="merTerminalInfoDto.terminal_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_code不能为空',missingMessage:'terminal_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_systerm</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.terminal_systerm" name="merTerminalInfoDto.terminal_systerm" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_systerm不能为空',missingMessage:'terminal_systerm不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>file_name</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.file_name" name="merTerminalInfoDto.file_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'file_name不能为空',missingMessage:'file_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>version</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.version" name="merTerminalInfoDto.version" class="easyui-validatebox" data-options="required:true,invalidMessage:'version不能为空',missingMessage:'version不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>version_desc</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.version_desc" name="merTerminalInfoDto.version_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'version_desc不能为空',missingMessage:'version_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>update_type</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.update_type" name="merTerminalInfoDto.update_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'update_type不能为空',missingMessage:'update_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>update_path</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.update_path" name="merTerminalInfoDto.update_path" class="easyui-validatebox" data-options="required:true,invalidMessage:'update_path不能为空',missingMessage:'update_path不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.create_time" name="merTerminalInfoDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.status" name="merTerminalInfoDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="merTerminalInfoDto.reserved" name="merTerminalInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>