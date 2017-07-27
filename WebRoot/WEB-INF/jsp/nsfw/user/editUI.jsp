<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>用户管理</title>
    <%@include file="/common/header.jsp"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
	<script type="text/javascript" src="${basePath }js/datepicker/WdatePicker.js"></script>
</head>
<body class="rightBody">
<form id="form" name="form" action="${basePath }nsfw/user_edit.action" method="post" enctype="multipart/form-data">
    <div class="p_d_1">
        <div class="p_d_1_1">
            <div class="content_info">
    <div class="c_crumbs"><div><b></b><strong>用户管理</strong>&nbsp;-&nbsp;编辑用户</div></div>
    <div class="tableH2">编辑用户</div>
    <table id="baseInfo" style="width: 100% ;align:center;border:0; cellpadding:0; cellspacing:0"  class="list"   >
        <tr>
            <td class="tdBg" style="width: 200px" >所属部门：</td>
            <td><s:select name="user.dept" list="#{'部门A':'部门A','部门B':'部门B' }"/></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">头像：</td>
            <td>
                <input type="file" name="headImg" />
            	<s:if test="%{user.headImg != null && user.headImg != ''}">
                <img src="${basePath }upload/${user.headImg}" width="100" height="100"/>
                <s:hidden name="user.headImg"></s:hidden>
                </s:if>
            </td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">用户名：</td>
            <td><s:textfield name="user.name"/></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">帐号：</td>
            <td><s:textfield name="user.account"/></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">密码：</td>
            <td><s:textfield name="user.password"/></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">性别：</td>
            <td><s:radio list="#{'true':'男','false':'女'}" name="user.gender"/></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">角色：</td>
            <td></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">电子邮箱：</td>
            <td><s:textfield name="user.email" /></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">手机号：</td>
            <td><s:textfield name="user.mobile"/></td>
        </tr>        
        <tr>
            <td class="tdBg" style="width: 200px">生日：</td>
            <td><s:textfield id="birthday" name="user.birthday" readonly="true" 
            onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'});">
            <s:param name="value">
            	<s:date name="user.birthday" format="yyyy-MM-dd"/>
            </s:param>
            </s:textfield></td>
        </tr>
		<tr>
            <td class="tdBg" style="width: 200px">状态：</td>
            <td><s:radio list="#{'1':'有效','0':'无效'}" name="user.state"/></td>
        </tr>
        <tr>
            <td class="tdBg" style="width: 200px">备注：</td>
            <td><s:textarea name="user.memo" cols="75" rows="3"/></td>
        </tr>
    </table>
    <s:hidden name="user.id"></s:hidden>
    <div class="tc mt20">
        <input type="submit" class="btnB2" value="保存" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button"  onclick="javascript:history.go(-1)" class="btnB2" value="返回" />
    </div>
    </div></div></div>
</form>
</body>
</html>