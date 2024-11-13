function AppendElements(){
    var div = document.createElement('div'); 
    var section= document.createElement('section');
    var form=document.createElement('form');

    div.style.height = '100px'; 
    div.style.width = '500px'; 
    div.innerHTML=`<div class="hdr-box">
          <p><span>Authentification</span></p>
        </div>`;
   

    form.innerHTML=`
              <div class="firstname input-css" style="align-items: center;
    justify-content: center;">
                <input type="text" name="fname" id="first-name" class="inputform" placeholder="Enter First Name"
                  required />
                <p class="incorrect"><em>First Name cannot be empty</em></p>
              </div>

              <div class="lastname input-css">
                <input type="text" name="lname" id="last-name" class="inputform" placeholder="Enter Last Name"
                  required />
                <p class="incorrect"><em>Last Name cannot be empty</em></p>
              </div>

              <div class="email-address input-css">
                <input type="email" name="email" id="email" class="inputform" placeholder="Enter Email Address"
                  required />
                <p class="incorrect"><em>Looks like this is not an email</em></p>
              </div>

              <div class="password input-css">
                <i class="far fa-eye" id="togglePassword"></i>
                <input type="password" name="password" id="password" class="inputform" placeholder='Enter Password'
                  required autocomplete="on" />
                <p class="incorrect"><em>Password cannot be empty</em></p>
              </div>
              <!-- <div class=></div> -->
              <!-- <i class="fas fa-eye-slash"></i> -->
              <div class="submit-btn">
                <button type="submit" name="sign-in-info" class="signinsubmit">Se connecter</button>
              </div>`;


    controlAddIn.appendChild(div); 
    controlAddIn.appendChild(section);
    controlAddIn.appendChild(form);

    form.addEventListener("submit",  (e) => {
        e.preventDefault();
        var userValue = document.getElementById('email').value; 
        var passwordValue = document.getElementById('password').value; 
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod("OnLoginBtnClicked",[userValue, passwordValue]);
    }); 
}
function insertDataIntoInterface() {
   data.forEach(item => {
       console.log('first-name:', item.first-name, 'last-name:', item.last-name, 'Email:', item.Email,'Password:',item.Password);
       controlAddIn.insertDataIntoInterface(data)
   });}

