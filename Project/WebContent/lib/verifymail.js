function verifyEmail()
{

 var email=document.form.userid;
 var pass=document.form.password.value;
 var emailRegEx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
 var passRegEx=/^[A-Za-z0-9!@#$%^&*()_]{6,20}$/;
 var errormssg="";
   
  if(!email.value.match(emailRegEx))
   {

    errormssg+="Please enter a valid email\n";
   }

  if(!pass.match(passRegEx))
   {

     errormssg+="Please enter a valid password";
    }

  if(errormssg!="")
   {

   alert(errormssg);

   return false;
   }

  return true;
}