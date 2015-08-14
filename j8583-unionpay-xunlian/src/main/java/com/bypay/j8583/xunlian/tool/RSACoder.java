package com.bypay.j8583.xunlian.tool;

import java.io.FileInputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.Cipher;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public abstract class RSACoder {
	public static final String KEY_ALGORITHM = "RSA";
	public static final String PUBLIC_KEY = "RSAPublicKey";
	public static final String PRIVATE_KEY = "RSAPrivateKey";

	private static final int KEY_SIZE = 1024;

	// 私钥解密
	public static byte[] decryptByPrivateKey(byte[] data, byte[] key)
			throws Exception {
		PKCS8EncodedKeySpec pkcs8KeySpec = new PKCS8EncodedKeySpec(key);
		KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);
		PrivateKey privateKey = keyFactory.generatePrivate(pkcs8KeySpec);
		Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());
		cipher.init(Cipher.DECRYPT_MODE, privateKey);
		return cipher.doFinal(data);
	}
	// 私钥解密2
	public static String decryptByPrivateKey(String data, String key)
			throws Exception {
		BASE64Decoder dec=new BASE64Decoder();
		BASE64Encoder enc=new BASE64Encoder(); 
		byte[] dataByte=decryptByPrivateKey(dec.decodeBuffer(data),dec.decodeBuffer(key));
		return new String(dataByte);
	}
	// 公钥解密
	public static byte[] decryptByPublicKey(byte[] data, byte[] key)
			throws Exception {
		X509EncodedKeySpec x509KeySpec = new X509EncodedKeySpec(key);
		KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);
		PublicKey publicKey = keyFactory.generatePublic(x509KeySpec);

		Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());
		cipher.init(Cipher.DECRYPT_MODE, publicKey);

		return cipher.doFinal(data);
	}
	// 公钥解密2
	public static String decryptByPublicKey(String data, String key)
			throws Exception {
		BASE64Decoder dec=new BASE64Decoder();
		BASE64Encoder enc=new BASE64Encoder(); 
		byte[] dataByte=decryptByPublicKey(dec.decodeBuffer(data),dec.decodeBuffer(key));
		return new String(dataByte);
	}
	// 公钥加密
	public static byte[] encryptByPublicKey(byte[] data, byte[] key)
			throws Exception {
		X509EncodedKeySpec x509KeySpec = new X509EncodedKeySpec(key);
		KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);
		PublicKey publicKey = keyFactory.generatePublic(x509KeySpec);
		Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());
		cipher.init(Cipher.ENCRYPT_MODE, publicKey);
		return cipher.doFinal(data);
	}
	// 公钥加密2
	public static String encryptByPublicKey(String data, String key)throws Exception {
		BASE64Decoder dec=new BASE64Decoder();
		BASE64Encoder enc=new BASE64Encoder(); 
		byte[] signByte=encryptByPublicKey(data.getBytes(),dec.decodeBuffer(key));
		return enc.encode(signByte);
	}
	// 私钥加密
	public static byte[] encryptByPrivateKey(byte[] data, byte[] key)
			throws Exception {
		PKCS8EncodedKeySpec pkcs8KeySpec = new PKCS8EncodedKeySpec(key);
		KeyFactory keyFactory = KeyFactory.getInstance(KEY_ALGORITHM);
		PrivateKey privateKey = keyFactory.generatePrivate(pkcs8KeySpec);
		Cipher cipher = Cipher.getInstance(keyFactory.getAlgorithm());
		cipher.init(Cipher.ENCRYPT_MODE, privateKey);
		return cipher.doFinal(data);
	}
	// 私钥加密2
	public static String encryptByPrivateKey(String data, String key)
	throws Exception {
		BASE64Decoder dec=new BASE64Decoder();
		BASE64Encoder enc=new BASE64Encoder(); 
		byte[] signByte=encryptByPrivateKey(data.getBytes(),dec.decodeBuffer(key));
		return enc.encode(signByte);
	}
	
	//私钥验证公钥密文
	public static boolean checkPublicEncrypt(String data,String sign,String pvKey)
	throws Exception{
		return data.equals(decryptByPrivateKey(sign,pvKey));
	}
	public static boolean checkPrivateEncrypt(String data,String sign,String pbKey)
	throws Exception{
		return data.equals(decryptByPublicKey(sign,pbKey));
	}
	//取得私钥
	public static byte[]getPrivateKey(Map<String,Object> keyMap) throws Exception{
		Key key=(Key)keyMap.get(PRIVATE_KEY);
		return key.getEncoded();
	}
	//取得公钥
	public static byte[]getPublicKey(Map<String,Object> keyMap) throws Exception{
		Key key=(Key)keyMap.get(PUBLIC_KEY);
		return key.getEncoded();
	}
	//初始化密钥
	public static Map<String,Object> initKey() throws Exception{
		KeyPairGenerator keyPairGen =KeyPairGenerator.getInstance(KEY_ALGORITHM);
		
		keyPairGen.initialize(KEY_SIZE);
		
		KeyPair keyPair=keyPairGen.generateKeyPair();
		
		RSAPublicKey publicKey=(RSAPublicKey)keyPair.getPublic();
		RSAPrivateKey privateKey=(RSAPrivateKey)keyPair.getPrivate();

		Map<String,Object> keyMap =new HashMap<String,Object>(2);
		keyMap.put(PUBLIC_KEY,publicKey);
		keyMap.put(PRIVATE_KEY,privateKey);
		return keyMap;
	}
	
	
	public static String getPrivate(String path,String pwd){
		try {
			KeyStore ks= KeyStore.getInstance("PKCS12");
			FileInputStream is=new FileInputStream(path);
			ks.load(is,pwd.toCharArray());
			is.close();
			System.out.println("keystore type=" + ks.getType());
			Enumeration  enuma = ks.aliases();     
			String keyAlias = null; 
			if (enuma.hasMoreElements()){                
				keyAlias = (String)enuma.nextElement();           
				System.out.println("alias=[" + keyAlias + "]");          
			}
			
			System.out.println("is key entry=" + ks.isKeyEntry(keyAlias));
			BASE64Encoder enc=new BASE64Encoder();
			PrivateKey privatekey = (PrivateKey) ks.getKey(keyAlias, pwd.toCharArray()); 
			System.out.println("private key = " + enc.encode(privatekey.getEncoded()));
			return enc.encode(privatekey.getEncoded());
		} catch (Exception e) {
			e.printStackTrace();
			 return null;
		}	
	}
	
	public static void main(String[] args)
	{

			  
	}
	
}
