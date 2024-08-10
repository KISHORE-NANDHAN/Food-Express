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
    var uname = document.register.uname.value;
    var email = document.register.mail.value;
    var phno = document.register.phno.value;
    var dob = document.register.date.value;
    var password = document.register.password.value;

    // Username validation
    if (uname === "") {
        document.querySelector('.null1').style.display = 'block';
        return false;
    } else if (!/^[a-zA-Z_ ]+$/.test(uname)) {
        document.querySelector('.length').style.display = 'block';
        return false;
    }
    else{
        document.querySelector('.null1').style.display = 'none';
        document.querySelector('.length').style.display = 'none';
    }

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

    // Phone number validation
    if (phno === "") {
        document.querySelector('.null3').style.display = 'block';
        return false;
    } else if (!/^\d{10}$/.test(phno)) {
        document.querySelector('.valid2').style.display = 'block';
        return false;
    }
    else{
        document.querySelector('.null3').style.display = 'none';
        document.querySelector('.valid2').style.display = 'none';
    }

    // Date of birth validation
    if (dob === "") {
        document.querySelector('.null4').style.display = 'block';
        return false;
    } else {
        var today = new Date();
        var selectedDate = new Date(dob);
        if (selectedDate >= today) {
            document.querySelector('.valid3').style.display = 'block';
            return false;
        }
        else{
            document.querySelector('.null4').style.display = 'none';
            document.querySelector('.valid3').style.display = 'none';
        }   
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

