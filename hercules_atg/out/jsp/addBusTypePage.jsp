<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addBusTypeFrom" name="addBusTypeFrom" method="post" action="addBusTypeAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>bus_name</label></th>
							<td>
								<input type="text" id="busTypeDto.bus_name" name="busTypeDto.bus_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_name不能为空',missingMessage:'bus_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>bus_desc</label></th>
							<td>
								<input type="text" id="busTypeDto.bus_desc" name="busTypeDto.bus_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'bus_desc不能为空',missingMessage:'bus_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="busTypeDto.remark" name="busTypeDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>