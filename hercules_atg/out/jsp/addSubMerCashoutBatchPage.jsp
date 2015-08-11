<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addSubMerCashoutBatchFrom" name="addSubMerCashoutBatchFrom" method="post" action="addSubMerCashoutBatchAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>batch_date</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.batch_date" name="subMerCashoutBatchDto.batch_date" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'batch_date必须为数字',missingMessage:'batch_date必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>prder_amt</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.prder_amt" name="subMerCashoutBatchDto.prder_amt" class="easyui-validatebox" data-options="required:true,invalidMessage:'prder_amt不能为空',missingMessage:'prder_amt不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.create_date" name="subMerCashoutBatchDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>finish_time</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.finish_time" name="subMerCashoutBatchDto.finish_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_fee</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.trans_fee" name="subMerCashoutBatchDto.trans_fee" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_fee不能为空',missingMessage:'trans_fee不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ordeer_count</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.ordeer_count" name="subMerCashoutBatchDto.ordeer_count" class="easyui-validatebox" data-options="required:true,invalidMessage:'ordeer_count不能为空',missingMessage:'ordeer_count不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.status" name="subMerCashoutBatchDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reservaed1</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.reservaed1" name="subMerCashoutBatchDto.reservaed1" class="easyui-validatebox" data-options="required:true,invalidMessage:'reservaed1不能为空',missingMessage:'reservaed1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reservaed2</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.reservaed2" name="subMerCashoutBatchDto.reservaed2" class="easyui-validatebox" data-options="required:true,invalidMessage:'reservaed2不能为空',missingMessage:'reservaed2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reservaed3</label></th>
							<td>
								<input type="text" id="subMerCashoutBatchDto.reservaed3" name="subMerCashoutBatchDto.reservaed3" class="easyui-validatebox" data-options="required:true,invalidMessage:'reservaed3不能为空',missingMessage:'reservaed3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>