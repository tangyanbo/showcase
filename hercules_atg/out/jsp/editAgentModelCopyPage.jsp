<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgentModelCopyFrom" name="editAgentModelCopyFrom" method="post" action="editAgentModelCopyAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="agentModelCopyDto.id" name="agentModelCopyDto.id" value="${agentModelCopyDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>model_name</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.model_name" name="agentModelCopyDto.model_name" value="${agentModelCopyDto.model_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>model_no</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.model_no" name="agentModelCopyDto.model_no" value="${agentModelCopyDto.model_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>path</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.path" name="agentModelCopyDto.path" value="${agentModelCopyDto.path}" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.desc" name="agentModelCopyDto.desc" value="${agentModelCopyDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_no</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.super_no" name="agentModelCopyDto.super_no" value="${agentModelCopyDto.super_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.remark" name="agentModelCopyDto.remark" value="${agentModelCopyDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="agentModelCopyDto.reserved" name="agentModelCopyDto.reserved" value="${agentModelCopyDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delAgentModelCopyFrom" name="delAgentModelCopyFrom" method="post" action="delAgentModelCopyAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${agentModelCopyDto.id}" />
			</form>
		</div>
	</div>
</div>