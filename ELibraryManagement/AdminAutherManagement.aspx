<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAutherManagement.aspx.cs" Inherits="ELibraryManagement.AdminAutherManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <div class="row">

            <!-- Left Panel: Author Form -->
            <div class="col-md-4">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h5>Author Details</h5>
                    </div>
                    <div class="card-body">
                        <!-- Author ID -->
                        <div class="form-group mb-3">
                            <label for="txtAuthorId">Author ID</label>
                            <asp:TextBox ID="txtAuthorId" runat="server" CssClass="form-control" placeholder="Enter Author ID"></asp:TextBox>
                            <div class="input-group-append">
                                <asp:Button ID="btnGo" runat="server" Text="Go" CssClass="btn btn-primary"  OnClick="btnGo_Click" />
                            </div>
                        </div>

                        <!-- Author Name -->
                        <div class="form-group mb-3">
                            <label for="txtAuthorName">Author Name</label>
                            <asp:TextBox ID="txtAuthorName" runat="server" CssClass="form-control" placeholder="Enter Author Name"></asp:TextBox>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" OnClick="btnAdd_Click" />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" OnClick="btnUpdate_Click" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
                        </div>

                        <asp:Label ID="lblMessage" runat="server" CssClass="d-block mt-3 text-danger"></asp:Label>
                    </div>
                </div>
            </div>

            <!-- Right Panel: Author List -->
            <div class="col-md-8">
                <div class="card shadow-lg">
                    <div class="card-header bg-info text-white text-center">
                        <h5>Author List</h5>
                    </div>
                    <div class="card-body">

                        <%-- OnPageIndexChanging="gvAuthors_PageIndexChanging"--%>
                        <asp:GridView ID="gvAuthors" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" AllowPaging="True" PageSize="10">
                            <Columns>
                                <asp:BoundField DataField="AuthorId" HeaderText="Author ID" />
                                <asp:BoundField DataField="AuthorName" HeaderText="Author Name" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
