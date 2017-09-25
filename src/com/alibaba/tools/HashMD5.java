package com.alibaba.tools;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class HashMD5 {
	// MD5��ϣ
	public static String getMD5(String input) {
		String md5 = null;
		if (null == input)
			return null;
		try {
			// ����һ�� MessageDigest��ϣ�㷨����ָ���㷨��MD5��SHA1,SHA256,SHA512
			MessageDigest digest = MessageDigest.getInstance("MD5");
			// ������Ϣ
			digest.update(input.getBytes(), 0, input.length());
			// �Ѽ���������ת��Ϊ16����(hex)
			md5 = new BigInteger(1, digest.digest()).toString(16);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return md5;
	}

	// MD5��ϣ
	public static String getMD5(String input, String salt) {
		String inputTemp = input + salt;
		String result = getMD5(inputTemp);
		return result;
	}

}
