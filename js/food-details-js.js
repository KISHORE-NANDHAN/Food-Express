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

  
});
function order(imageId, descriptionId) {
  var imageSrc = document.getElementById(imageId).querySelector('img').src;
  var image_h1 = document.getElementById(descriptionId).querySelector('h1').innerText;
  var image_p = document.getElementById(descriptionId).querySelector('p').innerText;
  var image_h2 = document.getElementById(descriptionId).querySelector('h2').innerText;

  // Save image details to sessionStorage
  sessionStorage.setItem('imageSrc', imageSrc);
  sessionStorage.setItem('image_h1', image_h1);
  sessionStorage.setItem('image_p', image_p);
  sessionStorage.setItem('image_h2', image_h2);

  // Navigate to the order page
  window.location.href = 'order-delivery.html';
}
  