package com.tangyanbo.gen.tools;
import java.io.File;
import java.util.ArrayList;
import java.util.List;


/**
 * 文件操作类
 * 用于解析指定的模版文件
 **/
public class FileUtils {	 
	public  List filesList = new ArrayList();
	
	

	/****
	 * 递归获取目录下所有指定类型的文件
	 * @param path
	 * @param type
	 * @return
	 */
	public  List getTypeFiles(String path,String type) {		
		File file = new File(path);
		if (file.isFile()) {
			if(file.getName().endsWith(type)){
				filesList.add(file);				
			}
		} else {			
			File files[] = file.listFiles();
			for (int i = 0; i < files.length; i++) {

				getTypeFiles(files[i].getPath(),type);
			}
		}
		return filesList;
	}
	
    /**
     * 测试递归获取文件效果
     * @param args
     */
	public static void main(String[] args) {
		   List myList =	new FileUtils().getTypeFiles("template",".ftl");
		   System.out.println(myList.toString());
    }

}
