function Valid()
{
	var a=document.Donor_Registration;
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
 		     		alert('Invalid Email Address');
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
		if(a.password.value!=a.repassword.value)
		{
			alert("Password is not Same")
			return false;
		}
		
		if(a.gender.checked=="")
		{
		alert("Please Select the Gender")
		return false;
		}

		if(a.bloodgroup.value=="select")
		{
		alert("Please Select the Blood Group")
		return false;
		}
		if(a.date.value=="dd")
		{
		alert("Please Select the Date")
		return false;
		}
		if(a.month.value=="mm")
		{
		alert("Please Select the Month")
		return false;
		}
		if(a.year.value=="yyyy")
		{
		alert("Please Select the Year")
		return false;
		}
		
		if(a.mobno.value=="")
		{
		alert("Mobile no is empty")
		return false;
		}
		if(a.mobno.value!="")
		{	
			var conRegEx=/^([0-9]{10})$/;
			var con=a.mobno.value;
			if(conRegEx.test(con)==false)
			{
				alert("Contact Number is not valid")
				return false;
			}
		}
		


		if(a.state1.value=="")
		{
		alert("Please Select the State")
		return false;
		}
		
 		if(a.city1.value=="")
		{
		alert("Please Select the City")
		return false;
		}
 		
		if(a.pincode.value=="")
		{
		alert("pincode is empty")
		return false;
		}
						
		if(a.address.value=="Type your residential address here")
		{
		alert("Address is empty")
		return false;
		}
	
		if(a.answer.value=="..Answer..")
		{
		alert("Please Select the How often have you donated blood in the past?")
		return false;
		}
		if(!ValidCaptcha())
			{
			DrawCaptcha();
			return false;
			}

		if(a.agrrement.checked=="")
		{
			alert("Select Checkbox")
			return false;
		}
		
		
		
		
}


function DrawCaptcha()
{
        var a = Math.ceil(Math.random() * 10)+ '';
        var b = Math.ceil(Math.random() * 10)+ '';       
        var c = Math.ceil(Math.random() * 10)+ '';  
        var d = Math.ceil(Math.random() * 10)+ '';  
        var e = Math.ceil(Math.random() * 10)+ '';  
        var f = Math.ceil(Math.random() * 10)+ '';  
        var g = Math.ceil(Math.random() * 10)+ '';  
        var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f + ' ' + g;
        document.getElementById("txtCaptcha").value = code
}


function removeSpaces(string)
{
return string.split(' ').join('');
}

function ValidCaptcha()
{
        var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
        var str2 = removeSpaces(document.getElementById('txtInput').value);
        if (str1 == str2) return true;        
        return false;
}


