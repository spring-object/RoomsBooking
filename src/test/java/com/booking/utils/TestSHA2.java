package com.booking.utils;

import org.junit.Test;

public class TestSHA2 {
	@Test
	public void test() {
		String e1=SHA2.getEncryptionText("ab11111111111111111c", "salt", "SHA-512");
		System.out.println(e1);
		System.out.println("length="+e1.length());
	}
}
