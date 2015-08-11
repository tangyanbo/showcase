<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addTerminalTypeFrom" name="addTerminalTypeFrom" method="post" action="addTerminalTypeAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>product_name</label></th>
							<td>
								<input type="text" id="terminalTypeDto.product_name" name="terminalTypeDto.product_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'product_name不能为空',missingMessage:'product_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>product_desc</label></th>
							<td>
								<input type="text" id="terminalTypeDto.product_desc" name="terminalTypeDto.product_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'product_desc不能为空',missingMessage:'product_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="terminalTypeDto.remark" name="terminalTypeDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>