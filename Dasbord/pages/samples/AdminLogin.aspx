<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Dasbord_pages_samples_AdminLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link href="../../assets/css/log_reg.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2 style="color: white;">Admin Login</h2>
            <asp:TextBox ID="txtLoginID" runat="server" CssClass="input-field" placeholder="Login ID"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-field" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" CssClass="btn" Text="Login" OnClick="btnLogin_Click" />
            <p>New Admin? <a href="AdminRegister.aspx">Register Here</a></p>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </form>
</body>
</html>