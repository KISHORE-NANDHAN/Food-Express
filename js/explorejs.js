function details(imageId, descriptionId) {
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
    window.location.href = 'food-details.html';
  }


function search() {
	var searchTerm = document.getElementById("searchInput").value;
		if (searchTerm) {
			window.location.href = '#'+ searchTerm;
		}
}
  