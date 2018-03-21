<%--
  Created by IntelliJ IDEA.
  User: Lean
  Date: 2018/3/19
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>"/>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/lunwen.css" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <script type="text/javascript" src="js/jquery-3.0.0.js" ></script>
    <script type="text/javascript" src="js/lunwen.js" ></script>
</head>
<body class="container">
<div class="biaoti">
    论文管理系统
</div>

<p class="wel">欢迎您！&nbsp;<span class="username">${tuser.username}</span>&nbsp;<a class="zhuxiao">注销</a></p>


<div class="fudiv row">

    <div class="leftdiv col-lg-2">
        <table class="lefttable">
            <tr>
                <th>功能列表</th>
            </tr>
            <tr>
                <td>用户管理</td>
            </tr>
            <tr>
                <td class="lunwgl">论文管理</td>
            </tr>
            <tr>
                <td>公共代码</td>
            </tr>
            <tr>
                <td class="tuichu">退出系统</td>
            </tr>
        </table>
    </div>

    <div class="rightdiv col-lg-10">
        <!--添加论文-->
        <div class="addlw">
            <p>
                论文题目：<input type="text" class="lwtimu"/>
                <span class="tishi">*</span>
            </p>
            <p>类型：<select name="addtype">
                <option value="001">理论性</option>
                <option value="002">实践性</option>
                <option value="003">应用性</option>
            </select></p>
            <p>
                论文摘要：<textarea class="zhaiyao"></textarea>
                <span class="tishi">*</span>
            </p>
            <p>
                论文内容：<input type="file"/>
                <span class="tishi">上传文件大小不能超过5M*上传文件类型必须为.doc .docx</span>
            </p>
            <p>
                <input type="button" value="保存" class="baocun"/>&nbsp;&nbsp;
                <input type="button" value="返回" class="fanhui"/>
            </p>
        </div>
        <!--管理论文-->
        <div class="rightn">
            <div class="onelogin">
                <p class="userp">${tuser.username}</p>
                <p>欢迎来到论文管理系统</p>
            </div>
            <div class="lunwg">
                <p>你所在的位置是：<span class="lwspan">论文管理系统</span></p>
                <form>
                论文主题：<input type="text" class="lwzhuti" id="title" name="title"/>
                论文类型：<select id="type" name="type">
                            <option value="">请选择</option>
                            <option value="001">理论性</option>
                            <option value="002">实践性</option>
                            <option value="003">应用性</option>
                        </select>
                </form>
                <input type="button" class="chaxun" value="查询"/>
                <a href="#" class="adda">添加论文</a>
                <table class="lwt">
                    <tr>
                        <td>论文主题</td>
                        <td>作者</td>
                        <td>论文类型</td>
                        <td>发表时间</td>
                        <td>修改时间</td>
                        <td>操作</td>
                    </tr>
                    <tr>
                        <td>t1</td>
                        <td>admin</td>
                        <td>应用类型</td>
                        <td>2017-1-1</td>
                        <td>2018-1-1</td>
                        <td>
                            <input type="checkbox"/>&nbsp;<span class="shanchu">×</span>
                        </td>

                </table>
                <p class="jlp">
                    共<span class="jlnum">14</span>条记录
                    &nbsp;&nbsp;&nbsp;&nbsp;<span class="dq">1</span>/<span class="sum">4</span>页
                </p>
                <p class="fanye">
                    <a>上一页</a>
                    <a>下一页</a>
                    <a>最后一页</a>
                </p>
                <p class="tiaoz">
                    跳转至<input type="text" class="yeinput"/>页
                    &nbsp;&nbsp;&nbsp;<input type="button" value="GO" class="tzgo"/>
                </p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
