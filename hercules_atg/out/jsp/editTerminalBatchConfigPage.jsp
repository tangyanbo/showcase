<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTerminalBatchConfigFrom" name="editTerminalBatchConfigFrom" method="post" action="editTerminalBatchConfigAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="terminalBatchConfigDto.batch_id" name="terminalBatchConfigDto.batch_id" value="${terminalBatchConfigDto.batch_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.create_time" name="terminalBatchConfigDto.create_time" value="${terminalBatchConfigDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_num</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.create_num" name="terminalBatchConfigDto.create_num" value="${terminalBatchConfigDto.create_num}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_num不能为空',missingMessage:'create_num不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.mer_sys_id" name="terminalBatchConfigDto.mer_sys_id" value="${terminalBatchConfigDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>factory_id</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.factory_id" name="terminalBatchConfigDto.factory_id" value="${terminalBatchConfigDto.factory_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'factory_id不能为空',missingMessage:'factory_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.status" name="terminalBatchConfigDto.status" value="${terminalBatchConfigDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>file_name</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.file_name" name="terminalBatchConfigDto.file_name" value="${terminalBatchConfigDto.file_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'file_name不能为空',missingMessage:'file_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.reserved1" name="terminalBatchConfigDto.reserved1" value="${terminalBatchConfigDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.reserved2" name="terminalBatchConfigDto.reserved2" value="${terminalBatchConfigDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="terminalBatchConfigDto.reserved3" name="terminalBatchConfigDto.reserved3" value="${terminalBatchConfigDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delTerminalBatchConfigFrom" name="delTerminalBatchConfigFrom" method="post" action="delTerminalBatchConfigAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${terminalBatchConfigDto.batch_id}" />
			</form>
		</div>
	</div>
</div>