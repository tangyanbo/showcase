<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRegionCodeFrom" name="editRegionCodeFrom" method="post" action="editRegionCodeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="regionCodeDto.id" name="regionCodeDto.id" value="${regionCodeDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>code</label></th>
									<td>
										<input type="text" id="regionCodeDto.code" name="regionCodeDto.code" value="${regionCodeDto.code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'code不能为空',missingMessage:'code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>name</label></th>
									<td>
										<input type="text" id="regionCodeDto.name" name="regionCodeDto.name" value="${regionCodeDto.name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'name不能为空',missingMessage:'name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_code</label></th>
									<td>
										<input type="text" id="regionCodeDto.super_code" name="regionCodeDto.super_code" value="${regionCodeDto.super_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_code不能为空',missingMessage:'super_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>level</label></th>
									<td>
										<input type="text" id="regionCodeDto.level" name="regionCodeDto.level" value="${regionCodeDto.level}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'level必须为数字',missingMessage:'level必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="regionCodeDto.remark" name="regionCodeDto.remark" value="${regionCodeDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark1</label></th>
									<td>
										<input type="text" id="regionCodeDto.remark1" name="regionCodeDto.remark1" value="${regionCodeDto.remark1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark1不能为空',missingMessage:'remark1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delRegionCodeFrom" name="delRegionCodeFrom" method="post" action="delRegionCodeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${regionCodeDto.id}" />
			</form>
		</div>
	</div>
</div>