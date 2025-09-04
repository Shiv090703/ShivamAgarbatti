<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="Dasbord_pages_samples_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="~/styles/productlist.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        /* General Styles */
        .product-list-container {
            font-family: Arial, sans-serif;
            padding: 20px;
            border-radius: 8px;
            max-width: 90%;
            margin: 20px auto;
        }

        /* Page Title */
        .product-list-title {
            text-align: center;
            color: #333;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Search and Filter Section */
        .product-list-filter {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
            background: white;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        /* Labels */
        .product-list-label {
            font-weight: bold;
            color: #555;
        }

        /* Input Fields */
        .product-list-searchbox,
        .product-list-dropdown {
            padding: 10px;
            width: 220px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        /* GridView Table Styling */
        .product-list-table {
            width: 100%;
            color: #000 !important;
            margin: 20px auto;
            border-collapse: collapse;
        }

            .product-list-table th, .product-list-table td {
                border: 1px solid #ddd;
                padding: 12px;
                text-align: center;
                font-size: 16px;
            }

            .product-list-table th {
                background-color: #007bff;
                color: white;
            }

            .product-list-table td img {
                width: 50px;
                height: auto;
                border-radius: 5px;
            }

        /* Button Styles */
        .product-list-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            border-radius: 4px;
            cursor: pointer;
            white-space: nowrap;
        }

            .product-list-btn:hover {
                background-color: #218838;
            }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .product-list-filter {
                flex-direction: column;
                max-width: 100%;
                text-align: center;
            }

            .product-list-searchbox, .product-list-dropdown {
                width: 100%;
            }

            .product-list-table {
                width: 100%;
            }
        }

        /* General Styles */
        .product-update-container {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 20px auto;
        }

        /* Page Title */
        .product-update-title {
            text-align: center;
            color: #333;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Labels */
        .product-update-label {
            display: block;
            font-weight: bold;
            color: #555;
            margin-top: 10px;
        }

        /* Input Fields */
        .product-update-input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        /* File Upload Styling */
        .file-upload {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-top: 10px;
        }

        .product-update-file {
            display: none;
        }

        .upload-btn {
            background-color: #007bff;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
        }

        .file-name {
            font-size: 14px;
            color: #333;
        }

        /* Image Preview */
        .product-update-img-preview {
            width: 100px;
            height: auto;
            border-radius: 5px;
            margin-top: 10px;
        }

        /* Toggle Switch */
        .toggle-switch {
            position: relative;
            width: 50px;
            height: 25px;
        }

            .toggle-switch input {
                opacity: 0;
                width: 0;
                height: 0;
            }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: .4s;
            border-radius: 25px;
        }

            .slider:before {
                position: absolute;
                content: "";
                height: 18px;
                width: 18px;
                left: 4px;
                bottom: 3px;
                background-color: white;
                transition: .4s;
                border-radius: 50%;
            }

        input:checked + .slider {
            background-color: #4CAF50;
        }

            input:checked + .slider:before {
                transform: translateX(24px);
            }

        /* Update Button */
        .product-update-btn {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 12px 16px;
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            border-radius: 4px;
            cursor: pointer;
            display: block;
            margin: 20px auto 0;
        }

        .delete-btn {
            background-color: #dc3545;
        }

            .delete-btn:hover {
                background-color: #c82333;
            }



        .product-update-btn:hover {
            background-color: #218838;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .product-update-container {
                max-width: 100%;
                padding: 15px;
            }
        }
    </style>
    <script>
        function confirmDelete(btn) {
            Swal.fire({
                title: "Are you sure?",
                text: "This product will be permanently deleted!",
                icon: "warning",
                showCancelButton: true,
                confirmButtonColor: "#d33",
                cancelButtonColor: "#3085d6",
                confirmButtonText: "Yes, delete it!"
            }).then((result) => {
                if (result.isConfirmed) {
                    __doPostBack(btn.name, ""); // Triggers ASP.NET delete function
        }
        });

        return false; // Prevents default postback
        }
    </script>

    <div class="product-list-container">
        <h2 class="product-list-title">Product List</h2>

        <!-- Search and Filter Section -->
        <div class="product-list-filter">
            <div class="row">
                <div class="col-12 d-flex flex-column justify-content-center align-items-center">
                    <asp:Label ID="lblSearch" runat="server" Style="text-align: center;" CssClass="product-list-label text-center" Text="Search by Name:"></asp:Label>
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="product-list-searchbox form-control my-3 w-100" AutoPostBack="true" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>

                </div>
                <div class="col-6">
                    <asp:Label ID="lblCategory" runat="server" CssClass="product-list-label" Text="Category:"></asp:Label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="product-list-dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    </asp:DropDownList>


                </div>
                <div class="col-6">
                    <asp:Label ID="lblSubCategory" runat="server" CssClass="product-list-label" Text="Subcategory:"></asp:Label>
                    <asp:DropDownList ID="ddlSubCategory" runat="server" CssClass="product-list-dropdown" AutoPostBack="true" OnSelectedIndexChanged="ddlSubCategory_SelectedIndexChanged">
                    </asp:DropDownList>
                </div>
            </div>

        </div>

        <!-- GridView for Product List -->
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" CssClass="product-list-table"
            AllowPaging="True" PageSize="5" OnPageIndexChanging="gvProducts_PageIndexChanging"
            OnRowCommand="gvProducts_RowCommand">
            <Columns>
                <asp:BoundField DataField="product_Id" HeaderText="ID" />
                <asp:BoundField DataField="product_name" HeaderText="Product Name" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="quantity_available" HeaderText="Stock" />
                <asp:ImageField DataImageUrlField="product_photo" HeaderText="Photo" ControlStyle-Width="50px" />


                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update"
                            CommandName="UpdateProduct"
                            CommandArgument='<%# Eval("product_Id") %>'
                            CssClass="product-list-btn" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete"
                            CommandName="DeleteProduct"
                            CommandArgument='<%# Eval("product_Id") %>'
                            CssClass="product-list-btn delete-btn"
                            OnClientClick="return confirmDelete(this);" />

                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
