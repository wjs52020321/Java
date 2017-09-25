package com.alibaba.tools;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashMD5 {
	// MD5哈希
	public static String getMD5(String input) {
		String md5 = null;
		if (null == input)
			return null;
		try {
			// 创建一个 MessageDigest哈希算法对象，指定算法是MD5，SHA1,SHA256,SHA512
			MessageDigest digest = MessageDigest.getInstance("MD5");
			// 输入消息
			digest.update(input.getBytes(), 0, input.length());
			// 把加密数据再转换为16进制(hex)
			md5 = new BigInteger(1, digest.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return md5;
	}

	// MD5哈希
	public static String getMD5(String input, String salt) {
		String inputTemp = input + salt;
		String result = getMD5(inputTemp);
		return result;
	}

}
