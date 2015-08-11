<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addRulesMerAmtFrom" name="addRulesMerAmtFrom" method="post" action="addRulesMerAmtAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.mer_sys_id" name="rulesMerAmtDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>start_amt</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.start_amt" name="rulesMerAmtDto.start_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'start_amt不能为空',missingMessage:'start_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>end_amt</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.end_amt" name="rulesMerAmtDto.end_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'end_amt不能为空',missingMessage:'end_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tract_id</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.tract_id" name="rulesMerAmtDto.tract_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_id不能为空',missingMessage:'tract_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.reserved1" name="rulesMerAmtDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.reserved2" name="rulesMerAmtDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="rulesMerAmtDto.reserved3" name="rulesMerAmtDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>