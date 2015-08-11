<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBankBranchFrom" name="editBankBranchFrom" method="post" action="editBankBranchAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="bankBranchDto.id" name="bankBranchDto.id" value="${bankBranchDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>bank_code</label></th>
									<td>
										<input type="text" id="bankBranchDto.bank_code" name="bankBranchDto.bank_code" value="${bankBranchDto.bank_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_code不能为空',missingMessage:'bank_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_name</label></th>
									<td>
										<input type="text" id="bankBranchDto.bank_name" name="bankBranchDto.bank_name" value="${bankBranchDto.bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>level</label></th>
									<td>
										<input type="text" id="bankBranchDto.level" name="bankBranchDto.level" value="${bankBranchDto.level}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'level必须为数字',missingMessage:'level必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>super_code</label></th>
									<td>
										<input type="text" id="bankBranchDto.super_code" name="bankBranchDto.super_code" value="${bankBranchDto.super_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'super_code不能为空',missingMessage:'super_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>citycode</label></th>
									<td>
										<input type="text" id="bankBranchDto.citycode" name="bankBranchDto.citycode" value="${bankBranchDto.citycode}" class="easyui-validatebox" data-options="required:true,invalidMessage:'citycode不能为空',missingMessage:'citycode不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delBankBranchFrom" name="delBankBranchFrom" method="post" action="delBankBranchAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${bankBranchDto.id}" />
			</form>
		</div>
	</div>
</div>