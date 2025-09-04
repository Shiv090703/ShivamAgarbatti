
$(document).ready(function () {
    setTimeout(function () {
        if ($(".product__discount__slider .item").length > 0) { // Ensure items exist
            $(".product__discount__slider").owlCarousel({
                loop: true,
                margin: 10,
                dots: true,
                autoplay: true,
                autoplayTimeout: 3000,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 2
                    },
                    1000: {
                        items: 3
                    }
                }
            });
        }
    }, 500);  // Delay to ensure DataList loads before initializing
});


