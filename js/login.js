function togglePasswordVisibility(fieldId, iconId) {
    var field = document.getElementById(fieldId);
    var toggleIcon = document.getElementById(iconId);

    if (field.type === "password") {
        field.type = "text";
        toggleIcon.classList.remove("fa-eye");
        toggleIcon.classList.add("fa-eye-slash");
    } else {
        field.type = "password";
        toggleIcon.classList.remove("fa-eye-slash");
        toggleIcon.classList.add("fa-eye");
    }
}
function validateForm() {
    var email = document.valid.mail.value;
    var password = document.valid.password.value;

    // Email validation
    if (email === "") {
        document.querySelector('.null2').style.display = 'block';
        return false;
    } else if (!/\S+@\S+\.\S+/.test(email)) {
        document.querySelector('.valid1').style.display = 'block';
        return false;
    }
    else{
        document.querySelector('.null2').style.display = 'none';
        document.querySelector('.valid1').style.display = 'none';
    }

    var pattern = /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{8,}$/;
    // Password validation
    if (password === "") {
        document.querySelector('.null5').style.display = 'block';
        return false;
    } else if (!pattern.test(password)) {
        document.querySelector('.valid4').style.display = 'block';
        return false;
    }
    else{
        document.querySelector('.null5').style.display = 'none';
        document.querySelector('.valid4').style.display = 'none';
    }
    return true;
}