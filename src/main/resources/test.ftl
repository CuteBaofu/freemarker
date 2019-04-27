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

<#--内建函数-->
<#--获取集合大小-->
共${goodsList?size}少条记录

<#--转换 JSON 字符串为对象-->
<#assign text="{'mother':'黄亲亲','birth':'2018.09'}" />
<#assign data=text?eval />
暴富的妈妈：${data.mother} 生日：${data.birth} <br>

<#--日期格式化-->
当前日期：${today?date} <br>
当前时间：${today?time} <br>
当前日期+时间：${today?datetime} <br>
日期格式化： ${today?string("yyyy 年 MM 月")}
<br>

<#--数字转换为字符串-->
${number?c}

</body>
</html>