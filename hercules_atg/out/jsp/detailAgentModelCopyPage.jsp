<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgentModelCopyFrom" name="editAgentModelCopyFrom" method="post" action="editAgentModelCopyAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>model_name</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.model_name" name="agentModelCopyDto.model_name"  value="${agentModelCopyDto.model_name}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>model_no</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.model_no" name="agentModelCopyDto.model_no"  value="${agentModelCopyDto.model_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>path</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.path" name="agentModelCopyDto.path"  value="${agentModelCopyDto.path}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>desc</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.desc" name="agentModelCopyDto.desc"  value="${agentModelCopyDto.desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>super_no</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.super_no" name="agentModelCopyDto.super_no"  value="${agentModelCopyDto.super_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>remark</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.remark" name="agentModelCopyDto.remark"  value="${agentModelCopyDto.remark}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved</label></th>
								<td>
									<input type="text" id="agentModelCopyDto.reserved" name="agentModelCopyDto.reserved"  value="${agentModelCopyDto.reserved}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>