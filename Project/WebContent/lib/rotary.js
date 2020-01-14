function check()
{
		var b=document.Rotary_Registration;
		if(b.hname.value=="")
		{
		alert("Rotary Club Name is empty");
		return false;
		}
		if(b.vpemailid.value=="")
		{
		alert(" Primary Email is empty");
		return false;
		}
		if(b.vpemailid.value!="")
		{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   		var address = b.vpemailid.value;
   		if(reg.test(address) == false) 
			{
 		     		alert("Invalid Primary Email Address");
      				return false;
   			}
		if(b.contactno.value=="")
		{
		alert("Contact Number is empty")
		return false;
		}
		if(b.state1.value=="")
		{
		alert("Please Select the State")
		return false;
		}
		
 		if(b.city1.value=="")
		{
		alert("City is empty")
		return false;
		}
 		
		if(b.pincode.value=="")
		{
		alert("pincode is empty")
		return false;
		}
				
		if(b.address.value=="Type location of the Rotary Club")
		{
		alert("Address is empty")
		return false;
		}
	
			
		
		if(!ValidCaptcha())
		{
		DrawCaptcha();
		return false;
		}
		if(b.agrrement.checked=="")
		{
			alert("Select Checkbox")
			return false;
		}
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


