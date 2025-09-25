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

                        <!-- Book ID
                        <div class="form-group mb-3">
                            <label for="txtBookId">Book ID</label>
                            <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" placeholder="Enter Book ID"></asp:TextBox>
                        </div>
 -->

                        <div class="form-group mb-3">
                            <label for="txtBookId">Book ID</label>
                            <asp:TextBox
                                ID="txtBookId1"
                                runat="server"
                                CssClass="form-control"
                                placeholder="Enter Book ID">
                            </asp:TextBox>
                        </div>

                        <div class="form-group mb-3">
                            <asp:Button
                                ID="btnSearch"
                                runat="server"
                                Text="Search Book"
                                CssClass="btn btn-primary"
                                OnClick="btnSearch_Click" />
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
                            <asp:Button ID="btnIssue" runat="server" Text="Issue" CssClass="btn btn-success" OnClick="btnIssue_Click" />
                            <asp:Button ID="btnReturn" runat="server" Text="Return" CssClass="btn btn-danger" OnClick="btnReturn_Click" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>

                    <div class="card-body">
                        <asp:GridView ID="gvIssuedBooks" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="gvIssuedBooks_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                                <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
