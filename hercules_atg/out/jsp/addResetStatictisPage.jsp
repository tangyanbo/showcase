<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addResetStatictisFrom" name="addResetStatictisFrom" method="post" action="addResetStatictisAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>start_time</label></th>
							<td>
								<input type="text" id="resetStatictisDto.start_time" name="resetStatictisDto.start_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'start_time不能为空',missingMessage:'start_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ent_time</label></th>
							<td>
								<input type="text" id="resetStatictisDto.ent_time" name="resetStatictisDto.ent_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'ent_time不能为空',missingMessage:'ent_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="resetStatictisDto.status" name="resetStatictisDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status_desc</label></th>
							<td>
								<input type="text" id="resetStatictisDto.status_desc" name="resetStatictisDto.status_desc" class="easyui-validatebox" data-options="required:true,invalidMessage:'status_desc不能为空',missingMessage:'status_desc不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_content</label></th>
							<td>
								<input type="text" id="resetStatictisDto.settle_content" name="resetStatictisDto.settle_content" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_content不能为空',missingMessage:'settle_content不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="resetStatictisDto.reserved1" name="resetStatictisDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="resetStatictisDto.reserved2" name="resetStatictisDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="resetStatictisDto.reserved3" name="resetStatictisDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>