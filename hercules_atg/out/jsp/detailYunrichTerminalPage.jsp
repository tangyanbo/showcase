<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editYunrichTerminalFrom" name="editYunrichTerminalFrom" method="post" action="editYunrichTerminalAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>pos_dev_id</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.pos_dev_id" name="yunrichTerminalDto.pos_dev_id"  value="${yunrichTerminalDto.pos_dev_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>file_code</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.file_code" name="yunrichTerminalDto.file_code"  value="${yunrichTerminalDto.file_code}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>sec_main_key</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.sec_main_key" name="yunrichTerminalDto.sec_main_key"  value="${yunrichTerminalDto.sec_main_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>main_key</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.main_key" name="yunrichTerminalDto.main_key"  value="${yunrichTerminalDto.main_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>date</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.date" name="yunrichTerminalDto.date"  value="${yunrichTerminalDto.date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>time</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.time" name="yunrichTerminalDto.time"  value="${yunrichTerminalDto.time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>machine_no</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.machine_no" name="yunrichTerminalDto.machine_no"  value="${yunrichTerminalDto.machine_no}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bk_term_id</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.bk_term_id" name="yunrichTerminalDto.bk_term_id"  value="${yunrichTerminalDto.bk_term_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>bk_mer_id</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.bk_mer_id" name="yunrichTerminalDto.bk_mer_id"  value="${yunrichTerminalDto.bk_mer_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>batch_id</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.batch_id" name="yunrichTerminalDto.batch_id"  value="${yunrichTerminalDto.batch_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pin_key</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.pin_key" name="yunrichTerminalDto.pin_key"  value="${yunrichTerminalDto.pin_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pack_key</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.pack_key" name="yunrichTerminalDto.pack_key"  value="${yunrichTerminalDto.pack_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>mac_key</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.mac_key" name="yunrichTerminalDto.mac_key"  value="${yunrichTerminalDto.mac_key}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_date</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.create_date" name="yunrichTerminalDto.create_date"  value="${yunrichTerminalDto.create_date}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>create_time</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.create_time" name="yunrichTerminalDto.create_time"  value="${yunrichTerminalDto.create_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.ext" name="yunrichTerminalDto.ext"  value="${yunrichTerminalDto.ext}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ext1</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.ext1" name="yunrichTerminalDto.ext1"  value="${yunrichTerminalDto.ext1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>pos_id</label></th>
								<td>
									<input type="text" id="yunrichTerminalDto.pos_id" name="yunrichTerminalDto.pos_id"  value="${yunrichTerminalDto.pos_id}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>