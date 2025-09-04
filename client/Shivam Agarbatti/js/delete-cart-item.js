<script>
                                        function updateTotal(input) {
                                            let quantity = parseInt(input.value);
                                            let price = parseFloat(input.getAttribute('data-price'));
                                            let totalElement = input.closest('tr').querySelector('.total');
                                            let newTotal = quantity * price;
                                            totalElement.innerText = newTotal.toFixed(2);
                                        }
                                     </script>