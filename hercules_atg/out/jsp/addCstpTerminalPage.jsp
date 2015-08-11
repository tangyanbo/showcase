<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addCstpTerminalFrom" name="addCstpTerminalFrom" method="post" action="addCstpTerminalAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>merchant_id</label></th>
							<td>
								<input type="text" id="cstpTerminalDto.merchant_id" name="cstpTerminalDto.merchant_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_id不能为空',missingMessage:'merchant_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_id</label></th>
							<td>
								<input type="text" id="cstpTerminalDto.terminal_id" name="cstpTerminalDto.terminal_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_id不能为空',missingMessage:'terminal_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="cstpTerminalDto.create_time" name="cstpTerminalDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sign_in_date</label></th>
							<td>
								<input type="text" id="cstpTerminalDto.sign_in_date" name="cstpTerminalDto.sign_in_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'sign_in_date不能为空',missingMessage:'sign_in_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mac_key</label></th>
							<td>
								<input type="text" id="cstpTerminalDto.mac_key" name="cstpTerminalDto.mac_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'mac_key不能为空',missingMessage:'mac_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pin_key</label></th>
							<td>
								<input type="text" id="cstpTerminalDto.pin_key" name="cstpTerminalDto.pin_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'pin_key不能为空',missingMessage:'pin_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>