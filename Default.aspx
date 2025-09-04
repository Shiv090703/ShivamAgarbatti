<form id="form1" runat="server">
    <asp:datalist runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            ip_address:
            <asp:Label ID="ip_addressLabel" runat="server" Text='<%# Eval("ip_address") %>' />
            <br />
            product_id:
            <asp:Label ID="product_idLabel" runat="server" Text='<%# Eval("product_id") %>' />
            <br />
            total:
            <asp:Label ID="totalLabel" runat="server" Text='<%# Eval("total") %>' />
            <br />
            quantity:
            <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' />
            <br />
            product_name:
            <asp:Label ID="product_nameLabel" runat="server" Text='<%# Eval("product_name") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:datalist>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SACON %>" SelectCommand="SELECT 
    cart_master.ip_address, 
    cart_master.product_id, 
    cart_master.total, 
    cart_master.quantity, 
    product_master.product_name 
FROM 
    product_master 
INNER JOIN 
    cart_master 
ON 
    product_master.product_Id = cart_master.product_id
WHERE 
    cart_master.ip_address = @ipAddress
">
        <SelectParameters>
            <asp:QueryStringParameter Name="ipAddress" QueryStringField="ip" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            ip_address:
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ip_address") %>' />
            <br />
            product_id:
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_id") %>' />
            <br />
            total:
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("total") %>' />
            <br />
            quantity:
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>' />
            <br />
            product_name:
            <asp:Label ID="Label5" runat="server" Text='<%# Eval("product_name") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:Repeater>
</form>

