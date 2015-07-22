<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>基础设置</title>
<link rel="stylesheet" type="text/css" href="./theme/${theme}/css/common.css" />
<link rel="stylesheet" type="text/css" href="./theme/${theme}/css/page.css" />
<link rel="stylesheet" type="text/css" href="./theme/${theme}/css/msgbox.css" />
<link rel="stylesheet" type="text/css" href="./theme/1/jquery-easyui-themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="./theme/1/jquery-easyui-themes/icon.css">
<link rel="stylesheet" type="text/css" href="./theme/1/css/common.css">
<link rel="stylesheet" type="text/css" href="./theme/1/css/srtabs.css">
<link rel="stylesheet" type="text/css" href="./theme/1/css/table.css">
<link rel="stylesheet" type="text/css" href="./theme/1/css/icons.css">
<link rel="stylesheet" type="text/css" href="./theme/1/css/style.css">
<link rel="stylesheet" type="text/css" href="./theme/standard/css/user.css">
<script type="text/javascript" src="./js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="./js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="./js/jquery.form.js"></script>
<script type="text/javascript" src="./js/msgbox.js"></script>
<script type="text/javascript" src="./js/common/exception.js"></script>
<script type="text/javascript" src="./js/jquery.validation/jquery.validate.js"></script>
<script src="./js/basic-set/base.js"></script>
<script type="text/javascript" src="./js/basic-set/classManage.js"></script>
<script src="./js/basic-set/grade.js"></script>
<script src="./js/date/WdatePicker.js"></script>


<script src="./js/jquery.validation/additional-methods.js" type="text/javascript"></script>
<script src="./js/selectusers.js"></script>
<script type="text/javascript">
jQuery(function($){
	$("#basic-tabs").tabs('select','${tabName}');
});
</script>
</head>

<body>
<div class="sr_tabs">
    <div id="basic-tabs" class="easyui-tabs">
        <div title="单位信息" data-options="href:'schoolInfoNew.action'" style="padding:10px 40px"></div>
        <div title="年度学期" style="padding:10px">
           <!--------------------------------------------->
        <div class="easyui-accordion" style="width:180px;">
            <div title="部门" data-options="iconCls:'icon-people'" style="overflow:auto;padding:10px;"> 
            	<ul class="leleUI">
                	<li><input type="checkbox">校长室</li>
                    <li><input type="checkbox">教务处</li>
                    <li><input type="checkbox">教导处</li>
                    <li><input type="checkbox">组织人事处</li>
                    <li><input type="checkbox">学生处</li>
                </ul>
            </div>
            <div title="年级设置" data-options="iconCls:'icon-people'" style="padding:10px;">         
            </div>
            <div title="班级设置" data-options="iconCls:'icon-people'" style="padding:10px;">    
            </div>
        </div>
           <!----------------------------------------------->
        </div>
        <div title="年级设置" data-options="href:'listGradeManager.action#teacher'"  style="padding:10px">
        </div>
        <div title="班级设置" data-options="href:'toClassManage.action'" style="padding:10px 40px">
        	
        </div>
        <div title="部门设置" data-options="href:'listsOrg.action'" style="padding:10px 40px" id="organization">
        </div>
        <div title="学科设置" data-options="href:'toCourseList.action'" style="padding:10px 40px">
        
        </div>
        <div title="教研组设置"  style="padding:10px">
        </div>
        <div title="教室管理"  style="padding:10px 40px">
        	<div class="tabtop"></div>
            
        </div>
        <div title="备课升级"  style="padding:10px">
        </div>
    </div>
</div>
</body>
</html>
