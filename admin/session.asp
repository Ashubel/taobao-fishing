<%
	if session("uname")="" then
		response.Write("<script language='javascript'>")
		response.Write("if (top.location !== self.location) {")
		response.Write("top.location=self.location;")
		response.Write("}")
		response.Write("else{")
		response.Write("alert('��¼��ʱ�������µ�¼��');window.location.href='login.asp'")
		response.Write("}")
		response.Write("</script>")		
		response.end()	
	end if
%>
