<%@ Page Title="" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageOrders.aspx.cs" Inherits="Dasbord_pages_samples_ManageOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Manage Orders</h3>
    <!-- Search Filters -->
    <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Order ID: " />
        <asp:TextBox ID="txtOrderId" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Label ID="Label2" runat="server" Text="User ID: " />
        <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Label ID="Label3" runat="server" Text="Order Date: " />
        <asp:TextBox ID="txtOrderDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>

        <asp:Button ID="btnSearch" runat="server" Text="🔍" CssClass="btn btn-primary" OnClick="btnSearch_Click" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-secondary" OnClick="btnReset_Click" />
    </div>

    <hr />

    <!-- Orders Grid -->
    <asp:GridView ID="gvOrders" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="order_id"
        OnRowCommand="gvOrders_RowCommand">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order ID" />
            <asp:BoundField DataField="user_id" HeaderText="User ID" />
            <asp:BoundField DataField="user_name" HeaderText="User Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="total_price" HeaderText="Total Price" />
            <asp:BoundField DataField="order_date" HeaderText="Order Date" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:BoundField DataField="payment_method" HeaderText="Payment Method" />
            <asp:TemplateField HeaderText="Order Status">
                <ItemTemplate>
                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("status") %>' CssClass="badge badge-primary"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:DropDownList ID="ddlStatus" runat="server">
                        <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                        <asp:ListItem Text="Processing" Value="Processing"></asp:ListItem>
                        <asp:ListItem Text="Shipped" Value="Shipped"></asp:ListItem>
                        <asp:ListItem Text="Delivered" Value="Delivered"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success" CommandName="ChangeStatus" CommandArgument='<%# Eval("order_id") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <!-- Message Label -->
    <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"></asp:Label>

</asp:Content>
