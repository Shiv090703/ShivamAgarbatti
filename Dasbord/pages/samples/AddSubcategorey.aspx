<%@ Page Title="" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubcategorey.aspx.cs" Inherits="Dasbord_pages_samples_AddSubcategorey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div class="card-body">
        <h4 class="card-title" align="center">Add Subcategory</h4>

        <form class="forms-sample">
            <div class="form-group">
                <label class="col-sm-3 col-form-label">Subcategory Name</label>
                <div>
                    <asp:TextBox ID="txt_subcat_name" class="form-control" placeholder="Subcategory Name" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 col-form-label">Subcategory Description</label>
                <div>
                    <asp:TextBox ID="txt_sub_drscription" class="form-control" placeholder="Subcategory Description" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-3 col-form-label">Parent Category</label>
                <div>
                    <asp:DropDownList ID="drop_cat_name" class="form-control" runat="server" 
                        DataTextField="category_name" DataSourceID="SqlDataSource1" DataValueField="category_Id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SACON %>"
                        SelectCommand="SELECT [category_name], [category_Id] FROM [catagory_master]">
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="form-check form-check-flat form-check-primary">
                <label for="exampleInputName1">Is Active</label>
                <br>
                <label class="switch">
                    <asp:CheckBox ID="check_is_active" runat="server" Checked="true" />
                    <span class="slider round"></span>
                </label>
            </div>
            <asp:Button ID="btn_save_subCat" class="btn btn-primary mr-2" runat="server" Text="Save Subcategory" OnClick="btn_save_subCat_Click" />
            <asp:Button ID="btn_sub_rest" class="btn btn-light" runat="server" Text="Reset" />

        </form>

        <hr />

        <h4 class="card-title">Subcategory List</h4>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="sub_category_Id"
            OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="sub_category_name" HeaderText="Subcategory Name" />
                <asp:BoundField DataField="discription" HeaderText="Description" />
                <asp:BoundField DataField="category_name" HeaderText="Parent Category" />
                <asp:BoundField DataField="is_active" HeaderText="Is Active" />
                <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" CommandArgument='<%# Eval("sub_category_Id") %>'
                    CssClass="btn btn-danger" OnClientClick="return confirm('Are you sure you want to delete this subcategory?');">
                    <i class="fa fa-trash"></i> Delete
                </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
        </asp:GridView>

    </div>



</asp:Content>

