/**
 * 
 */
// scripts.js

function showPopup() {
    var modal = document.getElementById("paymentSuccessModal");
    modal.style.display = "block";
}

function closePopup() {
    var modal = document.getElementById("paymentSuccessModal");
    modal.style.display = "none";
}

// Close the modal when the user clicks anywhere outside of the modal
window.onclick = function(event) {
    var modal = document.getElementById("paymentSuccessModal");
    if (event.target == modal) {
        modal.style.display = "none";
    }
}