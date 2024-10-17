// Toggle the visibility of the 'more-content' section when button is clicked
function toggleContent(button) {
    const moreContent = button.nextElementSibling;
    if (moreContent.style.display === "none" || !moreContent.style.display) {
        moreContent.style.display = "block";
        button.innerText = "Show less";
    } else {
        moreContent.style.display = "none";
        button.innerText = "Show more";
    }
}
