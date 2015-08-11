<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addMerManagerFrom" name="addMerManagerFrom" method="post" action="addMerManagerAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mid</label></th>
							<td>
								<input type="text" id="merManagerDto.mid" name="merManagerDto.mid" class="easyui-validatebox" data-options="required:true,invalidMessage:'mid不能为空',missingMessage:'mid不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_type</label></th>
							<td>
								<input type="text" id="merManagerDto.mer_type" name="merManagerDto.mer_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_type不能为空',missingMessage:'mer_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_name</label></th>
							<td>
								<input type="text" id="merManagerDto.login_name" name="merManagerDto.login_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_name不能为空',missingMessage:'login_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_pwd</label></th>
							<td>
								<input type="text" id="merManagerDto.login_pwd" name="merManagerDto.login_pwd" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_pwd不能为空',missingMessage:'login_pwd不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>purview</label></th>
							<td>
								<input type="text" id="merManagerDto.purview" name="merManagerDto.purview" class="easyui-validatebox" data-options="required:true,invalidMessage:'purview不能为空',missingMessage:'purview不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>real_name</label></th>
							<td>
								<input type="text" id="merManagerDto.real_name" name="merManagerDto.real_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'real_name不能为空',missingMessage:'real_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>phone</label></th>
							<td>
								<input type="text" id="merManagerDto.phone" name="merManagerDto.phone" class="easyui-validatebox" data-options="required:true,invalidMessage:'phone不能为空',missingMessage:'phone不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>email</label></th>
							<td>
								<input type="text" id="merManagerDto.email" name="merManagerDto.email" class="easyui-validatebox" data-options="required:true,invalidMessage:'email不能为空',missingMessage:'email不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_count</label></th>
							<td>
								<input type="text" id="merManagerDto.login_count" name="merManagerDto.login_count" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'login_count必须为数字',missingMessage:'login_count必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>last_login_time</label></th>
							<td>
								<input type="text" id="merManagerDto.last_login_time" name="merManagerDto.last_login_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'last_login_time不能为空',missingMessage:'last_login_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>login_ip</label></th>
							<td>
								<input type="text" id="merManagerDto.login_ip" name="merManagerDto.login_ip" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_ip不能为空',missingMessage:'login_ip不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="merManagerDto.create_time" name="merManagerDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="merManagerDto.remark" name="merManagerDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>