<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/xml"  prefix = "x" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/fmt"  prefix = "fmt" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/sql"  prefix = "sql" %> 
<%@ taglib  uri = "http://java.sun.com/jsp/jstl/functions"  prefix = "fn" %> 
<div class="content-body">
	<div class="search-panel toggle-panel">
		<div class="search-panel-content">
			<form id="editResetStatictisFrom" name="editResetStatictisFrom" method="post" action="editResetStatictisAction.action">
				<div class="search-panel-bd">
					<table class="search-table">
							 <tr>
								<th class="wd-20"><label>start_time</label></th>
								<td>
									<input type="text" id="resetStatictisDto.start_time" name="resetStatictisDto.start_time"  value="${resetStatictisDto.start_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>ent_time</label></th>
								<td>
									<input type="text" id="resetStatictisDto.ent_time" name="resetStatictisDto.ent_time"  value="${resetStatictisDto.ent_time}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status</label></th>
								<td>
									<input type="text" id="resetStatictisDto.status" name="resetStatictisDto.status"  value="${resetStatictisDto.status}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>status_desc</label></th>
								<td>
									<input type="text" id="resetStatictisDto.status_desc" name="resetStatictisDto.status_desc"  value="${resetStatictisDto.status_desc}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>settle_content</label></th>
								<td>
									<input type="text" id="resetStatictisDto.settle_content" name="resetStatictisDto.settle_content"  value="${resetStatictisDto.settle_content}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved1</label></th>
								<td>
									<input type="text" id="resetStatictisDto.reserved1" name="resetStatictisDto.reserved1"  value="${resetStatictisDto.reserved1}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved2</label></th>
								<td>
									<input type="text" id="resetStatictisDto.reserved2" name="resetStatictisDto.reserved2"  value="${resetStatictisDto.reserved2}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
							 <tr>
								<th class="wd-20"><label>reserved3</label></th>
								<td>
									<input type="text" id="resetStatictisDto.reserved3" name="resetStatictisDto.reserved3"  value="${resetStatictisDto.reserved3}" style="width:200px;" readonly="true" />
								</td>
							  </tr>
					</table>
				</div>
			</form>
		</div>
	</div>
</div>