<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editRulesMerAmtFrom" name="editRulesMerAmtFrom" method="post" action="editRulesMerAmtAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="rulesMerAmtDto.id" name="rulesMerAmtDto.id" value="${rulesMerAmtDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.mer_sys_id" name="rulesMerAmtDto.mer_sys_id" value="${rulesMerAmtDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>start_amt</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.start_amt" name="rulesMerAmtDto.start_amt" value="${rulesMerAmtDto.start_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'start_amt不能为空',missingMessage:'start_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>end_amt</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.end_amt" name="rulesMerAmtDto.end_amt" value="${rulesMerAmtDto.end_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'end_amt不能为空',missingMessage:'end_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>tract_id</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.tract_id" name="rulesMerAmtDto.tract_id" value="${rulesMerAmtDto.tract_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'tract_id不能为空',missingMessage:'tract_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.reserved1" name="rulesMerAmtDto.reserved1" value="${rulesMerAmtDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.reserved2" name="rulesMerAmtDto.reserved2" value="${rulesMerAmtDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="rulesMerAmtDto.reserved3" name="rulesMerAmtDto.reserved3" value="${rulesMerAmtDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delRulesMerAmtFrom" name="delRulesMerAmtFrom" method="post" action="delRulesMerAmtAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${rulesMerAmtDto.id}" />
			</form>
		</div>
	</div>
</div>