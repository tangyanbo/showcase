<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="addPlatMerInfoFrom" name="addPlatMerInfoFrom" method="post" action="addPlatMerInfoAction.action">
				<div class="search-panel-bd">
				 <table class="search-table">
						 <tr>
							<th class="wd-20"><label>plat_mer_name</label></th>
							<td>
								<input type="text" id="platMerInfoDto.plat_mer_name" name="platMerInfoDto.plat_mer_name" class="easyui-validatebox" data-options="required:true,invalidMessage:'plat_mer_name不能为空',missingMessage:'plat_mer_name不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_reg_no</label></th>
							<td>
								<input type="text" id="platMerInfoDto.mer_reg_no" name="platMerInfoDto.mer_reg_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_reg_no不能为空',missingMessage:'mer_reg_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>mer_tax_no</label></th>
							<td>
								<input type="text" id="platMerInfoDto.mer_tax_no" name="platMerInfoDto.mer_tax_no" class="easyui-validatebox" data-options="required:true,invalidMessage:'mer_tax_no不能为空',missingMessage:'mer_tax_no不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>legal_person</label></th>
							<td>
								<input type="text" id="platMerInfoDto.legal_person" name="platMerInfoDto.legal_person" class="easyui-validatebox" data-options="required:true,invalidMessage:'legal_person不能为空',missingMessage:'legal_person不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>legal_idcard</label></th>
							<td>
								<input type="text" id="platMerInfoDto.legal_idcard" name="platMerInfoDto.legal_idcard" class="easyui-validatebox" data-options="required:true,invalidMessage:'legal_idcard不能为空',missingMessage:'legal_idcard不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contactor</label></th>
							<td>
								<input type="text" id="platMerInfoDto.contactor" name="platMerInfoDto.contactor" class="easyui-validatebox" data-options="required:true,invalidMessage:'contactor不能为空',missingMessage:'contactor不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contact_phone</label></th>
							<td>
								<input type="text" id="platMerInfoDto.contact_phone" name="platMerInfoDto.contact_phone" class="easyui-validatebox" data-options="required:true,invalidMessage:'contact_phone不能为空',missingMessage:'contact_phone不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contact_email</label></th>
							<td>
								<input type="text" id="platMerInfoDto.contact_email" name="platMerInfoDto.contact_email" class="easyui-validatebox" data-options="required:true,invalidMessage:'contact_email不能为空',missingMessage:'contact_email不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>contact_addr</label></th>
							<td>
								<input type="text" id="platMerInfoDto.contact_addr" name="platMerInfoDto.contact_addr" class="easyui-validatebox" data-options="required:true,invalidMessage:'contact_addr不能为空',missingMessage:'contact_addr不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>create_time</label></th>
							<td>
								<input type="text" id="platMerInfoDto.create_time" name="platMerInfoDto.create_time" class="easyui-validatebox" data-options="required:true,invalidMessage:'create_time不能为空',missingMessage:'create_time不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>status</label></th>
							<td>
								<input type="text" id="platMerInfoDto.status" name="platMerInfoDto.status" class="easyui-validatebox" data-options="required:true,invalidMessage:'status不能为空',missingMessage:'status不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>remark</label></th>
							<td>
								<input type="text" id="platMerInfoDto.remark" name="platMerInfoDto.remark" class="easyui-validatebox" data-options="required:true,invalidMessage:'remark不能为空',missingMessage:'remark不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>reserved</label></th>
							<td>
								<input type="text" id="platMerInfoDto.reserved" name="platMerInfoDto.reserved" class="easyui-validatebox" data-options="required:true,invalidMessage:'reserved不能为空',missingMessage:'reserved不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>logo</label></th>
							<td>
								<input type="text" id="platMerInfoDto.logo" name="platMerInfoDto.logo" class="easyui-validatebox" data-options="required:true,invalidMessage:'logo不能为空',missingMessage:'logo不能为空'" style="width:200px;"/>
							</td>
						  </tr>
						 <tr>
							<th class="wd-20"><label>color</label></th>
							<td>
								<input type="text" id="platMerInfoDto.color" name="platMerInfoDto.color" class="easyui-validatebox" data-options="required:true,invalidMessage:'color不能为空',missingMessage:'color不能为空'" style="width:200px;"/>
							</td>
						  </tr>
				  </table>
				</div>
			</form>
		</div>
	</div>
</div>