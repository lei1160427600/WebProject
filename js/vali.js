/**
 * form验证是否通过，默认通过
 */
var boolFormVal=true;
/**
 * 表单验证错误信息
 */
var strFormMsg="";

// 判断密码是否一致
function checkPwd(source1, source2) {
	removeErrorDiv(source1, "两次输入的密码不一致");
	if (source1.value != source2.value) {
		createErrorDiv(source1, "两次输入的密码不一致");
	}
}
// 验证帐号是否合法
// 验证规则：字母、数字、下划线组成，字母开头，4-16位。
function checkUser(source) {
	removeErrorDiv(source, "帐号格式不正确");
	var re = /^[a-zA-z]\w{3,15}$/;
	if (!re.test(source.value)) {
		createErrorDiv(source, "帐号格式不正确");
	}
}
// 创建错误标签
function createErrorDiv(source, infostr) {
	var last = source.parentNode.lastChild;
//	var last = source.lastChild;
	if (last.innerHTML == infostr)// 已经有了不需要再加
		return;
	var div = document.createElement("span");
	div.innerHTML = infostr;
	div.style.color = "red";
	div.style.fontSize = "12px";
	div.style.float = "left";
//	div.style.margin = "-230px -55px 0px 0px";
	source.parentNode.appendChild(div);
//	source.appendChild(div);
	// source.select();
	// source.focus();
}

// 去掉字符串头尾空格
function trim(str) {   
    return str.replace(/(^\s*)|(\s*$)/g, "");   
}  

/**
 * 删除错误标签 根据infostr删除也可以根据div名字name=msg删除
 */
function removeErrorDiv(source, infostr) {
	var parent = source.parentNode;
//	var parent = source;
	var divs = parent.getElementsByTagName("span");
	if (divs.length > 0)
		for ( var i = 0; i < divs.length; i++) {
			if (divs[i] != undefined) {
				if (divs[i].innerHTML == infostr)
					parent.removeChild(divs[i]);
			}
		}
}
// 验证邮箱
// 验证规则：姑且把邮箱地址分成“第一部分@第二部分”这样
// 第一部分：由字母、数字、下划线、短线“-”、点号“.”组成，
// 第二部分：为一个域名，域名由字母、数字、短线“-”、域名后缀组成，
// 而域名后缀一般为.xxx或.xxx.xx，一区的域名后缀一般为2-4位，如cn,com,net，现在域名有的也会大于4位
function checkEmail(source) {
	var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
	removeErrorDiv(source, "邮箱格式不正确");
	if (!re.test(source.value)) {
		createErrorDiv(source, "邮箱格式不正确");
		return false;
	}else{
		return true;
	}
}
// 验证是不是数字
function isNum(source) {
	removeErrorDiv(source, "*必须为数字");
	if (isNaN(source.value)) {
		createErrorDiv(source, "*必须为数字");
	}
}

function nullFormVal() {
	var inputs = document.getElementsByTagName("input");
	for ( var i = 0; i < inputs.length; i++) {
		var input = inputs[i];
		addEvent(input, "blur", function() {
			notNullText(this);
		});
	}
}

function nullVal(source) {
	removeErrorDiv(source, "*不能为空");
	if (source == null || source.value == "") {
		createErrorDiv(source, "*不能为空");
	}
}

function dateVal(source, infostr) {
	var value=source.value;
	if(value.length==0)
		return;
	var reg = /^(\d{4})(-)(\d{2})(-)(\d{2})$/;
	if (!reg.exec(source.value)) {
		createErrorDiv(source, infostr);
	}
}

/**
 * 含有中文验证
 * 
 */
function zhVal(source)
{
	return regVal(/[\u4E00-\u9FA5]|[\uFE30-\uFFA0]/gi,source,"*必须含有中文");
}
function pathVal(source,infostr)
{
	if(typeof(infostr)=="undefined"||infostr==null)
		infostr="路径不正确！";
	return regVal(/^[A-Za-z]:[\w]+$/i,source,infostr);
}
function ipVal(source,infostr)
{
	if(typeof(infostr)=="undefined"||infostr==null)
		infostr="IP地址格式不正确！";
	return regVal(/^(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$/,source,infostr);
}
/**
 * 正则表达验证
 * 
 * @param source
 *            源控件
 * @param infostr
 *            提示信息
 */
function regVal(regex,source,infostr)
{
	var value=source.value;
	if(value==""||value.length==0)// 为空不验证
	{
		removeErrorDiv(source,infostr);
		return false;
	}
	if (regex.test(value)) 
	{
		removeErrorDiv(source,infostr);
		return true;
	}
	else
	{
		createErrorDiv(source,infostr);
		return false ;
	}
}
/**
 * 必须是中文验证
 * 
 */
function zhVal(source)
{
	return regVal(/^[\u4E00-\u9FA5]+$/,source,"*必须是中文");
}

