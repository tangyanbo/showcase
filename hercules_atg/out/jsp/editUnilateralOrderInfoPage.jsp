<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editUnilateralOrderInfoFrom" name="editUnilateralOrderInfoFrom" method="post" action="editUnilateralOrderInfoAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="unilateralOrderInfoDto.id" name="unilateralOrderInfoDto.id" value="${unilateralOrderInfoDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>trans_date</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.trans_date" name="unilateralOrderInfoDto.trans_date" value="${unilateralOrderInfoDto.trans_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_date不能为空',missingMessage:'trans_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_amt</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.trans_amt" name="unilateralOrderInfoDto.trans_amt" value="${unilateralOrderInfoDto.trans_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_amt不能为空',missingMessage:'trans_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>order_id</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.order_id" name="unilateralOrderInfoDto.order_id" value="${unilateralOrderInfoDto.order_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'order_id不能为空',missingMessage:'order_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>card_id</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.card_id" name="unilateralOrderInfoDto.card_id" value="${unilateralOrderInfoDto.card_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'card_id不能为空',missingMessage:'card_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sub_mer_id</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.sub_mer_id" name="unilateralOrderInfoDto.sub_mer_id" value="${unilateralOrderInfoDto.sub_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sub_mer_id不能为空',missingMessage:'sub_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_sys_id</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.mer_sys_id" name="unilateralOrderInfoDto.mer_sys_id" value="${unilateralOrderInfoDto.mer_sys_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_sys_id不能为空',missingMessage:'mer_sys_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>mer_ord_id</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.mer_ord_id" name="unilateralOrderInfoDto.mer_ord_id" value="${unilateralOrderInfoDto.mer_ord_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_ord_id不能为空',missingMessage:'mer_ord_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_mer_id</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.trans_mer_id" name="unilateralOrderInfoDto.trans_mer_id" value="${unilateralOrderInfoDto.trans_mer_id}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>date</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.date" name="unilateralOrderInfoDto.date" value="${unilateralOrderInfoDto.date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'date不能为空',missingMessage:'date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sys_ref_num</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.sys_ref_num" name="unilateralOrderInfoDto.sys_ref_num" value="${unilateralOrderInfoDto.sys_ref_num}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sys_ref_num不能为空',missingMessage:'sys_ref_num不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>sys_tra_num</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.sys_tra_num" name="unilateralOrderInfoDto.sys_tra_num" value="${unilateralOrderInfoDto.sys_tra_num}" class="easyui-validatebox" data-options="required:true,invalidMessage:'sys_tra_num不能为空',missingMessage:'sys_tra_num不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>return_code</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.return_code" name="unilateralOrderInfoDto.return_code" value="${unilateralOrderInfoDto.return_code}" class="easyui-validatebox" data-options="required:true,invalidMessage:'return_code不能为空',missingMessage:'return_code不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>trans_type</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.trans_type" name="unilateralOrderInfoDto.trans_type" value="${unilateralOrderInfoDto.trans_type}" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.reserved1" name="unilateralOrderInfoDto.reserved1" value="${unilateralOrderInfoDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.reserved2" name="unilateralOrderInfoDto.reserved2" value="${unilateralOrderInfoDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.reserved3" name="unilateralOrderInfoDto.reserved3" value="${unilateralOrderInfoDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved4</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.reserved4" name="unilateralOrderInfoDto.reserved4" value="${unilateralOrderInfoDto.reserved4}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved4不能为空',missingMessage:'reserved4不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved5</label></th>
									<td>
										<input type="text" id="unilateralOrderInfoDto.reserved5" name="unilateralOrderInfoDto.reserved5" value="${unilateralOrderInfoDto.reserved5}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved5不能为空',missingMessage:'reserved5不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delUnilateralOrderInfoFrom" name="delUnilateralOrderInfoFrom" method="post" action="delUnilateralOrderInfoAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${unilateralOrderInfoDto.id}" />
			</form>
		</div>
	</div>
</div>