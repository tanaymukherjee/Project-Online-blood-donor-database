function Valid()
{
	var a=document.FEEDBACK;
		if(a.firstname.value=="")
		{
		alert("First Name is empty")
		return false;
		}
		if(a.lastname.value=="")
		{
		alert(" Last Name is empty")
		return false;
		}
		
		if(a.validemailid.value=="")
		{
		alert("Email is empty")
		return false;
		}
		if(a.validemailid.value!="")
		{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   		var address = a.validemailid.value;
   		if(reg.test(address) == false) 
			{
 		     		alert('Invalid User Id');
      				return false;
   			}
		}
		if(a.password.value=="")
		{
		alert("Password. is empty")
		return false;
		}
		if(a.password.value!="")
		{
			var passRegEx=/^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
			var pass=a.password.value;
			if(passRegEx.test(pass)==false)
			{
				alert("Password is not valid")
				return false;	
			}
		}
		
		if(a.story.value=="")
		{
		alert(" Story is empty")
		return false;
		}
		
		if(a.agrrement.checked=="")
		{
		alert(" Select Checkbox")
		return false;
		}
}