package com.zhenwudi.autogeneration.core;
import java.io.File;
import java.io.IOException;
import freemarker.template.Configuration;
import freemarker.template.DefaultObjectWrapper;
import freemarker.template.Template;

/**
 * 模配置类
 * @author chenjia
 */
public class TemplateConfiguration {
	
	private static  TemplateConfiguration cfg =null;
    private  Configuration configuration;
	private TemplateConfiguration(Configuration configuration) {
		this.configuration= configuration;
		
	}

	/***
	 * 先定义部分设置参数
	 * @return
	 */
	public static TemplateConfiguration getTemplateConfiguration(){
		String path =  (String) com.zhenwudi.autogeneration.core.Configuration.getConfiguration().get(com.zhenwudi.autogeneration.core.Configuration.FTL_SOURCE);
		if(cfg==null){
			Configuration conf = new Configuration();
			conf.setObjectWrapper(new DefaultObjectWrapper());
			cfg = new TemplateConfiguration(conf);
					
		}
		return cfg;
	}
	
	/***
	 * 根据文件定义其模版载入路径参数
	 * @param file
	 * @param encoding
	 * @return
	 * @throws IOException
	 */
	public Template getTemplate(File file, String encoding) throws IOException{
		configuration.setDirectoryForTemplateLoading(file.getParentFile());
		return configuration.getTemplate(file.getName(), encoding);
		 
	}
	
	/***
	 * 根据文件定义其模版载入路径参数
	 * @param file
	 * @return
	 * @throws IOException
	 */
	public Template getTemplate(File file) throws IOException{
		configuration.setDirectoryForTemplateLoading(file.getParentFile());
		return configuration.getTemplate(file.getName());
		 
	}
}
