<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2023/5/20
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div style="width: 100%;">
    <form action="index.jsp" name="form" id="form" method="post" >
        <table style="margin: 0 auto">
            <tr>
                <td>用户名：</td>
                <td><input type="text" name="UserName" id="UserName"></td>
            </tr>
            <tr>
                <td>密 码：</td>
                <td><input type="password" name="UserPwd" id="UserPwd"></td>
            </tr>
            <tr>
                <td><span id="msg" style="color: red"></span></td>
            </tr>
            <tr>
                <td><button type="button" id="login">登录</button> </td>
                <td><button type="button">注册</button></td>
            </tr>
        </table>
    </form>
</div>

<script src="js/jquery-3.7.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $("#login").click(function (){
        var UserName=$("#UserName").val();
        var UserPwd = $("#UserPwd").val();

        if (UserName==""||UserName==null){
            $("#msg").html("用户名不能为空！");
            return;
        }
        if (UserPwd==""|| UserPwd==null){

            $("#msg").html("密码不能为空！")
            return;
        }
        $("#form").submit();
    })

</script>


</body>
</html>
