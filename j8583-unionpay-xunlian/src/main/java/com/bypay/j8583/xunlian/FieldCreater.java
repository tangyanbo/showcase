package com.bypay.j8583.xunlian;

import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author qjj date 2013/5/16 这是个单例的工具类 FieldFactory 用来创建Field。 可以通过
 *         createField(int number,String fieldName,int length,FieldType
 *         type,FieldFormat format,String hexString ) 来直接创建
 * 
 *         也可以根据预定义的predefineXml来预定义，来完成创建
 * 
 *         通过FieldFactory来创建Field、是通过一个更加直观的方式来创建Field
 * 
 * 
 */
public class FieldCreater
{
	// 定义map存放各个域
	public Map<Integer, Field> define = new TreeMap<Integer, Field>();
	private static Logger logger = LoggerFactory.getLogger(FieldCreater.class);
	// 预定义的xml配置文件
	private String predefineXml;
	private static FieldCreater fieldCreater = null;

	public static FieldCreater getInstance()
	{

		if (fieldCreater == null)
		{
			logger.debug("fieldCreate初始化无参");
			fieldCreater = new FieldCreater();
		}
		return fieldCreater;
	}

	public static FieldCreater getInstance(String predefineXml, String charset)
	{

		if (fieldCreater == null)
		{
			logger.debug("fieldCreate初始化有参");
			fieldCreater = new FieldCreater(predefineXml, charset);
		}
		return fieldCreater;

	}

	/**
	 * 初始化FieldFactory默认的配置
	 */
	private FieldCreater()
	{
		/* 默认采用classpath下面的ISO8583.xml,默认采用utf-8进行处理 */
		InputStreamReader inputStreamReader = null;
		try
		{
			inputStreamReader = new InputStreamReader(this.getClass().getClassLoader()
					.getResourceAsStream("com/bypay/j8583/xunlianpay/config/xunlianpay-ISO8583.xml"), Charset.forName("utf-8"));
			predefine(inputStreamReader);
			logger.debug("FieldFactory complete,define size={}", define.size());
		} catch (Exception ex)
		{
			logger.error("iso配置文件读取错误!", ex);
			throw new RuntimeException(ex);
		} finally
		{
			try
			{
				inputStreamReader.close();
			} catch (Exception e)
			{
				logger.error("iso8583配置文件读取错误!", e);
				throw new RuntimeException(e);
			}
		}
	}

	/**
	 * @param predefineXml
	 *            classpath下的predefineXml 指定配置文件和字符集
	 */
	private FieldCreater(String predefineXml, String charset)
	{
		if (predefineXml == null || charset == null)
			throw new IllegalArgumentException("predefineXml is null or charset is null");

		InputStreamReader inputStreamReader = null;
		try
		{
			inputStreamReader = new InputStreamReader(this.getClass().getClassLoader()
					.getResourceAsStream(predefineXml), Charset.forName(charset));
			predefine(inputStreamReader);
		} catch (Exception ex)
		{
			logger.error("指定的配置文件出错!", ex);
			throw new RuntimeException(ex);
		} finally
		{
			try
			{
				inputStreamReader.close();
			} catch (Exception e)
			{
				logger.error("", e);
				throw new RuntimeException(e);
			}
		}

	}

	/**
	 * 
	 * @param reader
	 *            直接构造reader 直接的传入输入流
	 */
	public FieldCreater(Reader reader)
	{
		predefine(reader);
	}

	/**
	 * 
	 * 解析配置文件
	 */
	public void predefine(Reader inputXml)
	{
		SAXReader saxReader = null;
		try
		{
			saxReader = new SAXReader();
			Document document = saxReader.read(inputXml);
			/* 获取根节点 */
			Element rootElm = document.getRootElement();
			String typeRoot = rootElm.attributeValue("type");
			logger.debug("type=====" + rootElm.attributeValue("type"));
			/* 循环遍历xml */
			for (Iterator<Element> it = rootElm.elementIterator(); it.hasNext();)
			{
				Element element = it.next();
				Field field = new Field();
				field.setNum(element.attributeValue("num") != null ? Integer.parseInt(element.attributeValue("num"))
						: 0);
				field.setName(element.attributeValue("name"));
				String format = element.attributeValue("format");
				if (format != null)
				{
					FieldFormat fieldFormat = FieldFormat.valueOf(format);
					field.setFormat(fieldFormat);
				}
				String type = element.attributeValue("type");
				if (type != null)
				{
					FieldType fieldType = FieldType.valueOf(type);
					field.setType(fieldType);
				}
				field.setLength(element.attributeValue("length") != null ? Integer.parseInt(element
						.attributeValue("length")) : 0);
				define.put(field.getNum(), field);
			}

		} catch (Exception ex)
		{
			logger.error("解析8583xml", ex);
			throw new RuntimeException(ex);
		} finally
		{
		}

	}

	/**
	 * 以字符创建field
	 * 
	 * @param number
	 * @param fieldName
	 * @param length
	 * @param type
	 * @param format
	 * @param hexString
	 * @return
	 */

	public Field createField(int number, String fieldName, int length, FieldType type, FieldFormat format,
			String hexString)
	{

		Field field = new Field();
		field.setName(fieldName);
		field.setValue(hexString);
		field.setType(type);
		field.setFormat(format);
		return field;
	}

	/**
	 * 从别的数组创建field
	 * 
	 * @param number
	 * @param fieldName
	 * @param length
	 * @param type
	 * @param format
	 * @param b
	 * @param off
	 * @param len
	 * @return
	 */
	public Field createField(int number, String fieldName, int length, FieldType type, FieldFormat format, String b,
			int off, int len)
	{
		Field field = new Field();
		field.setName(fieldName);
		field.setValue(b);
		field.setType(type);
		field.setFormat(format);
		return field;
	}

	/**
	 * 采用ascii byte数组，创建field,使用与域为变长的方式。
	 * 
	 * @param number
	 * @param data
	 *            数据
	 * @param length
	 *            字数个数，一些情况下 !=data.length
	 * 
	 *            BCD：(length+1)/2=data.length binary:(length)/8=data.length
	 *            ascii:length=data.length
	 * 
	 * @return
	 */
	public Field createFieldByPredefine(int number, byte[] data, int length)
	{

		Field field = (Field) this.define.get(number).deepClone();

		// field.valueof(data);

		switch (field.getType())
		{
		case BCD:
			if ((length + 1) / 2 != data.length)
				throw new RuntimeException("Set value's length (" + data.length
						+ ") doesn't equal with predefining length (" + (length + 1) / 2 + ")");
			break;
		case ASCII:
			if (length != data.length)
				throw new RuntimeException("Set value's length (" + data.length
						+ ") doesn't equal with predefining length (" + length + ")");
			break;
		case BINARY:
			if ((length / 8) != data.length)
				throw new RuntimeException("Set value's length (" + data.length
						+ ") doesn't equal with predefining length (" + (length / 8) + ")");
			break;
		}
		field.setLength(length);
		return field;
	}

	public Field createFieldByPredefine(int number)
	{
		//logger.info("clone----" + number);

		Field field = (Field) this.define.get(number).clone();

		return field;
	}

	public Map<Integer, Field> getDefine()
	{
		return define;
	}

	public Map<Integer, Field> getDefine(Map<Integer, String> creatField)
	{
		Map<Integer, Field> resultField = new TreeMap<Integer, Field>();
		Set<Entry<Integer, String>> set = creatField.entrySet();
		for (Iterator<Entry<Integer, String>> it = set.iterator(); it.hasNext();)
		{
			Entry<Integer, String> entry = it.next();
			Field field = (Field) this.define.get(entry.getKey()).deepClone();
			if (entry.getValue() == null)
			{
				throw new RuntimeException("set entry value is null---" + entry.getKey());
			}

			field.setValue(entry.getValue());
			resultField.put(entry.getKey(), field);
		}
		return resultField;
	}

	public void setDefine(Map<Integer, Field> define)
	{
		this.define = define;
	}

	public String getPredefineXml()
	{
		return predefineXml;
	}

	public void setPredefineXml(String predefineXml)
	{
		this.predefineXml = predefineXml;
	}

}
