<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addTerminalManagementFrom" name="addTerminalManagementFrom" method="post" action="addTerminalManagementAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>merchant_no</label></th>
							<td>
								<input type="text" id="terminalManagementDto.merchant_no" name="terminalManagementDto.merchant_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_no不能为空',missingMessage:'merchant_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>terminal_no</label></th>
							<td>
								<input type="text" id="terminalManagementDto.terminal_no" name="terminalManagementDto.terminal_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'terminal_no不能为空',missingMessage:'terminal_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tmk</label></th>
							<td>
								<input type="text" id="terminalManagementDto.tmk" name="terminalManagementDto.tmk" class="easyui-validatebox" data-options="required:true,invalidMessage:'tmk不能为空',missingMessage:'tmk不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>channel_type</label></th>
							<td>
								<input type="text" id="terminalManagementDto.channel_type" name="terminalManagementDto.channel_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'channel_type不能为空',missingMessage:'channel_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tmk_local</label></th>
							<td>
								<input type="text" id="terminalManagementDto.tmk_local" name="terminalManagementDto.tmk_local" class="easyui-validatebox" data-options="required:true,invalidMessage:'tmk_local不能为空',missingMessage:'tmk_local不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pin_key</label></th>
							<td>
								<input type="text" id="terminalManagementDto.pin_key" name="terminalManagementDto.pin_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'pin_key不能为空',missingMessage:'pin_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mac_key</label></th>
							<td>
								<input type="text" id="terminalManagementDto.mac_key" name="terminalManagementDto.mac_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'mac_key不能为空',missingMessage:'mac_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>track_key</label></th>
							<td>
								<input type="text" id="terminalManagementDto.track_key" name="terminalManagementDto.track_key" class="easyui-validatebox" data-options="required:true,invalidMessage:'track_key不能为空',missingMessage:'track_key不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>lot_no</label></th>
							<td>
								<input type="text" id="terminalManagementDto.lot_no" name="terminalManagementDto.lot_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'lot_no不能为空',missingMessage:'lot_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="terminalManagementDto.create_date" name="terminalManagementDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="terminalManagementDto.create_time" name="terminalManagementDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>network_no</label></th>
							<td>
								<input type="text" id="terminalManagementDto.network_no" name="terminalManagementDto.network_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'network_no不能为空',missingMessage:'network_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext</label></th>
							<td>
								<input type="text" id="terminalManagementDto.ext" name="terminalManagementDto.ext" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext1</label></th>
							<td>
								<input type="text" id="terminalManagementDto.ext1" name="terminalManagementDto.ext1" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext1不能为空',missingMessage:'ext1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>