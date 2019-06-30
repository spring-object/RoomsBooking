//--------------------------------------------------//
//组件说明:
	//请按顺序引入这些文件 jsbn.js prng4.js rng.js jsbn2.js base64.js rsa.js rsa2.js
	//该函数使用RSA加密，加密后的字符串经过encodeURIComponent()处理使得在上传时不会丢失信息
	//若参数合法返回被加密的字符串,否则返回空字符"".
//RSA加密.
//参数1.(字符串)模,2.(字符串)指数,3.(字符串)要加密的数据.
//返回(字符串) 被加密的字符串或空字符"".
function jsu_rsa(jsu_modulus,jsu_pubExep,jsu_text){
	"use strict";
	if(null===jsu_modulus||null===jsu_pubExep||null===jsu_text||""===jsu_modulus||""===jsu_pubExep||""===jsu_text){
		return "";
	}
	jsu_modulus=jsu_modulus.trim();
	jsu_text=jsu_text.trim();
    var rsa = new RSAKey();
    
    rsa.setPublic(jsu_modulus, jsu_pubExep);
    
	jsu_text = rsa.encrypt(jsu_text); // 密文
	jsu_text=hex2b64(jsu_text);
	jsu_text=encodeURIComponent(jsu_text);//encodeURIComponent对密码进行编码，防止特殊字符造成上传到服务器之后信息不一致
	return jsu_text;
}