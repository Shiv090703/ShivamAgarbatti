<%@ Page Title="" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="Dasbord_pages_samples_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card-body">
        <h3 class="card-title" align="center">Add New Product </h3>

        <%--<form class="forms-sample">--%>
        <div class="form-group">
            <label for="exampleInputName1">Product Name</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:TextBox ID="txt_ProductName" class="form-control" placeholder="Product Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail3">Product Discription</label>
            <%--<input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">--%>
            <asp:TextBox ID="txt_ProductDiscription" class="form-control" placeholder="Product Dicription" runat="server" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword4">Price(₹)</label>
            <%--<input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password">--%>
            <asp:TextBox ID="txt_ProdPrice" class="form-control" placeholder="Price" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword4">Weight(Kg/Gram)</label>
            <%--<input type="password" class="form-control" id="exampleInputPassword4" placeholder="Password">--%>
            <asp:TextBox ID="txt_Weight" class="form-control" placeholder="Weight" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputName1">Fregrance</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:TextBox ID="txt_fregrance" class="form-control" placeholder="Fregrance Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputName1">Length</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:TextBox ID="txt_length" class="form-control" placeholder="Length" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputName1">Pakaging Type</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:TextBox ID="txt_PakagingType" class="form-control" placeholder="PakagingType" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputName1">Free incense Holder</label>
            <br>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <label class="switch">
                <asp:CheckBox ID="chkOnOff" runat="server" Checked="true" OnCheckedChanged="chkOnOff_CheckedChanged" />
                <span class="slider round"></span>
            </label>
        </div>
        <div class="form-group">
            <label for="exampleInputName1">Quantity Avalibal</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:TextBox ID="txt_Quantitiy" class="form-control" placeholder="Quantity" runat="server" TextMode="Number"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputName1">Catagory</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:DropDownList ID="drop_Catagory" class="form-control" placeholder="Select Catagory" runat="server" DataSourceID="SqlDataSource1" DataTextField="category_name" DataValueField="category_Id" AutoPostBack="True"></asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SACON %>" SelectCommand="SELECT [category_Id], [category_name] FROM [catagory_master]"></asp:SqlDataSource>

        </div>
        <div class="form-group">
            <label for="exampleInputName1">Sub-Category</label>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <asp:DropDownList ID="drop_SubCategory" class="form-control" placeholder="Sub-Catagory" runat="server" DataSourceID="SqlDataSource2" DataTextField="sub_category_name" DataValueField="sub_category_Id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SACON %>" SelectCommand="SELECT [sub_category_Id], [sub_category_name] FROM [sub_category_master] WHERE ([category_Id] = @category_Id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="drop_Catagory" Name="category_Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="form-group">
            <label>Product Photo</label>
            <div class="custom-file mb-3">
                <%--<input type="file" class="custom-file-input" id="customFile" name="filename">--%>
                <asp:FileUpload ID="FU_product" class="custom-file-input" name="filename" runat="server" />
                <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
        </div>
        <%--<div class="form-group">
            <label for="exampleInputCity1">City</label>
            <input type="text" class="form-control" id="exampleInputCity1" placeholder="Location">
        </div>
        <div class="form-group">
            <label for="exampleTextarea1">Textarea</label>
            <textarea class="form-control" id="exampleTextarea1" rows="4"></textarea>
        </div>--%>
        <div class="form-group">
            <label for="exampleInputName1">Is Active</label>
            <br>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <label class="switch">
                <asp:CheckBox ID="check_Is_Active" runat="server" Checked="true" OnCheckedChanged="chkOnOff_CheckedChanged" />
                <span class="slider round"></span>
            </label>
        </div>
        <%--<button type="submit" class="btn btn-primary mr-2">Submit</button>--%>
        <asp:Button ID="SaveProduct" class="btn btn-primary mr-2" runat="server" Text="Save Product" OnClick="SaveProduct_Click" />
        <%--<button class="btn btn-light">Cancel</button>--%>
        <asp:Button ID="Reset" class="btn btn-light" runat="server" Text="Reset" OnClick="Reset_Click" />
        <%--</form>--%>
        <div class="card-body">
            <h3 class="card-title" align="center">Category List</h3>
            <div class="table-responsive" style="max-width: 100%; overflow-x: auto;">
                <div class="table-responsive" style="max-width: 100%; overflow-x: auto;">
                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False"
                        CssClass="table table-bordered table-striped img-rounded"
                        DataSourceID="SqlDataSource3"
                        AllowPaging="True"
                        PageSize="5"
                        Width="100%"
                        PagerStyle-CssClass="pagination-container">

                        <Columns>
                            
                            <asp:TemplateField HeaderText="Product Image">
                                <ItemTemplate>
                                    <asp:Image ID="imgProduct" runat="server"
                                        ImageUrl='<%# ResolveUrl(Eval("product_photo").ToString()) %>'
                                        Width="80px" Height="80px"
                                        CssClass="img-thumbnail" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Product Name">
                                <ItemTemplate>
                                    <div style="max-width: 200px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("product_name") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Price (₹)">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("price") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Weight (Kg/Gram)">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("weight") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Fragrance">
                                <ItemTemplate>
                                    <div style="max-width: 150px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("fragrance") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                           
                            <asp:TemplateField HeaderText="Length">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("length") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Packaging Type">
                                <ItemTemplate>
                                    <div style="max-width: 150px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("packaging_type") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Free Incense Holder">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("free_incense_holder") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Stock">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("quantity_available") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Category ID">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("category_Id") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                            
                            <asp:TemplateField HeaderText="Sub Category ID">
                                <ItemTemplate>
                                    <div style="max-width: 100px; word-wrap: break-word; white-space: normal;">
                                        <%# Eval("sub_category_Id") %>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <PagerStyle CssClass="pagination" />
                    </asp:GridView>
                </div>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                    ConnectionString="<%$ ConnectionStrings:SACON %>"
                    SelectCommand="SELECT product_photo, product_name, price, weight, fragrance, length, packaging_type, free_incense_holder, quantity_available, category_Id, sub_category_Id FROM product_master"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

