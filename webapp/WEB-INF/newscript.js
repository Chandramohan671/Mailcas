function validateTextBox()
           {
            
            var box1=document.getElementById("user");
            var comp=/[_a-zA-Z]+/
             
            if(box1.value=="" || box1.value.match(comp))
            {
                  if(box1.value=="")
                  {
                        alert("fill the user id field");
						
                        return false;
                  }
                  else{
                        alert("fill the correct user id which have used during sign up process");
                        return false;
                  }
             }  
              
           var box2=document.getElementById("authe");
            if(box2.value=="")
             {
               alert("fill the authentication id which have used during sign up process");
               return false;
            }          
        }
	function validateLogin()
            {             
             var box1=document.getElementById("email");
             var comp=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(.casa)*$/              
             if(box1.value=="" || box1.value.match(comp))
             {
                   if(box1.value=="")
                   {
                        alert("fill the email id field");
                        return false;
                   }
              }  
              else
              {
                    alert("fill the correct email id which have domain as casa  (eg : arun@gmail.casa)");
                    return false;
              }              
             var box2=document.getElementById("pass").value;
          //  var test=/^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&-+=()])(?=\\S+$).{8, 14}$/
             if(box2=="")
              {  
                 alert("fill the password");
                 return false;                 
             } 
             else{
                   if(box2.length<8)
                   {
                   alert("Your Password must contain atleast eight characters ");
                   return false;
                   }
                   else{
                         return true;
                   }
            }        
      }          
function validateSignUp()
      {
            var box1=document.getElementById("name");               
            if(box1.value=="")
      {
            alert("fill the name field");
			document.myform.uname.focus();
            return false;              
		}  
            
            var box2=document.getElementById("email");
            var sigcmp=/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(.casa)*$/
            if(box2.value=="" || box2.value.match(sigcmp))
      {
      if(box2.value=="")
      {
            alert("fill the email id field");
            return false;
      }
      }  
      else
      {
            alert("fill the correct email id which have domain as casa  (eg : arun@gmail.casa)");
			document.myform.email.focus();
            return false;
      }

      var box3=document.getElementById("word").value;
      if(box3=="")
      {  
            alert("fill the password");
            return false;
            
      } 
      else{
            if(box3.length<8)
            {
            alert("Your Password must contain atleast eight characters ");
            return false;
            }
      }

      var box4=document.getElementById("confirm").value;
      if(box4=="")
      {  
            alert("fill the confirm password field");
            return false;
            
      } 
      else{
      if(box4!=box3)
      {
            alert("Confirm Password does not matched correctly");
			document.myform.confirmpass.focus();
            return false;
      }
      }

      var box5=document.getElementById("user").value;
      if(box5=="")
      {  
            alert("fill the user id field");
            return false;
      }       
   }