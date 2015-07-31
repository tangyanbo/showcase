package com.zhenwudi.autogeneration.tools;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * 用于在模版中替换参数的类
 * @author jia.chen
 */
public class StringTemplateTest {
	public static void main(String[] args) throws Exception {
		Configuration cfg = new Configuration();
		cfg.setTemplateLoader(new StringTemplateLoader("欢迎：${user}"));
		cfg.setDefaultEncoding("UTF-8");

		Template template = cfg.getTemplate("");
		
		Map root = new HashMap();
		root.put("user", "chenjia");
		
		StringWriter writer = new StringWriter();
		template.process(root, writer);
		System.out.println(writer.toString());		
	}
}
