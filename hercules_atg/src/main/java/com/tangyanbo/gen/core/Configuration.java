package com.tangyanbo.gen.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Properties;
/**
 * @author chenjia
 */
public class Configuration {


	final static String path = "config.properties";

	static Map map=null;

	private Configuration() {
		
	}

	public static Map getConfiguration()  {
		try {
			if (map == null) {
				map =initProperties();				
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return map;
	}
	
	private static Map initProperties() throws IOException{
		Properties properties = new Properties();
		InputStream inStream = new FileInputStream(new File(path));
		properties.load(inStream);	
		return properties;
	}
	
	public final static  String CATALOG="catalog";
	public final static  String SCHEMA="schema";
	public final static  String TABLES="tables";
	public final static  String EXCLUDEFIELD="excludefield";
	public final static  String JDBC_URL="jdbc.url";
	public final static  String JDBC_DRIVER="jdbc.driver";
	public final static  String JDBC_USERNAME="jdbc.username";
	public final static  String JDBC_PASSWORD="jdbc.password";	
	public final static  String ENCODING="encoding";
	public final static  String FTL_SOURCE="ftl.source";
	public final static  String OUT_DIR="out.dir";
	
	
	//j2ee特有参数设置 begin
	
	//用于所有程序的appliction.id
	public final static  String  J2EE_APPLICTION_ID="j2ee_appliction_id" ;
	//对应所在那个package 下
	public final static  String  J2EE_PACKAGE="j2ee_package";       
	//对应所在那个package 下的路径方式表示
	public final static  String  J2EE_PACKAGE_PATH="j2ee_package_path"  ; 

	

	




}
