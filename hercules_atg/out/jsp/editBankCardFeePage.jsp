<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editBankCardFeeFrom" name="editBankCardFeeFrom" method="post" action="editBankCardFeeAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="bankCardFeeDto.bank_id" name="bankCardFeeDto.bank_id" value="${bankCardFeeDto.bank_id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>bank_code</label></th>
									<td>
										<input type="text" id="bankCardFeeDto.bank_code" name="bankCardFeeDto.bank_code" value="${bankCardFeeDto.bank_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_code不能为空',missingMessage:'bank_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bank_name</label></th>
									<td>
										<input type="text" id="bankCardFeeDto.bank_name" name="bankCardFeeDto.bank_name" value="${bankCardFeeDto.bank_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bank_name不能为空',missingMessage:'bank_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>fee</label></th>
									<td>
										<input type="text" id="bankCardFeeDto.fee" name="bankCardFeeDto.fee" value="${bankCardFeeDto.fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'fee不能为空',missingMessage:'fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>arrive_time</label></th>
									<td>
										<input type="text" id="bankCardFeeDto.arrive_time" name="bankCardFeeDto.arrive_time" value="${bankCardFeeDto.arrive_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'arrive_time不能为空',missingMessage:'arrive_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="bankCardFeeDto.create_time" name="bankCardFeeDto.create_time" value="${bankCardFeeDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delBankCardFeeFrom" name="delBankCardFeeFrom" method="post" action="delBankCardFeeAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${bankCardFeeDto.bank_id}" />
			</form>
		</div>
	</div>
</div>