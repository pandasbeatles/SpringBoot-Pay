<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<script src="<%=request.getContextPath() %>/lib/jquery-3.3.1.min.js" type="text/javascript"></script>

<html>

<head>
    <title>商品列表</title>
</head>

<body>

<table border="1px" align="center" bgcolor="#f0f8ff" width="60%">
    <tr>
        <td>
            产品编号
        </td>
        <td>
            产品名称
        </td>
        <td>
            产品价格
        </td>
        <td>
            操作
        </td>
    </tr>
    <c:forEach items="${pList }" var="p">
        <tr>
            <td>
                    ${p.id }
            </td>
            <td>
                    ${p.name }
            </td>
            <td>
                    ${p.price }
            </td>
            <td><%--<%=request.getContextPath() %>/alipay/goConfirm.action--%>
                <a style="color: deeppink" href="<%=request.getContextPath() %>/alipay/goConfirm?productId=${p.id }">购买</a>
            </td>
        </tr>

    </c:forEach>
</table>

<input type="hidden" id="hdnContextPath" name="hdnContextPath" value="<%=request.getContextPath() %>"/>
</body>

</html>


<script type="text/javascript">
    $(document).ready(function () {
        var hdnContextPath = $("#hdnContextPath").val();

    });

</script>

<%--
1 一个参数的情况

<td><a  href="bpDeleteHomeCare.action?updateUserId=<s:property value="#list.updateUserId"/>></a>

    2 多个参数的情况

<td><a  href="bpDeletefunctionKey.action?MMstFunctionKeyId=<s:property value="#list.MMstFunctionKeyId"/>&updateUserId=<s:property value="#list.updateUserId"/>" οnclick="return confirm('是否确定删除？')">删除</a></td>

3 弹出提示信息

οnclick="return confirm('是否确定删除？')"
--%>
