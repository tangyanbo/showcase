package com.bypay.j8583.xunlian;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/**
 * @author qjj
 * ISO8583 Field，其中value采用ascii码行进数据存储
 * this.length与value.length，
 * format=LVAR,LLVAR,LLLVAR 存放了这个域的最大值
 * format=hhmmss,MMDD,YYMM,DEFAULT 存放了这个域的固定值
 * 
 * this.length 指字符、数字数量
 * value.length 指实际存放字节的存储空间大小
 * 
 * 例如：
 * if (type==BCD) (this.length+1)/2==value.length
 * if (type==ASCII) this.length==value.length
 * if (type==BINARY) (this.length/8)==value.length
 */
public class Field implements Cloneable,Serializable {
	
	private static final long serialVersionUID = 1836187927830339302L;
	
	// 位
	private int num;
	// 域定义
	private String name;
	// 值("".getByte())
	private String value;
	// 格式:LLVAR/hhmmss/MMDD/YYMM/LLVAR(表示两位变长如:89)/LLLVAR(表示三位变长如:999)
	private FieldFormat format;
	// 类型:BCD/BINARY/ASCII
	private FieldType type;
	// 值(byte数组的长度) : n4 表示4字节长度; n…19 表示最大19位不定长度;
	private int length;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue()
	{
		return value;
	}

	public void setValue(String value)
	{
		this.value = value;
	}

	public FieldFormat getFormat() {
		return format;
	}
	public void setFormat(FieldFormat format) {
		this.format = format;
	}
	public FieldType getType() {
		return type;
	}
	public void setType(FieldType type) {
		this.type = type;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getLength() {
		return length;
	}

	public void setLength(int length) {
		this.length = length;
	}
	
	/**
	 * 浅克隆
	 */
	@Override
	public Object clone(){
		Object o = null;
		try {
			o = (Field) super.clone();// Object中的clone()识别出你要复制的是哪一// 个对象。
		} catch (CloneNotSupportedException e) {
			System.out.println(e.toString());
		}
		return o;
	}
	
	/**
	 * 通过对象的序列化完成对象深度克隆
	 * @return
	 */
	public Object deepClone(){
		try{
			
			//将对象写到流里
			ByteArrayOutputStream bo=new ByteArrayOutputStream();
			ObjectOutputStream oo=new ObjectOutputStream(bo);
			oo.writeObject(this);
			oo.close();
			//从流里读出来
			ByteArrayInputStream bi=new ByteArrayInputStream(bo.toByteArray());
			ObjectInputStream oi=new ObjectInputStream(bi);
			oi.close();
			return(oi.readObject());
		}catch(Exception ex){
			throw new RuntimeException(ex);
		}
	}

	
}
