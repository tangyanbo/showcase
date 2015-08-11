<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editResetStatictisFrom" name="editResetStatictisFrom" method="post" action="editResetStatictisAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="resetStatictisDto.id" name="resetStatictisDto.id" value="${resetStatictisDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>start_time</label></th>
									<td>
										<input type="text" id="resetStatictisDto.start_time" name="resetStatictisDto.start_time" value="${resetStatictisDto.start_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'start_time不能为空',missingMessage:'start_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>ent_time</label></th>
									<td>
										<input type="text" id="resetStatictisDto.ent_time" name="resetStatictisDto.ent_time" value="${resetStatictisDto.ent_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'ent_time不能为空',missingMessage:'ent_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="resetStatictisDto.status" name="resetStatictisDto.status" value="${resetStatictisDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status_desc</label></th>
									<td>
										<input type="text" id="resetStatictisDto.status_desc" name="resetStatictisDto.status_desc" value="${resetStatictisDto.status_desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status_desc不能为空',missingMessage:'status_desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_content</label></th>
									<td>
										<input type="text" id="resetStatictisDto.settle_content" name="resetStatictisDto.settle_content" value="${resetStatictisDto.settle_content}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_content不能为空',missingMessage:'settle_content不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="resetStatictisDto.reserved1" name="resetStatictisDto.reserved1" value="${resetStatictisDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="resetStatictisDto.reserved2" name="resetStatictisDto.reserved2" value="${resetStatictisDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="resetStatictisDto.reserved3" name="resetStatictisDto.reserved3" value="${resetStatictisDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delResetStatictisFrom" name="delResetStatictisFrom" method="post" action="delResetStatictisAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${resetStatictisDto.id}" />
			</form>
		</div>
	</div>
</div>