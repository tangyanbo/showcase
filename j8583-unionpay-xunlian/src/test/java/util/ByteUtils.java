package util;

import java.io.ByteArrayOutputStream;

import com.bypay.j8583.xunlian.tool.ByteUtil;
import com.bypay.j8583.xunlian.tool.DataConverter;

public class ByteUtils {

	public static void test1(){
		long a1 = 10l;
		byte[] str2bcdOne = DataConverter.str2bcdOne("1000000000");
		String bcd2Str = DataConverter.bcd2Str(str2bcdOne);
		byte[] intToByteArray = DataConverter.intToByteArray(1000000000);
		String byteToBinary = DataConverter.byteToBinary(str2bcdOne);
		String byteToBinary2 = DataConverter.byteToBinary(intToByteArray);
		System.out.println(bcd2Str);
		System.out.println(byteToBinary);
		System.out.println(byteToBinary2);
		
		int a = 1000000000;
	}
	
	public static void test2(){
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		baos.write(126);
		byte[] byteArray = baos.toByteArray();
		int byteArrayToInt = DataConverter.byteArrayToInt(byteArray);
		System.out.println();
	}
	
	public static void main(String[] args) {
		
		byte[] str2bcdOne = DataConverter.str2bcdOne("9999");
		String byteToBinary = DataConverter.byteToBinary(str2bcdOne);
		String intToBinary = DataConverter.intToBinary(20);
		String convertByteArrayToHexStr = DataConverter.convertByteArrayToHexStr(str2bcdOne);
		System.out.println(convertByteArrayToHexStr);
	}
}
