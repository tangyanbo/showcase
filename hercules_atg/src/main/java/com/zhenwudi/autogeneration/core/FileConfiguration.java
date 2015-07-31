package com.zhenwudi.autogeneration.core;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringWriter;
import java.util.Map;
import java.util.Properties;
import com.zhenwudi.autogeneration.tools.StringTemplateLoader;

import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * @author chenjia
 */
public class FileConfiguration {

	final static String path = "file.properties";
	static Map map = null;
	private FileConfiguration() {

	}

	public static String getRelativePath(String ftlName,Map root){
		//获取文件路径 和文件
		map = FileConfiguration.getConfiguration();
		String relativePath = (String) map.get(ftlName);
		
		//若无法找到则返回空字串
		if(relativePath==null||relativePath.trim().length()==0){
			return "";
		}
		
		//使用FREEMARK 替换标签
		try {
			Configuration cfg = new Configuration();
			cfg.setTemplateLoader(new StringTemplateLoader(relativePath));
			cfg.setDefaultEncoding("UTF-8");
			Template template = cfg.getTemplate("");
			StringWriter writer = new StringWriter();
			template.process(root, writer);
			relativePath =writer.toString();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		
		return relativePath == null ? "" : relativePath;
	}

	public static Map getConfiguration() {
		try {
			if (map == null) {
				map = initProperties();
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}

	private static Map initProperties() throws IOException {
		Properties properties = new Properties();
		InputStream inStream = new FileInputStream(new File(path));
		properties.load(inStream);
		return properties;
	}
}
