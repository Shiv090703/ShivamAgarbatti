<%@ Page Title="" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserRegistation.aspx.cs" Inherits="Dasbord_pages_samples_UserRegistation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card-body">
        <h4 class="card-title">User Registration Form</h4>
        <%--<p class="card-description"> Basic form elements </p>--%>
        <%--<form class="forms-sample">--%>
        <div class="form-group">
            <label for="exampleInputName1">User Name</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:TextBox ID="TextBox1" class="form-control" placeholder="User Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail3">First Name</label>
            <%--<input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">--%>
            <asp:TextBox ID="TextBox2" class="form-control" placeholder="First Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword4">Last Name</label>
            <%-- <input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password">--%>
            <asp:TextBox ID="TextBox3" class="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleSelectGender">E-mail Address</label>
            <%--<select class="form-control" id="exampleSelectGender">
                    <option>Male</option>
                    <option>Female</option>
                </select>--%>
            <asp:TextBox ID="TextBox4" class="form-control" placeholder="E-mail Address" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>File upload</label>
            <input type="file" name="img[]" class="file-upload-default">
            <div class="input-group col-xs-12">
                <input type="text" class="form-control file-upload-info" disabled="" placeholder="Upload Image">
                <span class="input-group-append">
                    <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
                </span>
            </div>
        </div>
        <div class="form-group">
            <label for="exampleInputCity1">Password</label>
            <%--<input type="text" class="form-control" id="exampleInputCity1" placeholder="Location">--%>
            <asp:TextBox ID="TextBox5" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleTextarea1">Confirm Password</label>
            <%--<textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>--%>
            <%-- <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location">--%>
            <asp:TextBox ID="TextBox6" class="form-control" placeholder="Confirm Password" runat="server"></asp:TextBox>
        </div>
        <%--<button type="submit" class="btn btn-primary mr-2">Register</button>--%>
        <asp:Button ID="Button1" class="btn btn-primary mr-2" runat="server" Text="Register" />
        <%-- <button class="btn btn-light">Login</button>--%>
        <asp:Button ID="Button2" class="btn btn-light" runat="server" Text="Login" />
        <%--</form>--%>
    </div>


</asp:Content>

