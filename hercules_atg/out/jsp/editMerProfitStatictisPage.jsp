<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editMerProfitStatictisFrom" name="editMerProfitStatictisFrom" method="post" action="editMerProfitStatictisAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="merProfitStatictisDto.id" name="merProfitStatictisDto.id" value="${merProfitStatictisDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>mid</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.mid" name="merProfitStatictisDto.mid" value="${merProfitStatictisDto.mid}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mid必须为数字',missingMessage:'mid必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_type</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.mer_type" name="merProfitStatictisDto.mer_type" value="${merProfitStatictisDto.mer_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_type不能为空',missingMessage:'mer_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.mer_sys_id" name="merProfitStatictisDto.mer_sys_id" value="${merProfitStatictisDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'mer_sys_id必须为数字',missingMessage:'mer_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>agent_sys_id</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.agent_sys_id" name="merProfitStatictisDto.agent_sys_id" value="${merProfitStatictisDto.agent_sys_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'agent_sys_id必须为数字',missingMessage:'agent_sys_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_name</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.mer_name" name="merProfitStatictisDto.mer_name" value="${merProfitStatictisDto.mer_name}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_name不能为空',missingMessage:'mer_name不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>settle_date</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.settle_date" name="merProfitStatictisDto.settle_date" value="${merProfitStatictisDto.settle_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sum_amt</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.sum_amt" name="merProfitStatictisDto.sum_amt" value="${merProfitStatictisDto.sum_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sum_amt不能为空',missingMessage:'sum_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>profit</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.profit" name="merProfitStatictisDto.profit" value="${merProfitStatictisDto.profit}" class="easyui-validatebox" data-options="required:true,invalidMessage:'profit不能为空',missingMessage:'profit不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sum_trans_fee</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.sum_trans_fee" name="merProfitStatictisDto.sum_trans_fee" value="${merProfitStatictisDto.sum_trans_fee}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'sum_trans_fee必须为数字',missingMessage:'sum_trans_fee必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>create_time</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.create_time" name="merProfitStatictisDto.create_time" value="${merProfitStatictisDto.create_time}" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>clear_order_id</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.clear_order_id" name="merProfitStatictisDto.clear_order_id" value="${merProfitStatictisDto.clear_order_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'clear_order_id不能为空',missingMessage:'clear_order_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>faile_amt</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.faile_amt" name="merProfitStatictisDto.faile_amt" value="${merProfitStatictisDto.faile_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'faile_amt不能为空',missingMessage:'faile_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>bp_serial_number</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.bp_serial_number" name="merProfitStatictisDto.bp_serial_number" value="${merProfitStatictisDto.bp_serial_number}" class="easyui-validatebox" data-options="required:true,invalidMessage:'bp_serial_number不能为空',missingMessage:'bp_serial_number不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>count_fee</label></th>
									<td>
										<input type="text" id="merProfitStatictisDto.count_fee" name="merProfitStatictisDto.count_fee" value="${merProfitStatictisDto.count_fee}" class="easyui-validatebox" data-options="required:true,invalidMessage:'count_fee不能为空',missingMessage:'count_fee不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delMerProfitStatictisFrom" name="delMerProfitStatictisFrom" method="post" action="delMerProfitStatictisAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${merProfitStatictisDto.id}" />
			</form>
		</div>
	</div>
</div>