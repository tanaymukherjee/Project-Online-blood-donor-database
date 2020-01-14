function pass()
{
	var a=document.DONORPASS;
		
		if(a.newpassword.value=="")
		{
		alert("Password is empty");
		return false;
		}
		if(a.newpassword.value!="")
		{
			var passRegEx=/^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
			var pass=a.newpassword.value;
			if(passRegEx.test(pass)==false)
			{
				alert("Password is not valid");
				return false;	
			}
		}
		if(a.newpassword.value!=a.renewpassword.value)
		{
			alert("Password is not Same");
			return false;
		}
		
	}