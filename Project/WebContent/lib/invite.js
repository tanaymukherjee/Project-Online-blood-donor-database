function Valid4()
{
	var a=document.INVITEFRIEND
	if(a.name.value=="")
		{
		alert("Name is empty")
		return false;
		}
	  if(a.id.value=="")
 	 {
	 alert(" Email id is empty")
	 return false;
	 }
		
		
		if(a.id.value!="")
		{
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
   		var address = a.id.value;
   		if(reg.test(address) == false) 
			{
 		     		alert('Invalid Email Address');
      				return false;
   			}
		}
		if(a.name1.value=="")
		{
		alert("First Name is empty")
		return false;
		}
		 if(a.id1.value=="")
	 	 {
		 alert(" First Email id is empty")
		 return false;
		 }
			
			
			if(a.id1.value!="")
			{
			var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	   		var address = a.id1.value;
	   		if(reg.test(address) == false) 
				{
	 		     		alert('Invalid  First Email Address');
	      				return false;
	   			}
			}
			if(a.name2.value!="")
		 	 {
				 if(a.id2.value=="")
			 	 {
				 alert(" Second Email id is empty")
				 return false;
				 }
				 }
					if(a.id2.value!="")
					{
						if(a.name2.value=="")
						{
						alert("Second Name is empty")
						return false;
						}
					}
					
					if(a.id2.value!="")
					{
					var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			   		var address = a.id2.value;
			   		if(reg.test(address) == false) 
						{
			 		     		alert('Invalid  Second Email Address');
			      				return false;
			   			}
					}
			 
			
		
			if(a.name3.value!="")
		 	 {
				
				if(a.name2.value=="")
				{
				alert("Second Name is empty")
				return false;
				}
				if(a.id2.value=="")
			 	 {
				 alert(" Second Email id is empty")
				 return false;
				 }
				
				 if(a.id3.value=="")
			 	 {
				 alert(" Third Email id is empty")
				 return false;
				 }
					
		 	 }		
				
			
			if(a.id3.value!="")
					{
						
						
						if(a.name2.value=="")
						{
						alert("Second Name is empty")
						return false;
						}
						if(a.id2.value=="")
					 	 {
						 alert(" Second Email id is empty")
						 return false;
						 }
					var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			   		var address = a.id3.value;
			   		if(reg.test(address) == false) 
						{
			 		     		alert('Invalid Third Email Address');
			      				return false;
			   			}
					}
			 
			
		
			if(a.name4.value!="")
		 	 {
				if(a.name3.value=="")
				{
				alert("Third Name is empty")
				return false;
				}
				
				
				if(a.id3.value=="")
			 	 {
				 alert(" Third Email id is empty")
				 return false;
				 }
				 if(a.id4.value=="")
			 	 {
				 alert(" Fourth Email id is empty")
				 return false;
				 }
		 	 }
					
					if(a.id4.value!="")
					{
						
						if(a.name3.value=="")
						{
						alert("Third Name is empty")
						return false;
						}
						
						
						if(a.id3.value=="")
					 	 {
						 alert(" Third Email id is empty")
						 return false;
						 }
						
					var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			   		var address = a.id4.value;
			   		if(reg.test(address) == false) 
						{
			 		     		alert('Invalid Fourth Email Address');
			      				return false;
			   			}
					}
			 
			if(a.id4.value!="")
			{
				
				
				if(a.name4.value=="")
				{
				alert("Fourth Name is empty")
				return false;
				}
			}
}