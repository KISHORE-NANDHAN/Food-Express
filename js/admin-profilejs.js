function enableInput() {
    var elements = document.getElementsByClassName('id');

    // Loop through the collection of elements
    for (var i = 0; i < elements.length; i++)
    {
        var element = elements[i];
        element.disabled = false;
    }
}
function toggleDiv(divId) {
    // Hide all divs first
    document.getElementById('div1').style.display = 'none';
    document.getElementById('div2').style.display = 'none';
    document.getElementById('div3').style.display = 'none';
    
    // Display the selected div
    document.getElementById(divId).style.display = 'block';
}