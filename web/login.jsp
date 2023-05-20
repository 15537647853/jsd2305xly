<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2023/5/20
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
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
                <td><input type="text" name="UserName" id="UserName" aria-label=""></td>
            </tr>
            <tr>
                <td>密 码：</td>
                <td><input type="password" name="UserPwd" id="UserPwd" aria-label=""></td>
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
        var UserName = $("#UserName").val().trim();
        var UserPwd  = $("#UserPwd").val().trim();
        if (IsEmpty(UserName)){
            $("#msg").html("用户名不能为空！");
            return;
        }
        if (IsEmpty(UserPwd)){
            $("#msg").html("密码不能为空！");
            return;
        }

        $("#form").submit();
    })

    function IsEmpty(str){
        if(str == null || str == ""){
            return true;
        }
        return  false;
    }

</script>


</body>
</html>
