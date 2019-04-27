package cn.freemarker;


import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

public class Test {
    public static void main(String[] args) throws IOException, TemplateException {
        //第一步：创建一个 Configuration 对象，直接 new 一个对象。构造方法的参数就是freemarker 的版本号。
        Configuration configuration=new Configuration(Configuration.getVersion());
        //第二步：设置模板文件所在的路径。
        configuration.setDirectoryForTemplateLoading(new File("D:/IdeaProjects/freemarker_demo/src/main/resources/"));
        //第三步：设置模板文件使用的字符集。一般就是 utf-8.
        configuration.setDefaultEncoding("utf-8");
        //第四步：加载一个模板，创建一个模板对象。
        Template template = configuration.getTemplate("test.ftl");
        //第五步：创建一个模板使用的数据集，可以是 pojo 也可以是 map。一般是 Map。
        Map map = new HashMap();
        map.put("name","暴富");
        map.put("message","无敌小可爱");
        //第六步：创建一个 Writer 对象，一般创建一 FileWriter 对象，指定生成的文件名。
        Writer out = new FileWriter("e:/work/test.html");
        //第七步：调用模板对象的 process 方法输出文件。
        template.process(map, out);
        //第八步：关闭流
        out.close();
    }
}
