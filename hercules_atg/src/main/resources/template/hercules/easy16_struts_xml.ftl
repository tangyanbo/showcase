<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE struts PUBLIC
    "-//Apache Software Foundation//DTD Struts Configuration 2.0//EN"
    "http://struts.apache.org/dtds/struts-2.0.dtd">

<struts>
	<constant name="struts.devMode" value="false" />
	<package name="struts_ld_${table.lowerCaseFirstClassName}"  extends="struts_common">
	  
	  	<!-- ${table.className}列表信息 -->
        <action name="search${table.className}Action" class="search${table.className}Action">
			<result name="success" >/jsp/${config.cfg_easy_module_package_web}/search${table.className}Page.jsp</result>
		</action>
		
        <!-- ${table.className}新增页面-->
        <action name="add${table.className}Page" class="add${table.className}Page">
			<result name="success" >/jsp/${config.cfg_easy_module_package_web}/add${table.className}Page.jsp</result>
		</action>
		
		<!-- ${table.className}新增动作	-->
        <action name="add${table.className}Action" class="add${table.className}Action"> 
			<result name="success" type="chain"><param name="actionName">search${table.className}Action</param> </result>
		</action>
		
		<!-- ${table.className}编辑页面 -->
		<action name="edit${table.className}Page" class="edit${table.className}Page">
			<result name="success" >/jsp/${config.cfg_easy_module_package_web}/edit${table.className}Page.jsp</result>
		</action>

		
		<!-- ${table.className}编辑动作-->
		<action name="edit${table.className}Action" class="edit${table.className}Action">
			<result name="success" type="chain"><param name="actionName">search${table.className}Action</param> </result>
			<result name="input">/jsp/${config.cfg_easy_module_package_web}/error.jsp</result>
		</action>
		
		
		<!-- 详细画面动作-->
		<action name="detail${table.className}Page" class="detail${table.className}Page">
			<result name="success" >/jsp/${config.cfg_easy_module_package_web}/detail${table.className}Page.jsp</result>
		</action>
		
		
		<!-- ${table.className}删除页面	-->
		<action name="del${table.className}Action" class="del${table.className}Action">
			<result name="success" type="chain"><param name="actionName">search${table.className}Action</param> </result>
		</action>		

      
	</package>
</struts>