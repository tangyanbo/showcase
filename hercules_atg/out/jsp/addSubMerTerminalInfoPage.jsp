<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSubMerTerminalInfoFrom" name="addSubMerTerminalInfoFrom" method="post" action="addSubMerTerminalInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>terminal_id</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.terminal_id" name="subMerTerminalInfoDto.terminal_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.sub_mer_id" name="subMerTerminalInfoDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tsn</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.tsn" name="subMerTerminalInfoDto.tsn" class="easyui-validatebox" data-options="required:true,invalidMessage:'tsn不能为空',missingMessage:'tsn不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_type</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.terminal_type" name="subMerTerminalInfoDto.terminal_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_type不能为空',missingMessage:'terminal_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.reserved1" name="subMerTerminalInfoDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.reserved2" name="subMerTerminalInfoDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.reserved3" name="subMerTerminalInfoDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>factory_id</label></th>
							<td>
								<input type="text" id="subMerTerminalInfoDto.factory_id" name="subMerTerminalInfoDto.factory_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'factory_id不能为空',missingMessage:'factory_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>