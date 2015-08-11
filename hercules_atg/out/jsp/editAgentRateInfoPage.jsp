<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgentRateInfoFrom" name="editAgentRateInfoFrom" method="post" action="editAgentRateInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="agentRateInfoDto.id" name="agentRateInfoDto.id" value="${agentRateInfoDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>agent_id</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.agent_id" name="agentRateInfoDto.agent_id" value="${agentRateInfoDto.agent_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_id必须为数字',missingMessage:'agent_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mcc_category_id</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.mcc_category_id" name="agentRateInfoDto.mcc_category_id" value="${agentRateInfoDto.mcc_category_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mcc_category_id必须为数字',missingMessage:'mcc_category_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_rate_1</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.agent_rate_1" name="agentRateInfoDto.agent_rate_1" value="${agentRateInfoDto.agent_rate_1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_rate_1不能为空',missingMessage:'agent_rate_1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_rate_2</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.agent_rate_2" name="agentRateInfoDto.agent_rate_2" value="${agentRateInfoDto.agent_rate_2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_rate_2不能为空',missingMessage:'agent_rate_2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_highest_fee</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.agent_highest_fee" name="agentRateInfoDto.agent_highest_fee" value="${agentRateInfoDto.agent_highest_fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_highest_fee不能为空',missingMessage:'agent_highest_fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.remark" name="agentRateInfoDto.remark" value="${agentRateInfoDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="agentRateInfoDto.reserved" name="agentRateInfoDto.reserved" value="${agentRateInfoDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delAgentRateInfoFrom" name="delAgentRateInfoFrom" method="post" action="delAgentRateInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${agentRateInfoDto.id}" />
			</form>
		</div>
	</div>
</div>