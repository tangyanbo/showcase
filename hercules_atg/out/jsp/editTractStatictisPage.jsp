<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editTractStatictisFrom" name="editTractStatictisFrom" method="post" action="editTractStatictisAction.action">
				<div class="search-panel-bd">
							<input type="hidden" id="tractStatictisDto.id" name="tractStatictisDto.id" value="${tractStatictisDto.id}" />
					<table class="search-table">
								 <tr>
									<th class="wd-20"><label>tract_id</label></th>
									<td>
										<input type="text" id="tractStatictisDto.tract_id" name="tractStatictisDto.tract_id" value="${tractStatictisDto.tract_id}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'tract_id必须为数字',missingMessage:'tract_id必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>statictis_date</label></th>
									<td>
										<input type="text" id="tractStatictisDto.statictis_date" name="tractStatictisDto.statictis_date" value="${tractStatictisDto.statictis_date}" class="easyui-validatebox" data-options="required:true,invalidMessage:'statictis_date不能为空',missingMessage:'statictis_date不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>pay_amt</label></th>
									<td>
										<input type="text" id="tractStatictisDto.pay_amt" name="tractStatictisDto.pay_amt" value="${tractStatictisDto.pay_amt}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'pay_amt必须为数字',missingMessage:'pay_amt必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>refund_amt</label></th>
									<td>
										<input type="text" id="tractStatictisDto.refund_amt" name="tractStatictisDto.refund_amt" value="${tractStatictisDto.refund_amt}" class="easyui-validatebox" data-options="required:true,invalidMessage:'refund_amt不能为空',missingMessage:'refund_amt不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>use_amt</label></th>
									<td>
										<input type="text" id="tractStatictisDto.use_amt" name="tractStatictisDto.use_amt" value="${tractStatictisDto.use_amt}" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'use_amt必须为数字',missingMessage:'use_amt必须为数字'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved1</label></th>
									<td>
										<input type="text" id="tractStatictisDto.reserved1" name="tractStatictisDto.reserved1" value="${tractStatictisDto.reserved1}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved1不能为空',missingMessage:'reserved1不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved2</label></th>
									<td>
										<input type="text" id="tractStatictisDto.reserved2" name="tractStatictisDto.reserved2" value="${tractStatictisDto.reserved2}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved2不能为空',missingMessage:'reserved2不能为空'" style="width:200px;"/>
									</td>
								  </tr>
								 <tr>
									<th class="wd-20"><label>reserved3</label></th>
									<td>
										<input type="text" id="tractStatictisDto.reserved3" name="tractStatictisDto.reserved3" value="${tractStatictisDto.reserved3}" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved3不能为空',missingMessage:'reserved3不能为空'" style="width:200px;"/>
									</td>
								  </tr>
					</table>
				</div>
			</form>
			<form id="delTractStatictisFrom" name="delTractStatictisFrom" method="post" action="delTractStatictisAction.action">
						<input type="hidden" id="pkid" name="pkid" value="${tractStatictisDto.id}" />
			</form>
		</div>
	</div>
</div>