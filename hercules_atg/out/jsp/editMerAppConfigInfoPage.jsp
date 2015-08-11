<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerAppConfigInfoFrom" name="editMerAppConfigInfoFrom" method="post" action="editMerAppConfigInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="merAppConfigInfoDto.id" name="merAppConfigInfoDto.id" value="${merAppConfigInfoDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>app_id</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.app_id" name="merAppConfigInfoDto.app_id" value="${merAppConfigInfoDto.app_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'app_id必须为数字',missingMessage:'app_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.mer_sys_id" name="merAppConfigInfoDto.mer_sys_id" value="${merAppConfigInfoDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>apk_name</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.apk_name" name="merAppConfigInfoDto.apk_name" value="${merAppConfigInfoDto.apk_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'apk_name不能为空',missingMessage:'apk_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pic_url</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.pic_url" name="merAppConfigInfoDto.pic_url" value="${merAppConfigInfoDto.pic_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'pic_url不能为空',missingMessage:'pic_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>apk_url</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.apk_url" name="merAppConfigInfoDto.apk_url" value="${merAppConfigInfoDto.apk_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'apk_url不能为空',missingMessage:'apk_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>entrance_name</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.entrance_name" name="merAppConfigInfoDto.entrance_name" value="${merAppConfigInfoDto.entrance_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'entrance_name不能为空',missingMessage:'entrance_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.status" name="merAppConfigInfoDto.status" value="${merAppConfigInfoDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.create_time" name="merAppConfigInfoDto.create_time" value="${merAppConfigInfoDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.remark" name="merAppConfigInfoDto.remark" value="${merAppConfigInfoDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="merAppConfigInfoDto.reserved" name="merAppConfigInfoDto.reserved" value="${merAppConfigInfoDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delMerAppConfigInfoFrom" name="delMerAppConfigInfoFrom" method="post" action="delMerAppConfigInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${merAppConfigInfoDto.id}" />
			</form>
		</div>
	</div>
</div>