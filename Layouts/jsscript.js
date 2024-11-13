document.addEventListener('DOMContentLoaded', function () {  
    console.log('jsscript.js is running');

    const password = document.getElementById("password");
    const togglePassword = document.getElementById("togglePassword");
    if (togglePassword && password) {
        console.log('togglePassword and password elements not found')
        togglePassword.addEventListener("click", () => {
        if (password.type === "password") {
        password.type = "text";
        togglePassword.classList.add("fa-eye-slash");
    } else {
        password.type = "password";
        togglePassword.classList.remove("fa-eye-slash")
    }
});
}else {
        console.error('Elements not found for togglePassword or password.');
    }



{/* <i class="fas fa-eye-slash"></i> */ }

// const fname = document.getElementById("first-name");
// const lname = document.getElementById("last-name");
// const email = document.getElementById("email");
// const password = document.getElementById("password");

const inputform = document.querySelectorAll('.inputform');

inputform.forEach((input) => {
    input.addEventListener("invalid", () => {
        console.log("invalid");
        if (input.value == '') {
            input.nextElementSibling.classList.add("show");
            input.classList.add("inputbox");
        }
    });

    input.addEventListener('blur', (event) => {
        if (input.checkValidity()) {
            input.classList.remove("inputbox");
            input.nextElementSibling.classList.remove("show");
        }
    });

    input.addEventListener('focus', () => {
        input.classList.remove("inputbox");
        input.nextElementSibling.classList.remove("show");
    });
    });
    console.log('JavaScript loaded successfully.');



});
