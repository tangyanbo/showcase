<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSubMerTerminalFrom" name="addSubMerTerminalFrom" method="post" action="addSubMerTerminalAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>tsn</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.tsn" name="subMerTerminalDto.tsn" class="easyui-validatebox" data-options="required:true,invalidMessage:'tsn不能为空',missingMessage:'tsn不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>factory</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.factory" name="subMerTerminalDto.factory" class="easyui-validatebox" data-options="required:true,invalidMessage:'factory不能为空',missingMessage:'factory不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.sub_mer_id" name="subMerTerminalDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.mer_sys_id" name="subMerTerminalDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>plat_mer_id</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.plat_mer_id" name="subMerTerminalDto.plat_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'plat_mer_id必须为数字',missingMessage:'plat_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>version</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.version" name="subMerTerminalDto.version" class="easyui-validatebox" data-options="required:true,invalidMessage:'version不能为空',missingMessage:'version不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>category</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.category" name="subMerTerminalDto.category" class="easyui-validatebox" data-options="required:true,invalidMessage:'category不能为空',missingMessage:'category不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.create_time" name="subMerTerminalDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>active_time</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.active_time" name="subMerTerminalDto.active_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'active_time不能为空',missingMessage:'active_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>last_update_time</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.last_update_time" name="subMerTerminalDto.last_update_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'last_update_time不能为空',missingMessage:'last_update_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_info</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.terminal_info" name="subMerTerminalDto.terminal_info" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_info不能为空',missingMessage:'terminal_info不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_name</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.login_name" name="subMerTerminalDto.login_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_name不能为空',missingMessage:'login_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_pwd</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.login_pwd" name="subMerTerminalDto.login_pwd" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_pwd不能为空',missingMessage:'login_pwd不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>last_login_time</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.last_login_time" name="subMerTerminalDto.last_login_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'last_login_time不能为空',missingMessage:'last_login_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>last_login_info</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.last_login_info" name="subMerTerminalDto.last_login_info" class="easyui-validatebox" data-options="required:true,invalidMessage:'last_login_info不能为空',missingMessage:'last_login_info不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.status" name="subMerTerminalDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.reserved" name="subMerTerminalDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_id_l1</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.agent_id_l1" name="subMerTerminalDto.agent_id_l1" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l1必须为数字',missingMessage:'agent_id_l1必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>agent_id_l2</label></th>
							<td>
								<input type="text" id="subMerTerminalDto.agent_id_l2" name="subMerTerminalDto.agent_id_l2" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id_l2必须为数字',missingMessage:'agent_id_l2必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>