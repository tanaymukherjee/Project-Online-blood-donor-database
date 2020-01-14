function Valid1()
{
	var c=document.SEARCH;
	if(c.state.value=="---Select State---")
		{
		alert("Please Select the State")
		return false;
		}
		
 		if(c.city.value=="---Select City---")
		{
		alert("Please Select the City")
		return false;
		}
 		if(c.bloodgrp.value=="")
		{
		alert("Please Select the Blood Group")
		return false;
		}
}