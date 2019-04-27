<html >
<head>
    <meta charset="UTF-8">
    <title>Freemarker 入门小 DEMO </title>
</head>
<#--定义对象类型-->
<#include "head.ftl">
<body>
<#--我只是一个注释，我不会有任何输出 -->
${name},你好。${message}

<#--FTL指令-->
<#--定义简单类型-->
<#assign cuteBaby="暴富">
小可爱：${cuteBaby}
<br>

<#--if指令-->
<#if success=true>
    你已通过实名认证
<#else>
    你未通过实名认证
</#if>

<#--list指令-->
<#list goodsList as goods>
    商品名：${goods.name}  商品价格：${goods.price}
</#list>
</body>
</html>