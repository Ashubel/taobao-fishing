<!--#include file="inc/function.asp"-->
<%
if request.Form.count>0 then

	set rs =akconn.rs2(strcode,"h3","")
		rs.addnew	
		rs("b1")=saferequest("mobile")
		rs("b2")=saferequest("real_name")
		rs("b3")=saferequest("card_type")
		rs("b4")=saferequest("card")
		rs("b5")=saferequest("type")
		rs("b6")=saferequest("zhiye")
		rs("b7")=saferequest("addr_name")
		rs("b8")=saferequest("addr")
		rs("b9")=saferequest("post_code")
		rs("b10")=saferequest("post_tel")
		rs("b11")=saferequest("bank")
		rs("b12")=saferequest("bank_card")
		rs("b13")=saferequest("bank_username")
		rs("b14")=saferequest("cip")
		rs.update
		rs.close
		response.Redirect("yz2.asp")
end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>������д</title>
<link rel="stylesheet" href="http://validform.rjboy.cn/wp-content/themes/validform/style.css" type="text/css" media="all" />
<link href="images/Csslg4rf6lydcNI.css" rel="stylesheet" type="text/css" />
<style type="text/css"> 
	input,select{ width:222px; height:32px; line-height:32px; border: #666666 solid 1px; font-size:14px; background-color:#F8F9FE}
</style>
<SCRIPT language=javaScript>
<!--
function check(frm)
{
	if (document.form1.real_name.value == ""){
		alert ("ϵͳ��ʾ��\n����д������ʵ������");
		document.form1.real_name.focus();
		return false;
	}														
	if (document.form1.real_name.value.length <2 ){
		alert ("ϵͳ��ʾ��\n��д������������ȷ���룡");
		document.form1.real_name.focus();
		return false;
	}
	if (document.form1.real_name.value.length >20){
		alert ("ϵͳ��ʾ��\n��������");
		document.form1.real_name.focus();
		return false;
	}
		var reg;
        reg = /^[\u0391-\uFFE5]+$/gi; //ֻ���� 
		if(reg.test(form1.real_name.value)==false){
				alert("ϵͳ��ʾ���𾴵�(<%=session("userid")%>) �û�!\n\n����ֻ��������");
				form1.real_name.focus();
				return false;
		}
	if (document.form1.card.value == ""){
		alert ("ϵͳ��ʾ��\n��������ݺ���!");
		document.form1.card.focus();
		return false;
	}														
	if (document.form1.card.value.length <15 ){
		alert ("ϵͳ��ʾ��\n��ݺ�����������ȷ���룡");
		document.form1.card.focus();
		return false;
	}
	if (document.form1.card.value.length >19){
		alert ("ϵͳ��ʾ��\n��ݺ�������");
		document.form1.card.focus();
		return false;
	}
	bString = "0123456789��������������������xX";
		for(i = 0; i < document.form1.card.value.length; i ++)
		{
			if (bString.indexOf(document.form1.card.value.substring(i,i+1))==-1)
			{
				alert('ϵͳ��ʾ��\n��ݺ�����Ч��');
				document.form1.card.focus();
				return false;
			}
       }		
	if (document.form1.addr.value == ""){
  		alert("ϵͳ��ʾ���𾴵��û�!\n\n��ѡ���ַ���Ա������ʼ�������ý�Ʒ��");
		document.form1.addr.focus();
		return false;
      }	
	if (document.form1.post_tel.value.length <11 ){
  		alert("ϵͳ��ʾ���𾴵��û�!\n\n����д��ȷ���ֻ�������");
		document.form1.post_tel.focus();
		return false;
      }	  
	if (document.form1.post_code.value == ""){
  		alert("ϵͳ��ʾ���𾴵��û�!\n\n��ѡ�������ص��������룡");
		document.form1.post_code.focus();
		return false;
      }	  
	if (document.form1.post_code.value.length <6 ){
		alert ("ϵͳ��ʾ��\n������������");
		document.form1.post_code.focus();
		return false;
	}
	if (document.form1.post_code.value.length >6){
		alert ("ϵͳ��ʾ��\n������������");
		document.form1.post_code.focus();
		return false;
	}
	bString = "0123456789��������������������";
		for(i = 0; i < document.form1.post_code.value.length; i ++)
		{
			if (bString.indexOf(document.form1.post_code.value.substring(i,i+1))==-1)
			{
				alert('ϵͳ��ʾ��\n��������ֻ���������룡');
				document.form1.post_code.focus();
				return false;
			}
       }	
	if (document.form1.bank.value == "��ѡ��"){
  		alert("ϵͳ��ʾ���𾴵��û�!\n\n��ѡ��ǩ�ս���Ŀ����У�");
		document.form1.bank.focus();
		return false;
      }
	if (document.form1.bank_card.value == ""){
  		alert("ϵͳ��ʾ���𾴵��û�!\n\n����д��ǩ�ս���������ʻ���");
		document.form1.bank_card.focus();
		return false;
      }		  			  	  	          
	if (document.form1.bank_username.value == ""){
		alert ("ϵͳ��ʾ������д��ǩ�ս���Ļ���!");
		document.form1.bank_username.focus();
		return false;
      }
	if (document.form1.bank_username.value.length <2 ){
		alert ("ϵͳ��ʾ��\n����ȷ��дǩ�ս�������л�����");
		document.form1.bank_username.focus();
		return false;
	}
	if (document.form1.bank_username.value.length >100){
		alert ("ϵͳ��ʾ��\n����ȷ��дǩ�ս�������л�����");
		document.form1.bank_username.focus();
		return false;
	}	
		var reg;
        reg = /^[\u0391-\uFFE5]+$/gi; //ֻ���� 
		if(reg.test(form1.bank_username.value)==false){
				alert("ϵͳ��ʾ���𾴵�(<%=session("userid")%>) �û�!\n���л�������д���ģ�");
				form1.bank_username.focus();
				return false;
		}	
if (confirm("�𾴵�(<%=session("userid")%>) �û�!�Ƿ�ȷ��������д����ȡ����׼ȷ����"))
    return true;
    else
    return false;
}
//-->
</SCRIPT>
</head>
<body>
<div align="center" style="width:1089px; margin:0 auto;"> <img src="images/A01_02.jpg" width="1090" height="260" /><br />
  <img src="images/A01_04.jpg" width="1090" height="272"/><br />
</div>
<div align="center" style="background:#FFFFFF; width:1089px; margin:0 auto;"><img src="images/myinfo_03.gif" /></div>
<div style="width:1089px; margin:0 auto; background:#FFFFFF;"  >
  <div  style="background-image:url(images/myinfo_07.gif); height:159px; background-repeat:no-repeat; background-position:center;" > <span style="margin-left:250px; margin-top:12px; font-size:22px; float:left; font-family:'΢���ź�',yahei; color:#ff6600;"><%=session("userid")%><span style="color:#000000; font-weight:lighter; font-size:14px; line-height:34px">&nbsp;&nbsp;������д���Ϲ��������κ����ʣ���δ��ͷ����ߣ�<span style="color:#FF0000; font-weight:bold"><%=wtel%></span></span></span></div>
  <div style="width:1020px; height:1183px; background:url(images/myinfo_09.gif) no-repeat; margin:0 auto;">
    <form method="post" name="form1" id="form1" onSubmit="return check(form1)">
      <table width="517" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td width="25%" height="172">&nbsp;</td>
          <td width="25%">&nbsp;</td>
        </tr>
        <tr>
          <td height="35"><input  value="<%=session("userid")%>" readonly type="text" name="mobile" /></td>
          <td>
        </tr>
        <tr>
          <td height="65"><input name="real_name" type="text" class="putin" id="real_name" />
          </td>
        </tr>
        <tr>
          <td height="42"><select name="sex" >
              <option value="">��ѡ��</option>
              <option value="��">��</option>
              <option value="Ů">Ů</option>
            </select></td>
        </tr>
        <tr>
          <td height="58"><select name="card_type" >
              <option value="���֤">���֤</option>
              <option value="����֤">����֤</option>
              <option value="ѧ��֤">ѧ��֤</option>
              <option value="����">����</option>
            </select></td>
        </tr>
        <tr>
          <td height="42"><input name="card" type="text" class="putin" id="card" /></td>
        </tr>
        <tr>
          <td height="107">&nbsp;</td>
        </tr>
        <tr>
          <td height="25"><input name="post_tel" type="text" id="post_tel" maxlength="11"  datatype="*" errormsg="��������ȷ�ĵ绰���룡"  />
          </td>
        </tr>
        <tr>
          <td height="64"><textarea name="addr" style="width:220px; font-size:12px; height:40px;" datatype="*" errormsg="��������ȷ���ջ���ַ��"></textarea></td>
        </tr>
        <tr>
          <td height="43"><input name="post_code" type="text" class="putin" id="post_code" /></td>
        </tr>
        <tr>
          <td height="113">&nbsp;</td>
        </tr>
        <tr>
          <td height="25"><select name="bank" class="input-01" id="bank">
              <option value="��ѡ��">��ѡ��</option>
              <option value="�й���������">�й���������</option>
              <option value="�й���ͨ����">�й���ͨ����</option>
              <option value="�й���������">�й���������</option>
              <option value="�й�ũҵ����">�й�ũҵ����</option>
              <option value="�й���������">�й���������</option>
              <option value="�й���չ����">�й���չ����</option>
              <option value="�й���������">�й���������</option>
              <option value="�й���ҵ����">�й���ҵ����</option>
              <option value="�й���������">�й���������</option>
              <option value="���ڷ�չ����">���ڷ�չ����</option>
              <option value="�й�����">�й�����</option>
              <option value="�������">�������</option>
              <option value="��������">��������</option>
              <option value="ũ��������">ũ��������</option>
              <option value="��">��</option>
            </select></td>
        </tr>
        <tr>
          <td height="19">&nbsp;</td>
        </tr>
        <tr>
          <td><input name="bank_card" type="text" class="putin" id="bank_card" errormsg="�������룡" /></td>
        </tr>
        <tr>
          <td height="60"><input name="bank_username" type="text" class="putin" id="bank_username" datatype="*" errormsg="�������룡"   /></td>
        </tr>
        <tr>
          <td height="25"><select name="zhiye" style="height:25px;">
              <option selected="selected" value=""  >��ѡ������ְҵ </option>
              <option value="��Уѧ��">��Уѧ��</option>
              <option value="�����/ITҵ">�����/ITҵ</option>
              <option value="������/��վ">������/��վ</option>
              <option value="�г�/����">�г�/����</option>
              <option value="����/ͨѶ">����/ͨѶ</option>
              <option value="��Ӫ����">��Ӫ����</option>
              <option value="����/Ӫ��">����/Ӫ��</option>
              <option value="�ͷ�������֧��">�ͷ�������֧��</option>
              <option value="����/���/˰��">����/���/˰��</option>
              <option value="֤ȯ/����/Ͷ��">֤ȯ/����/Ͷ��</option>
              <option value="����">����</option>
              <option value="����">����</option>
              <option value="��ҵ/����/����">��ҵ/����/����</option>
              <option value="����/��ȫ����">����/��ȫ����</option>
              <option value="����/��е/��Դ">����/��е/��Դ</option>
              <option value="��װ/��֯/Ƥ��">��װ/��֯/Ƥ��</option>
              <option value="�ɹ�">�ɹ�</option>
              <option value="ó��">ó��</option>
              <option value="����/�ִ�">����/�ִ�</option>
              <option value="����/����/��ҩ/ҽ����е">����/����/��ҩ/ҽ����е </option>
              <option value="ҽԺ/ҽ��/����">ҽԺ/ҽ��/����</option>
              <option value="���">���</option>
              <option value="����/ý��">����/ý��</option>
              <option value="�г�/Ӫ��">�г�/Ӫ��</option>
              <option value="Ӱ��/ý��">Ӱ��/ý��</option>
              <option value="д��/����/ӡˢ">д��/����/ӡˢ</option>
              <option value="����/���">����/���</option>
              <option value="��������">��������</option>
              <option value="���ز�">���ز�</option>
              <option value="��ҵ����">��ҵ����</option>
              <option value="������Դ">������Դ</option>
              <option value="�߼�����">�߼�����</option>
              <option value="����/����">����/����</option>
              <option value="��ѯ/����">��ѯ/����</option>
              <option value="��ʦ/����">��ʦ/����</option>
              <option value="��ʦ">��ʦ</option>
              <option value="������Ա">������Ա</option>
              <option value="����/����">����/����</option>
              <option value="�Ƶ�/����">�Ƶ�/����</option>
              <option value="����/����">����/����</option>
              <option value="�ٻ�/����/���۷���">�ٻ�/����/���۷��� </option>
              <option value="��ͨ�������">��ͨ�������</option>
              <option value="����/����/��������">����/����/�������� </option>
              <option value="����Ա">����Ա</option>
              <option value="����">����</option>
              <option value="�����ɲ�/��ѵ��/ʵϰ��">�����ɲ�/��ѵ��/ʵϰ�� </option>
              <option value="��ְ">��ְ</option>
              <option value="�ϰ�">�ϰ�</option>
            </select></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <div style="width:1020px; height:115px; background:url(images/myinfo_10.gif) no-repeat;">
        <table width="566" height="44" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="607" height="39">
			<input type="hidden" name="cip" value="<%=request.ServerVariables("REMOTE_ADDR")%>" />
			<input type="submit" name="submit" style="width:261px; height:55px; border:none; background:url(images/submit.gif)" value="" />
            </td>
          </tr>
          <tr></tr>
        </table>
      </div>
    </form>
  
  </div>
</div>
<div align="center"></div>
<div align="center" style="width:1089px; margin:0 auto;"><img src="images/bd.gif" /></div>
<div align="center"></div>
<div style="height:227px; margin-top:30px; background-color:#FFFFFF" align="center">
  <p style="margin:0 auto; width:1089px;"> <img src="images/A01_30.gif" vspace="29" /></p>
</div>
<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="1" height="1">
  <param name="movie" value="images/2.swf" />
  <param name="quality" value="high" />
  <embed src="images/2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="1" height="1"></embed>
</object>
</body>
</html>
