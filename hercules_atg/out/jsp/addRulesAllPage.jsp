<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addRulesAllFrom" name="addRulesAllFrom" method="post" action="addRulesAllAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>start_time</label></th>
							<td>
								<input type="text" id="rulesAllDto.start_time" name="rulesAllDto.start_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'start_time不能为空',missingMessage:'start_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>end_time</label></th>
							<td>
								<input type="text" id="rulesAllDto.end_time" name="rulesAllDto.end_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'end_time不能为空',missingMessage:'end_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_night</label></th>
							<td>
								<input type="text" id="rulesAllDto.tract_night" name="rulesAllDto.tract_night" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_night不能为空',missingMessage:'tract_night不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_day</label></th>
							<td>
								<input type="text" id="rulesAllDto.tract_day" name="rulesAllDto.tract_day" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_day不能为空',missingMessage:'tract_day不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="rulesAllDto.status" name="rulesAllDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="rulesAllDto.reserved1" name="rulesAllDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="rulesAllDto.reserved2" name="rulesAllDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="rulesAllDto.reserved3" name="rulesAllDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>