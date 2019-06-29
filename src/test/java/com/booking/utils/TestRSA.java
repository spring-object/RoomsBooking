package com.booking.utils;

import org.junit.Test;

public class TestRSA {
	@Test
	public void test() {
		RSA rsa=new RSA();
		String e1=rsa.getStrEncryptionText("abcdefg");
		String e2=rsa.getStrEncryptionText("abcdefg");
		System.out.println(e1);
		System.out.println("length="+e1.length());
		System.out.println(e2);
		System.out.println("length="+e2.length());
		System.out.println(rsa.getStrDecryptionText(e2));
	}
}
