document.addEventListener("DOMContentLoaded", function() {
    const zodiacLabel = document.getElementById("lblZodiacSign");
    const fragranceLabel = document.getElementById("lblFragrance");

    function activateGlow() {
        zodiacLabel.classList.add("active");
        fragranceLabel.classList.add("active");

        setTimeout(() => {
            zodiacLabel.classList.remove("active");
        fragranceLabel.classList.remove("active");
    }, 3000);
}

    document.getElementById("Button1").addEventListener("click", function() {
        setTimeout(activateGlow, 500);
    });
});
