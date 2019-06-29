package com.booking.utils;

public class RSAPubExepAndModulus {
	String modulus;
	String pubExep;
	public String getModulus() {
		return modulus;
	}
	public void setModulus(String modulus) {
		this.modulus = modulus;
	}
	public String getPubExep() {
		return pubExep;
	}
	public void setPubExep(String pubExep) {
		this.pubExep = pubExep;
	}
	@Override
	public String toString() {
		return "RSAPubExepAndModulus [modulus=" + modulus + ", pubExep=" + pubExep + "]";
	}
	
}
