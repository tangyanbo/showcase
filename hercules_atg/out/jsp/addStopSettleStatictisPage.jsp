<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addStopSettleStatictisFrom" name="addStopSettleStatictisFrom" method="post" action="addStopSettleStatictisAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>mer_sys_id</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.mer_sys_id" name="stopSettleStatictisDto.mer_sys_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>sub_mer_id</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.sub_mer_id" name="stopSettleStatictisDto.sub_mer_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_amt</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.mer_amt" name="stopSettleStatictisDto.mer_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_amt必须为数字',missingMessage:'mer_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_fee</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.trans_fee" name="stopSettleStatictisDto.trans_fee" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_fee必须为数字',missingMessage:'trans_fee必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>clear_amt</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.clear_amt" name="stopSettleStatictisDto.clear_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'clear_amt必须为数字',missingMessage:'clear_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.settle_date" name="stopSettleStatictisDto.settle_date" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'settle_date必须为数字',missingMessage:'settle_date必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved1</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.reserved1" name="stopSettleStatictisDto.reserved1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved2</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.reserved2" name="stopSettleStatictisDto.reserved2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved3</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.reserved3" name="stopSettleStatictisDto.reserved3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_num</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.account_num" name="stopSettleStatictisDto.account_num" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_num不能为空',missingMessage:'account_num不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_name</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.account_name" name="stopSettleStatictisDto.account_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_name不能为空',missingMessage:'account_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>account_agency_id</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.account_agency_id" name="stopSettleStatictisDto.account_agency_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'account_agency_id不能为空',missingMessage:'account_agency_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved4</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.reserved4" name="stopSettleStatictisDto.reserved4" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved4不能为空',missingMessage:'reserved4不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved5</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.reserved5" name="stopSettleStatictisDto.reserved5" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved5不能为空',missingMessage:'reserved5不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_name</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.mer_name" name="stopSettleStatictisDto.mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_name不能为空',missingMessage:'mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mss_id</label></th>
							<td>
								<input type="text" id="stopSettleStatictisDto.mss_id" name="stopSettleStatictisDto.mss_id" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mss_id必须为数字',missingMessage:'mss_id必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>