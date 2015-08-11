<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerCashoutFrom" name="editSubMerCashoutFrom" method="post" action="editSubMerCashoutAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="subMerCashoutDto.id" name="subMerCashoutDto.id" value="${subMerCashoutDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>sub_mer_id</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.sub_mer_id" name="subMerCashoutDto.sub_mer_id" value="${subMerCashoutDto.sub_mer_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sub_mer_id必须为数字',missingMessage:'sub_mer_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.mer_sys_id" name="subMerCashoutDto.mer_sys_id" value="${subMerCashoutDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_amt</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.order_amt" name="subMerCashoutDto.order_amt" value="${subMerCashoutDto.order_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_amt不能为空',missingMessage:'order_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>daifa_amt</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.daifa_amt" name="subMerCashoutDto.daifa_amt" value="${subMerCashoutDto.daifa_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'daifa_amt不能为空',missingMessage:'daifa_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_status</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.order_status" name="subMerCashoutDto.order_status" value="${subMerCashoutDto.order_status}" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_status不能为空',missingMessage:'order_status不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.create_time" name="subMerCashoutDto.create_time" value="${subMerCashoutDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>finish_time</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.finish_time" name="subMerCashoutDto.finish_time" value="${subMerCashoutDto.finish_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'finish_time不能为空',missingMessage:'finish_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_id</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.trans_id" name="subMerCashoutDto.trans_id" value="${subMerCashoutDto.trans_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_id不能为空',missingMessage:'trans_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_qid</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.trans_qid" name="subMerCashoutDto.trans_qid" value="${subMerCashoutDto.trans_qid}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_qid不能为空',missingMessage:'trans_qid不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_fee</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.trans_fee" name="subMerCashoutDto.trans_fee" value="${subMerCashoutDto.trans_fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_fee不能为空',missingMessage:'trans_fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>batch_id</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.batch_id" name="subMerCashoutDto.batch_id" value="${subMerCashoutDto.batch_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'batch_id必须为数字',missingMessage:'batch_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>t0_mer_rate</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.t0_mer_rate" name="subMerCashoutDto.t0_mer_rate" value="${subMerCashoutDto.t0_mer_rate}" class="easyui-validatebox" data-options="required:true,invalidMessage:'t0_mer_rate不能为空',missingMessage:'t0_mer_rate不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>t0_mer_profit</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.t0_mer_profit" name="subMerCashoutDto.t0_mer_profit" value="${subMerCashoutDto.t0_mer_profit}" class="easyui-validatebox" data-options="required:true,invalidMessage:'t0_mer_profit不能为空',missingMessage:'t0_mer_profit不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>t0_mer_gain</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.t0_mer_gain" name="subMerCashoutDto.t0_mer_gain" value="${subMerCashoutDto.t0_mer_gain}" class="easyui-validatebox" data-options="required:true,invalidMessage:'t0_mer_gain不能为空',missingMessage:'t0_mer_gain不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>t0_hx_profit</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.t0_hx_profit" name="subMerCashoutDto.t0_hx_profit" value="${subMerCashoutDto.t0_hx_profit}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'t0_hx_profit必须为数字',missingMessage:'t0_hx_profit必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.reserved1" name="subMerCashoutDto.reserved1" value="${subMerCashoutDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.reserved2" name="subMerCashoutDto.reserved2" value="${subMerCashoutDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="subMerCashoutDto.reserved3" name="subMerCashoutDto.reserved3" value="${subMerCashoutDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delSubMerCashoutFrom" name="delSubMerCashoutFrom" method="post" action="delSubMerCashoutAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${subMerCashoutDto.id}" />
			</form>
		</div>
	</div>
</div>