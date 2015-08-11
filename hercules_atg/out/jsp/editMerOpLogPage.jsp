<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerOpLogFrom" name="editMerOpLogFrom" method="post" action="editMerOpLogAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="merOpLogDto.id" name="merOpLogDto.id" value="${merOpLogDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>mid</label></th>
									<td>
										<input type="text" id="merOpLogDto.mid" name="merOpLogDto.mid" value="${merOpLogDto.mid}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mid不能为空',missingMessage:'mid不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_type</label></th>
									<td>
										<input type="text" id="merOpLogDto.mer_type" name="merOpLogDto.mer_type" value="${merOpLogDto.mer_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_type不能为空',missingMessage:'mer_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>login_name</label></th>
									<td>
										<input type="text" id="merOpLogDto.login_name" name="merOpLogDto.login_name" value="${merOpLogDto.login_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'login_name不能为空',missingMessage:'login_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_desc</label></th>
									<td>
										<input type="text" id="merOpLogDto.op_desc" name="merOpLogDto.op_desc" value="${merOpLogDto.op_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_desc不能为空',missingMessage:'op_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_url</label></th>
									<td>
										<input type="text" id="merOpLogDto.op_url" name="merOpLogDto.op_url" value="${merOpLogDto.op_url}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_url不能为空',missingMessage:'op_url不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ip</label></th>
									<td>
										<input type="text" id="merOpLogDto.ip" name="merOpLogDto.ip" value="${merOpLogDto.ip}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ip不能为空',missingMessage:'ip不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ua</label></th>
									<td>
										<input type="text" id="merOpLogDto.ua" name="merOpLogDto.ua" value="${merOpLogDto.ua}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ua不能为空',missingMessage:'ua不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>op_time</label></th>
									<td>
										<input type="text" id="merOpLogDto.op_time" name="merOpLogDto.op_time" value="${merOpLogDto.op_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'op_time不能为空',missingMessage:'op_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>remark</label></th>
									<td>
										<input type="text" id="merOpLogDto.remark" name="merOpLogDto.remark" value="${merOpLogDto.remark}" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delMerOpLogFrom" name="delMerOpLogFrom" method="post" action="delMerOpLogAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${merOpLogDto.id}" />
			</form>
		</div>
	</div>
</div>