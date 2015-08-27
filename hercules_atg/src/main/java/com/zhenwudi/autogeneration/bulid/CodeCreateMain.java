package com.zhenwudi.autogeneration.bulid;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import com.zhenwudi.autogeneration.core.Configuration;
import com.zhenwudi.autogeneration.core.DatabaseIntrospector;
import com.zhenwudi.autogeneration.core.FileConfiguration;
import com.zhenwudi.autogeneration.core.Table;
import com.zhenwudi.autogeneration.core.TemplateConfiguration;
import com.zhenwudi.autogeneration.tools.FileUtils;
import freemarker.template.Template;
import freemarker.template.TemplateException;

/**
 * 代码生成入口类
 * @author 唐延波
 * @date 2015年7月31日
 */
public class CodeCreateMain {
	final static String[] TYPES = new String[] { "TABLE" };
	final static String ENCODING = "UTF-8";

	/**
	 * 入口方法
	 * @author 唐延波
	 * @date 2015年7月31日
	 * @param args
	 * @throws Exception
	 */
	public static void main(String[] args) throws Exception {
		bulid();
	}

	/**
	 * 具体的生成操作
	 * @author 唐延波
	 * @date 2015年7月31日
	 * @throws Exception
	 */
	public static void bulid() throws Exception {
		Map configuration = Configuration.getConfiguration();	
		
		// 配置文件属性
		String encoding = (String) configuration.get(Configuration.ENCODING);
		encoding = (encoding == null ? ENCODING : encoding);
		String driver = (String) configuration.get(Configuration.JDBC_DRIVER);
		String url = (String) configuration.get(Configuration.JDBC_URL);
		String username = (String) configuration.get(Configuration.JDBC_USERNAME);
		String password = (String) configuration.get(Configuration.JDBC_PASSWORD);
		String catalog = (String) configuration.get(Configuration.CATALOG);
		String schema = (String) configuration.get(Configuration.SCHEMA);
		String tables = (String) configuration.get(Configuration.TABLES);
		String excludefield = (String) configuration.get(Configuration.EXCLUDEFIELD);
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, username, password);

		// 排除字段
		String[] excludefields = excludefield.split(",");

		try {
			// 解析TABLE配置
			Collection<Table> tss = new ArrayList<Table>();
			if (tables != null && tables.trim().length() != 0) {
				//解析一个table
				String[] s = tables.split(",");
				for (int i = 0; i < s.length; i++) {
					String tableName = s[i].trim();
					DatabaseMetaData databaseMetaData = conn.getMetaData();
					Collection<Table> ts = DatabaseIntrospector.getTables(
							databaseMetaData, catalog, schema, tableName,
							TYPES, excludefields);
					if (!ts.isEmpty()) {
						Table t = ts.iterator().next();
						Map root = new HashMap();
						root.put("table", ts.iterator().next());
						root.put("config", configuration);
						generate(root, encoding);
						tss.add(t);
					}
				}
			} else {
				//解析所有table
				DatabaseMetaData databaseMetaData = conn.getMetaData();
				Collection<Table> tableCollection = DatabaseIntrospector
						.getTables(databaseMetaData, catalog, schema, null,
								TYPES, excludefields);
				for (Iterator<Table> i = tableCollection.iterator(); i
						.hasNext();) {
					Map root = new HashMap();
					Table t = i.next();
					root.put("table", t);
					root.put("config", configuration);

					generate(root, encoding);

					tss.add(t);
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		}

		System.out.println("代码生成已经完成,感谢您使用 如果有BUG请联系微博 [http://weibo.com/zhenwudi]!");
	}

	/***
	 * 生成模板文件主调用
	 * @param root table信息，config信息
	 * @param encoding
	 */
	public static void generate(Map root, String encoding) {
		// 需要输出的模板地址
		Map configuration = (Map) root.get("config");
		String ftlSource = (String) configuration.get(Configuration.FTL_SOURCE);

		// 1.循环目录下所有FTL文件 调用生成接口
		List<File> files = new FileUtils().getTypeFiles(ftlSource, ".ftl");
		for (File _file : files) {
			generateFile(_file, root, encoding);
		}
	}

	
	
	/**
	 * 生成文件
	 * @author 唐延波
	 * @date 2015年8月18日
	 * @param file 模板文件
	 * @param root table信息，config信息
	 * @param encoding
	 */
	public static void generateFile(File file, Map root, String encoding) {
		// 1.检查文件有效性
		if (!(file != null && file.getName().trim().length() > 0)) {
			return;
		}
		Map configuration = (Map) root.get("config");
		Table table = (Table) root.get("table");
		
		
		String relativePath =getRelativePath(root,file.getName(),encoding);	
		
		String dir="";
		String filename =file.getName()+"_xx";
		if(relativePath!=null&&relativePath.trim().length()!=0)
		{
			dir = "/"+relativePath.substring(0, relativePath.lastIndexOf("/"));
			filename = relativePath.substring(relativePath.lastIndexOf("/")+1, relativePath.length());
		
		}
		
		String dirPath=(String) Configuration.getConfiguration().get(Configuration.OUT_DIR)+dir;
		File outDir = new File(dirPath);
		if ( ! (outDir.exists())  &&   ! (outDir.isDirectory()))  {
			outDir.mkdirs();
		}
		
		File outFile = new File(dirPath+"/"+filename);
		//调用输出模板方法
		write(root,file,outFile,encoding);
		System.out.println("已经生成文件:" + dirPath+"/"+filename);

	}
	

	/**
	 * 获取生成文件的路径
	 * 如：src/com/ldbank/key/model/dto/AccountManageDto.java
	 * @author 唐延波
	 * @date 2015年7月31日
	 * @param root
	 * @param ftlName
	 * @param encoding
	 * @return
	 */
	private  static String getRelativePath(Map root, String ftlName,String encoding)
	{
		String path=FileConfiguration.getRelativePath(ftlName,root);
		return path;

	}
	
	

	/***
	 * 用于输出生成的模板文件
	 * @param root
	 * @param ftlName
	 * @param outFile
	 * @param encoding
	 */
	private static void write(Map root, File ftlFile, File outFile,String encoding) {
		Writer out = null;
		try {
			out = new OutputStreamWriter(new FileOutputStream(outFile),encoding);
			Template template = TemplateConfiguration.getTemplateConfiguration().getTemplate(ftlFile, encoding);
			template.process(root, out);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		} finally {
			if (out != null) {
				try {
					out.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
}
