<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="ELibraryManagement.AdminBookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <div class="row">

            <!-- Left Panel: Book Details -->
            <div class="col-md-4">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h5>Book Details</h5>
                    </div>
                    <div class="card-body">

                        <div class="mb-3">
                            <label>Book ID</label>
                            <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" placeholder="Book ID"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label>Book Name</label>
                            <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control" placeholder="Book Name"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label>Author</label>
                            <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control" placeholder="Author Name"></asp:TextBox>
                        </div>

                        <div class="mb-3">
                            <label>Publisher</label>
                            <asp:TextBox ID="txtPublisher" runat="server" CssClass="form-control" placeholder="Publisher"></asp:TextBox>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label>Edition</label>
                                <asp:TextBox ID="txtEdition" runat="server" CssClass="form-control" placeholder="Edition"></asp:TextBox>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label>Price</label>
                                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control" TextMode="Number" placeholder="Price"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label>Quantity</label>
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" TextMode="Number" placeholder="Quantity"></asp:TextBox>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label>Available</label>
                                <asp:TextBox ID="txtAvailable" runat="server" CssClass="form-control" TextMode="Number" placeholder="Available"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Action Buttons -->
                        <div class="d-flex justify-content-between mb-3">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" />
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
                        </div>

                        <asp:Label ID="lblMessage" runat="server" CssClass="d-block mt-2 text-danger"></asp:Label>
                    </div>
                </div>
            </div>

            <!-- Right Panel: Book Inventory List -->
            <div class="col-md-8">
                <div class="card shadow-lg">
                    <div class="card-header bg-info text-white text-center">
                        <h5>Book Inventory List</h5>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gvBooks" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="BookId" HeaderText="Book ID" />
                                <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                                <asp:BoundField DataField="Author" HeaderText="Author" />
                                <asp:BoundField DataField="Publisher" HeaderText="Publisher" />
                                <asp:BoundField DataField="Edition" HeaderText="Edition" />
                                <asp:BoundField DataField="Price" HeaderText="Price" />
                                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                                <asp:BoundField DataField="Available" HeaderText="Available" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
