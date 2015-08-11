<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editSubMerTerminalInfoFrom" name="editSubMerTerminalInfoFrom" method="post" action="editSubMerTerminalInfoAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>terminal_id</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.terminal_id" name="subMerTerminalInfoDto.terminal_id"  value="${subMerTerminalInfoDto.terminal_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sub_mer_id</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.sub_mer_id" name="subMerTerminalInfoDto.sub_mer_id"  value="${subMerTerminalInfoDto.sub_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>tsn</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.tsn" name="subMerTerminalInfoDto.tsn"  value="${subMerTerminalInfoDto.tsn}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>terminal_type</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.terminal_type" name="subMerTerminalInfoDto.terminal_type"  value="${subMerTerminalInfoDto.terminal_type}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.reserved1" name="subMerTerminalInfoDto.reserved1"  value="${subMerTerminalInfoDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.reserved2" name="subMerTerminalInfoDto.reserved2"  value="${subMerTerminalInfoDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.reserved3" name="subMerTerminalInfoDto.reserved3"  value="${subMerTerminalInfoDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>factory_id</label></th>
								<td>
									<input type="text" id="subMerTerminalInfoDto.factory_id" name="subMerTerminalInfoDto.factory_id"  value="${subMerTerminalInfoDto.factory_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>