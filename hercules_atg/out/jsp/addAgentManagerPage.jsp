<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addAgentManagerFrom" name="addAgentManagerFrom" method="post" action="addAgentManagerAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>agent_id</label></th>
							<td>
								<input type="text" id="agentManagerDto.agent_id" name="agentManagerDto.agent_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'agent_id不能为空',missingMessage:'agent_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>level</label></th>
							<td>
								<input type="text" id="agentManagerDto.level" name="agentManagerDto.level" class="easyui-validatebox" data-options="required:true,invalidMessage:'level不能为空',missingMessage:'level不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_name</label></th>
							<td>
								<input type="text" id="agentManagerDto.login_name" name="agentManagerDto.login_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_name不能为空',missingMessage:'login_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_pwd</label></th>
							<td>
								<input type="text" id="agentManagerDto.login_pwd" name="agentManagerDto.login_pwd" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_pwd不能为空',missingMessage:'login_pwd不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>purview</label></th>
							<td>
								<input type="text" id="agentManagerDto.purview" name="agentManagerDto.purview" class="easyui-validatebox" data-options="required:true,invalidMessage:'purview不能为空',missingMessage:'purview不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>real_name</label></th>
							<td>
								<input type="text" id="agentManagerDto.real_name" name="agentManagerDto.real_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'real_name不能为空',missingMessage:'real_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>phone</label></th>
							<td>
								<input type="text" id="agentManagerDto.phone" name="agentManagerDto.phone" class="easyui-validatebox" data-options="required:true,invalidMessage:'phone不能为空',missingMessage:'phone不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>email</label></th>
							<td>
								<input type="text" id="agentManagerDto.email" name="agentManagerDto.email" class="easyui-validatebox" data-options="required:true,invalidMessage:'email不能为空',missingMessage:'email不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_count</label></th>
							<td>
								<input type="text" id="agentManagerDto.login_count" name="agentManagerDto.login_count" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'login_count必须为数字',missingMessage:'login_count必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>last_login_time</label></th>
							<td>
								<input type="text" id="agentManagerDto.last_login_time" name="agentManagerDto.last_login_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'last_login_time不能为空',missingMessage:'last_login_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_ip</label></th>
							<td>
								<input type="text" id="agentManagerDto.login_ip" name="agentManagerDto.login_ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_ip不能为空',missingMessage:'login_ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="agentManagerDto.create_time" name="agentManagerDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="agentManagerDto.remark" name="agentManagerDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>