<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addCmspPayInfoFrom" name="addCmspPayInfoFrom" method="post" action="addCmspPayInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>trans_mer_id</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_mer_id" name="cmspPayInfoDto.trans_mer_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_mer_id不能为空',missingMessage:'trans_mer_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_ter_id</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_ter_id" name="cmspPayInfoDto.trans_ter_id" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_ter_id不能为空',missingMessage:'trans_ter_id不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_amt</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_amt" name="cmspPayInfoDto.trans_amt" class="easyui-validatebox" data-options="required:true,validType:'number[2,16]',invalidMessage:'trans_amt必须为数字',missingMessage:'trans_amt必须为数字'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_cur</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_cur" name="cmspPayInfoDto.trans_cur" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_cur不能为空',missingMessage:'trans_cur不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_time</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_time" name="cmspPayInfoDto.trans_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_time不能为空',missingMessage:'trans_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_status</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_status" name="cmspPayInfoDto.trans_status" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_status不能为空',missingMessage:'trans_status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>trans_type</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.trans_type" name="cmspPayInfoDto.trans_type" class="easyui-validatebox" data-options="required:true,invalidMessage:'trans_type不能为空',missingMessage:'trans_type不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>res_code</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.res_code" name="cmspPayInfoDto.res_code" class="easyui-validatebox" data-options="required:true,invalidMessage:'res_code不能为空',missingMessage:'res_code不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>settle_date</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.settle_date" name="cmspPayInfoDto.settle_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'settle_date不能为空',missingMessage:'settle_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>pan</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.pan" name="cmspPayInfoDto.pan" class="easyui-validatebox" data-options="required:true,invalidMessage:'pan不能为空',missingMessage:'pan不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.create_time" name="cmspPayInfoDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.reserved" name="cmspPayInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.ext" name="cmspPayInfoDto.ext" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext不能为空',missingMessage:'ext不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>tracking_no</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.tracking_no" name="cmspPayInfoDto.tracking_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'tracking_no不能为空',missingMessage:'tracking_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext1</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.ext1" name="cmspPayInfoDto.ext1" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext1不能为空',missingMessage:'ext1不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext2</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.ext2" name="cmspPayInfoDto.ext2" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext2不能为空',missingMessage:'ext2不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>ext3</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.ext3" name="cmspPayInfoDto.ext3" class="easyui-validatebox" data-options="required:true,invalidMessage:'ext3不能为空',missingMessage:'ext3不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_date</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.create_date" name="cmspPayInfoDto.create_date" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_date不能为空',missingMessage:'create_date不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>cmsp_resverved</label></th>
							<td>
								<input type="text" id="cmspPayInfoDto.cmsp_resverved" name="cmspPayInfoDto.cmsp_resverved" class="easyui-validatebox" data-options="required:true,invalidMessage:'cmsp_resverved不能为空',missingMessage:'cmsp_resverved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>