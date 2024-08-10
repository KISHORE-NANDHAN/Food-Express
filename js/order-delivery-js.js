document.addEventListener('DOMContentLoaded', function () {
  // Your code here

  // For example:
  var orderedImage = sessionStorage.getItem('imageSrc');
  var ordered_h1 = sessionStorage.getItem('image_h1');
  var ordered_p = sessionStorage.getItem('image_p');
  var ordered_h2 = sessionStorage.getItem('image_h2');

  document.getElementById('order_img').src = orderedImage;
  document.getElementById('order_h1').innerText = ordered_h1;
  document.getElementById('order_p').innerText = ordered_p;
  document.getElementById('order_h2').innerText = ordered_h2;

  document.getElementById('order_h1_1').value = ordered_h1;
  
});

function validateForm() {
  var uname = document.register.uname.value;
  var phno = document.register.phno.value;
  var email = document.register.email.value;

  var dno = document.register.dno.value;
  var street = document.register.street.value;
  var city = document.register.city.value;
  var state = document.register.state.value;
  var zip = document.register.zip.value;

  var accno = document.register.accno.value;
  var cvv = document.register.cvv.value;
  var expr = document.register.expr.value;
  var acctype = document.register.acctype.value;

  // Username validation
  if (uname === "") {
      document.querySelector('.null1').style.display = 'block';
      return false;
  } else if (!/^[a-zA-Z_ ]+$/.test(uname)) {
      document.querySelector('.valid1').style.display = 'block';
      return false;
  }
  else{
      document.querySelector('.null1').style.display = 'none';
      document.querySelector('.valid1').style.display = 'none';
  }

  // Phone number validation
  if (phno === "") {
      document.querySelector('.null2').style.display = 'block';
      return false;
  } else if (!/^\d{10}$/.test(phno)) {
      document.querySelector('.valid2').style.display = 'block';
      return false;
  }
  else{
      document.querySelector('.null2').style.display = 'none';
      document.querySelector('.valid2').style.display = 'none';
  }

  
  // Email validation
  if (email === "") {
    document.querySelector('.null3').style.display = 'block';
    return false;
  } else if (!/\S+@\S+\.\S+/.test(email)) {
    document.querySelector('.valid3').style.display = 'block';
    return false;
  }
  else{
      document.querySelector('.null3').style.display = 'none';
      document.querySelector('.valid3').style.display = 'none';
  }


  if (dno === "") {
    document.querySelector('.null4').style.display = 'block';
    return false;
  } else if (!/^\d{2}-\d{2}\w$/.test(dno)) {
      document.querySelector('.valid4').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null4').style.display = 'none';
    document.querySelector('.valid4').style.display = 'none';
  }

  if (street === "") {
    document.querySelector('.null5').style.display = 'block';
    return false;
  } else if (!/^[a-zA-Z\s]+$/.test(street)) {
      document.querySelector('.valid5').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null5').style.display = 'none';
    document.querySelector('.valid5').style.display = 'none';
  }

  if (city === "") {
    document.querySelector('.null6').style.display = 'block';
    return false;
  } else if (!/^[a-zA-Z\s]+$/.test(city)) {
      document.querySelector('.valid6').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null6').style.display = 'none';
    document.querySelector('.valid6').style.display = 'none';
  }

  if (state === "") {
    document.querySelector('.null7').style.display = 'block';
    return false;
  } else if (!/^[a-zA-Z\s]+$/.test(state)) {
      document.querySelector('.valid7').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null7').style.display = 'none';
    document.querySelector('.valid7').style.display = 'none';
  }

  if (zip === "") {
    document.querySelector('.null8').style.display = 'block';
    return false;
  } else if (!/^\d{6}$/.test(zip)) {
      document.querySelector('.valid8').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null8').style.display = 'none';
    document.querySelector('.valid8').style.display = 'none';
  }

  if (accno === "") {
    document.querySelector('.null9').style.display = 'block';
    return false;
  } else if (!/^\d+$/.test(accno)) {
      document.querySelector('.valid9').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null9').style.display = 'none';
    document.querySelector('.valid9').style.display = 'none';
  }

  if (cvv === "") {
    document.querySelector('.null10').style.display = 'block';
    return false;
  } else if (!/^\d{3}$/.test(cvv)) {
      document.querySelector('.valid10').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null10').style.display = 'none';
    document.querySelector('.valid10').style.display = 'none';
  }

  if (expr === "") {
    document.querySelector('.null11').style.display = 'block';
    return false;
  } else if (!/^(0[1-9]|1[0-2])\/\d{2}$/.test(expr)) {
      document.querySelector('.valid11').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null11').style.display = 'none';
    document.querySelector('.valid11').style.display = 'none';
  }

  if (acctype === "") {
    document.querySelector('.null12').style.display = 'block';
    return false;
  } else if (!/^[a-zA-Z\s]/.test(acctype)) {
      document.querySelector('.valid12').style.display = 'block';
      return false;
  }
  else{
    document.querySelector('.null12').style.display = 'none';
    document.querySelector('.valid12').style.display = 'none';
  }
  return true;
}