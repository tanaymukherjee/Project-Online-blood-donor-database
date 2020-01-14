function verifyEmail1()
{

var a=document.FORGOTPASS;
		if(a.emailid1.value=="")
		{
		alert("Email is empty")
		return false;
		}
		if(a.emailid1.value!="")
		{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   		var address = a.emailid1.value;
   		if(reg.test(address) == false) 
			{
 		     		alert('Invalid Email Id');
      				return false;
   			}
		}
}