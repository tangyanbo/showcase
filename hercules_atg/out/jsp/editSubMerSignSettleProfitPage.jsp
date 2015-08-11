<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerSignSettleProfitFrom" name="editSubMerSignSettleProfitFrom" method="post" action="editSubMerSignSettleProfitAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="subMerSignSettleProfitDto.id" name="subMerSignSettleProfitDto.id" value="${subMerSignSettleProfitDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>order_id</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.order_id" name="subMerSignSettleProfitDto.order_id" value="${subMerSignSettleProfitDto.order_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'order_id必须为数字',missingMessage:'order_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_id</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.sub_mer_id" name="subMerSignSettleProfitDto.sub_mer_id" value="${subMerSignSettleProfitDto.sub_mer_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.mer_sys_id" name="subMerSignSettleProfitDto.mer_sys_id" value="${subMerSignSettleProfitDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_sign_rate</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.sub_mer_sign_rate" name="subMerSignSettleProfitDto.sub_mer_sign_rate" value="${subMerSignSettleProfitDto.sub_mer_sign_rate}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_sign_rate不能为空',missingMessage:'sub_mer_sign_rate不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_sign_high_fee</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.sub_mer_sign_high_fee" name="subMerSignSettleProfitDto.sub_mer_sign_high_fee" value="${subMerSignSettleProfitDto.sub_mer_sign_high_fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_sign_high_fee不能为空',missingMessage:'sub_mer_sign_high_fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_trans_rate</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.sub_mer_trans_rate" name="subMerSignSettleProfitDto.sub_mer_trans_rate" value="${subMerSignSettleProfitDto.sub_mer_trans_rate}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_trans_rate不能为空',missingMessage:'sub_mer_trans_rate不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_trans_high_fee</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.sub_mer_trans_high_fee" name="subMerSignSettleProfitDto.sub_mer_trans_high_fee" value="${subMerSignSettleProfitDto.sub_mer_trans_high_fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_trans_high_fee不能为空',missingMessage:'sub_mer_trans_high_fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_date</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.create_date" name="subMerSignSettleProfitDto.create_date" value="${subMerSignSettleProfitDto.create_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.create_time" name="subMerSignSettleProfitDto.create_time" value="${subMerSignSettleProfitDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>profit_date</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.profit_date" name="subMerSignSettleProfitDto.profit_date" value="${subMerSignSettleProfitDto.profit_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit_date不能为空',missingMessage:'profit_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>profit_time</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.profit_time" name="subMerSignSettleProfitDto.profit_time" value="${subMerSignSettleProfitDto.profit_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit_time不能为空',missingMessage:'profit_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>profit</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.profit" name="subMerSignSettleProfitDto.profit" value="${subMerSignSettleProfitDto.profit}" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit不能为空',missingMessage:'profit不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_type</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.trans_type" name="subMerSignSettleProfitDto.trans_type" value="${subMerSignSettleProfitDto.trans_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>status</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.status" name="subMerSignSettleProfitDto.status" value="${subMerSignSettleProfitDto.status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>desc</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.desc" name="subMerSignSettleProfitDto.desc" value="${subMerSignSettleProfitDto.desc}" class="easyui-validatebox" data-options="required:true,invalidMessage:'desc不能为空',missingMessage:'desc不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved</label></th>
									<td>
										<input type="text" id="subMerSignSettleProfitDto.reserved" name="subMerSignSettleProfitDto.reserved" value="${subMerSignSettleProfitDto.reserved}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSubMerSignSettleProfitFrom" name="delSubMerSignSettleProfitFrom" method="post" action="delSubMerSignSettleProfitAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${subMerSignSettleProfitDto.id}" />
			</form>
		</div>
	</div>
</div>