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
