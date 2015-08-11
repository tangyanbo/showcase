<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editAgentModelFrom" name="editAgentModelFrom" method="post" action="editAgentModelAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="agentModelDto.id" name="agentModelDto.id" value="${agentModelDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>model_name</label></th>
									<td>
										<input type="text" id="agentModelDto.model_name" name="agentModelDto.model_name" value="${agentModelDto.model_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_name不能为空',missingMessage:'model_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>model_no</label></th>
									<td>
										<input type="text" id="agentModelDto.model_no" name="agentModelDto.model_no" value="${agentModelDto.model_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'model_no不能为空',missingMessage:'model_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>path</label></th>
									<td>
										<input type="text" id="agentModelDto.path" name="agentModelDto.path" value="${agentModelDto.path}" class="easyui-validatebox" data-options="required:true,invalidMessage:'path不能为空',missingMessage:'path不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="agentModelDto.desc" name="agentModelDto.desc" value="${agentModelDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_no</label></th>
									<td>
										<input type="text" id="agentModelDto.super_no" name="agentModelDto.super_no" value="${agentModelDto.super_no}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_no不能为空',missingMessage:'super_no不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="agentModelDto.remark" name="agentModelDto.remark" value="${agentModelDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="agentModelDto.reserved" name="agentModelDto.reserved" value="${agentModelDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delAgentModelFrom" name="delAgentModelFrom" method="post" action="delAgentModelAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${agentModelDto.id}" />
			</form>
		</div>
	</div>
</div>