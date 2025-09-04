document.getElementById("loginBtn").addEventListener("click", function(event) {
    event.preventDefault();
    document.getElementById("loginModal").style.display = "block";
});

document.querySelector(".close").addEventListener("click", function() {
    document.getElementById("loginModal").style.display = "none";
});

document.getElementById("loginForm").addEventListener("submit", function(e) {
    e.preventDefault();
    var email = document.getElementById("email").value;
    var mobile = document.getElementById("mobile").value;

    fetch("Pages/Login.aspx", {
        method: "POST",
        headers: { "Content-Type": "application/x-www-form-urlencoded" },
        body: "email=" + encodeURIComponent(email) + "&mobile=" + encodeURIComponent(mobile)
    })
    .then(response => response.text())
    .then(data => {
        if (data === "success") {
            alert("Login Successful!");
    location.reload();
} else {
            alert("Invalid Credentials!");
}
});
});