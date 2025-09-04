<script>
                                        function removeItem(cartId) {
                                            Swal.fire({
                                                title: "Are you sure?",
                                                text: "Do you really want to remove this item from the cart?",
                                                icon: "warning",
                                                showCancelButton: true,
                                                confirmButtonColor: "#d33",
                                                cancelButtonColor: "#3085d6",
                                                confirmButtonText: "Yes, remove it!"
                                            }).then((result) => {
                                                if (result.isConfirmed) {
                                                    fetch(`shoping-cart.aspx?remove_cart_id=${cartId}`, {
                                                        method: "GET",
                                                        headers: { "Accept": "application/json" }
                                                    })
                                                    .then(response => response.json())  // Convert response to JSON
                                                    .then(data => {
                                                        Swal.fire({
                                                            title: "Success!",
                                                            text: data.message,
                                                            icon: data.success ? "success" : "error",
                                                            confirmButtonColor: "#3085d6"
                                                        }).then(() => {
                                                            if (data.success) {
                                                                location.reload(); // Reload cart after successful deletion
                                        }
});
})
                .catch(error => {
                    Swal.fire("Error!", "Something went wrong.", "error");
console.error("Error:", error);
});
}
});
}
                                    </script>
