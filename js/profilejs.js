function enableInput() {
    var elements = document.getElementsByClassName('id');

    // Loop through the collection of elements
    for (var i = 0; i < elements.length; i++)
    {
        var element = elements[i];
        element.disabled = false;
    }
}
function show()
{
    document.querySelector('.hideTable').style.display="block";
}
