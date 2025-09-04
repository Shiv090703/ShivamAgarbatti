<%@ Page Title="" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductUpdate.aspx.cs" Inherits="Dasbord_pages_samples_ProductUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 20px;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"], input[type="number"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 18px !important;
        }

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
            background-color: #2196F3 !important;
        }

            input:checked + .slider:before {
                transform: translateX(24px);
            }


        .upload-btn {
            background-color: #28a745;
            color: white;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            display: inline-block;
            border: none;
            width: 100%;
            margin: 20px 0;
        }

        .file-name {
            font-size: 14px;
            color: #333;
        }

        input::file-selector-button {
            background: #2196F3;
            padding: 0.5em;
            color: #fff;
            outline: none;
            border-radius: 3px;
            border: none;
            cursor: pointer;
        }

        .text__area {
            resize: both !important;
        }
    </style>

    <script>
        function triggerFileUpload() {
            document.getElementById('<%= fileUpload.ClientID %>').click();
        }

        function displayFileName(input) {
            var fileName = input.files.length > 0 ? input.files[0].name : "No file chosen";
            document.getElementById("fileNameDisplay").innerText = fileName;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <h2>Update Product</h2>

        <asp:HiddenField ID="hfProductId" runat="server" />

        <label>Product Name:</label>
        <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>

        <label>Description:</label>
        <asp:TextBox ID="txtDescription" CssClass="form-control text__area" runat="server" TextMode="MultiLine"></asp:TextBox>

        <label>Price:</label>
        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>

        <label>Weight (grams):</label>
        <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control"></asp:TextBox>

        <label>Fragrance:</label>
        <asp:TextBox ID="txtFragrance" runat="server" CssClass="form-control"></asp:TextBox>

        <label>Length (cm):</label>
        <asp:TextBox ID="txtLength" runat="server" CssClass="form-control"></asp:TextBox>

        <label>Packaging Type:</label>
        <asp:TextBox ID="txtPackagingType" runat="server" CssClass="form-control"> </asp:TextBox>

        <label>Free Incense Holder:</label>
        <label class="toggle-switch">
            <asp:CheckBox ID="chkFreeHolder" runat="server" />
            <span class="slider"></span>
        </label>
        <br />

        <label>Quantity Available:</label>
        <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server"></asp:TextBox>

        <label>Product Image:</label>

        <asp:FileUpload ID="fileUpload" runat="server" CssClass="my-4" onchange="displayFileName(this)" /><br />
        <asp:Image ID="imgPreview" runat="server" Width="100px" /><br />

        <asp:Button ID="btnUpdate" runat="server" Text="Update Product" CssClass="upload-btn" OnClick="btnUpdate_Click" />
    </div>
</asp:Content>
