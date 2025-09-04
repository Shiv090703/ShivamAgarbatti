<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminRegister.aspx.cs" Inherits="Dasbord_pages_samples_AdminRegister" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Registration</title>
    <link href="../../assets/css/log_reg.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2 style="color: white;">Admin Registration</h2>
            <asp:TextBox ID="txtAdminName" runat="server" CssClass="input-field" placeholder="Admin Name"></asp:TextBox>
            <asp:TextBox ID="txtLoginID" runat="server" CssClass="input-field" placeholder="Login ID"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:FileUpload ID="fileUploadAdminImage" runat="server" CssClass="input-field" />
            
            <div class="btn-container">
                <asp:Button ID="btnRegister" runat="server" CssClass="btn" Text="Register" OnClick="btnRegister_Click" />
                <asp:Button ID="btnBackToLogin" runat="server" CssClass="btn back-btn" Text="Back to Login" OnClick="btnBackToLogin_Click" />
            </div>
        </div>
    </form>
</body>
</html>
