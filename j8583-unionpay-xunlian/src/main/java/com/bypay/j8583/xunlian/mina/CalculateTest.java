package com.bypay.j8583.xunlian.mina;


public class CalculateTest {
	public static void maopaoPX(){
		int tmp=0;
		int [] num = {8,3,5,7,2,6};
		for(int i=0;i<num.length;i++){
			for(int j=0;j<num.length-i-1;j++){
				if(num[j]>num[j+1]){
					tmp = num[j];
					num[j] = num[j+1];
					num[j+1] = tmp;
				}
			}
		}
		for (int i = 0; i < num.length; i++) {
			System.out.println("aaaaaaa:"+num[i]);
		}
	}
	public static void main(String[] args) {
		maopaoPX();
	}
}
