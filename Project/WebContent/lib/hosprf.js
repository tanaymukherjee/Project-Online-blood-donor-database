function update()
{
	var b=document.HOS_PROFILE;
		
		if(b.semailid.value=="")
		{
		alert("Secondary Emailid is empty");
		return false;
		}
		if(b.semailid.value!="")
		{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   		var address = b.semailid.value;
   		if(reg.test(address) == false) 
			{
 		     		alert("Invalid  Secondary Email Address");
      				return false;
   			}
		}

		
		
		if(b.contactno.value=="")
		{
		alert("Contact Number is empty");
		return false;
		}
		

		}