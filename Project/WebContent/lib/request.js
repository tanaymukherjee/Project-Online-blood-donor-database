function Valid2()
{
	var a=document.Blood_Request;
		
    if(!Validrequestid())
	{
	Drawrequestid();
	return false;
	}
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
		if(a.dddob.value=="dd")
		{
		alert("Please Select the Date")
		return false;
		}
		if(a.mmdob.value=="mm")
		{
		alert("Please Select the Month")
		return false;
		}
		if(a.yydob.value=="yyyy")
		{
		alert("Please Select the Year")
		return false;
		}
		
		if(a.mob_no.value=="")
		{
		alert("Mobile no is empty")
		return false;
		}
		if(a.mob_no.value!="")
		{	
			var conRegEx=/^([0-9]{10})$/;
			var con=a.mob_no.value;
			if(conRegEx.test(con)==false)
			{
				alert("Mobile Number is not valid")
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
		alert("City is empty")
		return false;
		}
		if(a.hname.value=="")
		{
		alert("Hospital Name is empty")
		return false;
		} 		


					
		if(a.address.value=="Type your residential address here")
		{
		alert("Patient's Address is empty")
		return false;
		}
		if(a.address2.value=="Type location of the hospital")
		{
		alert("Hospital Address is empty")
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


function DrawCaptcha1()
{
        var a = Math.ceil(Math.random() * 10)+ '';
        var b = Math.ceil(Math.random() * 10)+ '';       
        var c = Math.ceil(Math.random() * 10)+ '';  
        var d = Math.ceil(Math.random() * 10)+ '';  
       var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d;
        document.getElementById("reqid").value = code
}

function removeSpaces1(string)
{
return string.split(' ').join('');
}

function Validrequestid()
{
        var str1 = removeSpaces1(document.getElementById('reqid').value);
        if (str1 == null) return false;        
        return true;
}
