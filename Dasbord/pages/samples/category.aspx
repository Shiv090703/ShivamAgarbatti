<%@ Page Title="" Language="C#" MasterPageFile="~/Dasbord/pages/samples/AdminMasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="Dasbord_pages_samples_Catagorey" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="card-body">
        <h3 class="card-title" align="center">Add Category</h3>

        <%--<form class="forms-sample">--%>
        <div class="form-group">
            <label for="exampleInputUsername1">Category Name</label>
            <%--<input type="text" class="form-control" id="exampleInputUsername1" placeholder="Username">--%>
            <asp:TextBox ID="txtCat" class="form-control" placeholder="Category Name" runat="server"> </asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Category Discription</label>
            <%--<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">--%>
            <asp:TextBox ID="txt_disc" class="form-control" placeholder="Category Discription" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Category Image</label>
            <%--<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">--%>
            
            <div class="custom-file ">
                <%--<input type="file" class="custom-file-input" id="customFile" name="filename">--%>
                <asp:FileUpload ID="FU_logo" class="custom-file-input" name="filename" runat="server" />
                <label class="custom-file-label" for="customFile">Choose file</label>
            </div>
        </div>
        <%--<div class="form-group">
                        <label for="exampleInputConfirmPassword1">Confirm Password</label>
                        <input type="password" class="form-control" id="exampleInputConfirmPassword1" placeholder="Password">
                      </div>--%>
        <div class="form-group">
            <label for="exampleInputName1">Is Active?</label>
            <br>
            <%--<input type="text" class="form-control" id="exampleInputName1" placeholder="Name">--%>
            <label class="switch">
                <asp:CheckBox ID="chkOnOff" runat="server" Checked="true" OnCheckedChanged="chkOnOff_CheckedChanged" />
                <span class="slider round"></span>
            </label>
        </div>
        <%--<button type="submit" class="btn btn-primary mr-2">Submit</button>--%>
        <asp:Button ID="Button1" class="btn btn-primary mr-2" runat="server" Text="Save category" OnClick="Button1_Click" />
        <%--<button class="btn btn-light">Cancel</button>--%>
        <asp:Button ID="Button2" class="btn btn-light" runat="server" Text="Reset" />
        <%--</form>--%>
    </div>
    <div class="card-body">
        <h3 class="card-title" align="center">Category List</h3>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="category_Id"
    AllowPaging="True" PageSize="5" OnRowCommand="GridView1_RowCommand">
    <Columns>
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                
                <asp:LinkButton ID="btnEdit" runat="server" CssClass="btn btn-warning btn-sm"
                    CommandName="EditCategory" CommandArgument='<%# Eval("category_Id") %>'>
                    <i class="fa fa-edit"></i> Edit
                </asp:LinkButton>

               
                <asp:LinkButton ID="btnDelete" runat="server" CssClass="btn btn-danger btn-sm"
                    OnClientClick='<%# "return confirmDelete("+ Eval("category_Id") +");" %>'>
                    <i class="fa fa-trash"></i> Delete
                </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Category Image">
            <ItemTemplate>
                <asp:Image ID="category_logo" runat="server" ImageUrl='<%# ResolveUrl(Eval("category_logo").ToString()) %>'
                    Width="50px" Height="50px" />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="category_name" HeaderText="Category Name" />
        <asp:BoundField DataField="discription" HeaderText="Description" />
        <asp:CheckBoxField DataField="is_active" HeaderText="Active?" />
    </Columns>
</asp:GridView>
</div>
    

<script>
    function confirmDelete(categoryId) {
        Swal.fire({
            title: "Are you sure?",
            text: "You won't be able to recover this category!",
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#d33",
            cancelButtonColor: "#3085d6",
            confirmButtonText: "Yes, delete it!"
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = "category.aspx?deleteId=" + categoryId;
    }
    });
    return false; // Prevent default postback
    }
</script>

</asp:Content>

