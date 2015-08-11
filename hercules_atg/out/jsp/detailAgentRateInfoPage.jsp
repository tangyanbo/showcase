<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgentRateInfoFrom" name="editAgentRateInfoFrom" method="post" action="editAgentRateInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>agent_id</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.agent_id" name="agentRateInfoDto.agent_id"  value="${agentRateInfoDto.agent_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mcc_category_id</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.mcc_category_id" name="agentRateInfoDto.mcc_category_id"  value="${agentRateInfoDto.mcc_category_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_rate_1</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.agent_rate_1" name="agentRateInfoDto.agent_rate_1"  value="${agentRateInfoDto.agent_rate_1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_rate_2</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.agent_rate_2" name="agentRateInfoDto.agent_rate_2"  value="${agentRateInfoDto.agent_rate_2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>agent_highest_fee</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.agent_highest_fee" name="agentRateInfoDto.agent_highest_fee"  value="${agentRateInfoDto.agent_highest_fee}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.remark" name="agentRateInfoDto.remark"  value="${agentRateInfoDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="agentRateInfoDto.reserved" name="agentRateInfoDto.reserved"  value="${agentRateInfoDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>