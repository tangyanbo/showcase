<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editCstpMerhcantFrom" name="editCstpMerhcantFrom" method="post" action="editCstpMerhcantAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="cstpMerhcantDto.cm_id" name="cstpMerhcantDto.cm_id" value="${cstpMerhcantDto.cm_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>merchant_id</label></th>
									<td>
										<input type="text" id="cstpMerhcantDto.merchant_id" name="cstpMerhcantDto.merchant_id" value="${cstpMerhcantDto.merchant_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_id不能为空',missingMessage:'merchant_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>merchant_name</label></th>
									<td>
										<input type="text" id="cstpMerhcantDto.merchant_name" name="cstpMerhcantDto.merchant_name" value="${cstpMerhcantDto.merchant_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'merchant_name不能为空',missingMessage:'merchant_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="cstpMerhcantDto.create_time" name="cstpMerhcantDto.create_time" value="${cstpMerhcantDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>primery_key</label></th>
									<td>
										<input type="text" id="cstpMerhcantDto.primery_key" name="cstpMerhcantDto.primery_key" value="${cstpMerhcantDto.primery_key}" class="easyui-validatebox" data-options="required:true,invalidMessage:'primery_key不能为空',missingMessage:'primery_key不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>develop_id</label></th>
									<td>
										<input type="text" id="cstpMerhcantDto.develop_id" name="cstpMerhcantDto.develop_id" value="${cstpMerhcantDto.develop_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'develop_id不能为空',missingMessage:'develop_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sp_id</label></th>
									<td>
										<input type="text" id="cstpMerhcantDto.sp_id" name="cstpMerhcantDto.sp_id" value="${cstpMerhcantDto.sp_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sp_id不能为空',missingMessage:'sp_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delCstpMerhcantFrom" name="delCstpMerhcantFrom" method="post" action="delCstpMerhcantAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${cstpMerhcantDto.cm_id}" />
			</form>
		</div>
	</div>
</div>