<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookIssue.aspx.cs" Inherits="ELibraryManagement.AdminBookIssue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <div class="row">

            <!-- Left Panel: Book Issue Form -->
            <div class="col-md-4">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h5>Book Issue / Return</h5>
                    </div>
                    <div class="card-body">
                        
                        <!-- Member ID -->
                        <div class="form-group mb-3">
                            <label for="txtMemberId">Member ID</label>
                            <asp:TextBox ID="txtMemberId" runat="server" CssClass="form-control" placeholder="Enter Member ID"></asp:TextBox>
                        </div>

                        <!-- Member Name -->
                        <div class="form-group mb-3">
                            <label for="txtMemberName">Member Name</label>
                            <asp:TextBox ID="txtMemberName" runat="server" CssClass="form-control" placeholder="Enter Member Name"></asp:TextBox>
                        </div>

                        <!-- Book ID -->
                        <div class="form-group mb-3">
                            <label for="txtBookId">Book ID</label>
                            <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" placeholder="Enter Book ID"></asp:TextBox>
                        </div>

                        <!-- Book Name -->
                        <div class="form-group mb-3">
                            <label for="txtBookName">Book Name</label>
                            <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control" placeholder="Enter Book Name"></asp:TextBox>
                        </div>

                        <!-- Start Date -->
                        <div class="form-group mb-3">
                            <label for="txtStartDate">Issue Date</label>
                            <asp:TextBox ID="txtStartDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>

                        <!-- End Date -->
                        <div class="form-group mb-3">
                            <label for="txtEndDate">Due Date</label>
                            <asp:TextBox ID="txtEndDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        </div>

                        <!-- Buttons -->
                        <div class="d-flex justify-content-between">
                            <asp:Button ID="btnIssue" runat="server" Text="Issue" CssClass="btn btn-success"  />
                            <asp:Button ID="btnReturn" runat="server" Text="Return" CssClass="btn btn-danger" />
                        </div>

                        <!-- Message -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="d-block mt-3 text-danger"></asp:Label>

                    </div>
                </div>
            </div>

            <!-- Right Panel: Issued Book List -->
            <div class="col-md-8">
                <div class="card shadow-lg">
                    <div class="card-header bg-info text-white text-center">
                        <h5>Issued Books List</h5>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gvIssuedBooks" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="MemberId" HeaderText="Member ID" />
                                <asp:BoundField DataField="MemberName" HeaderText="Member Name" />
                                <asp:BoundField DataField="BookId" HeaderText="Book ID" />
                                <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                                <asp:BoundField DataField="IssueDate" HeaderText="Issue Date" />
                                <asp:BoundField DataField="DueDate" HeaderText="Due Date" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
