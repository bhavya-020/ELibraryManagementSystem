<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ELibraryManagement.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container mt-5">
        <div class="row">
            
            <!-- LEFT: USER PROFILE -->
            <div class="col-md-6">
                <div class="card shadow-lg mb-4">
                    <div class="card-header bg-info text-white text-center">
                        <h4>User Profile</h4>
                        <asp:Label ID="lblAccountStatus" runat="server" CssClass="badge bg-success"></asp:Label>
                    </div>
                    <div class="card-body">

                        <!-- Full Name -->
                        <div class="form-group mb-3">
                            <label for="txtFullName">Full Name</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <!-- Date of Birth + Contact -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="txtDOB">Date of Birth</label>
                                <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="txtContact">Contact Number</label>
                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Email -->
                        <div class="form-group mb-3">
                            <label for="txtEmail">Email ID</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                        </div>

                        <!-- State + City + Pincode -->
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="txtState">State</label>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="txtCity">City</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="txtPincode">Pincode</label>
                                <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Full Address -->
                        <div class="form-group mb-3">
                            <label for="txtAddress">Full Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </div>

                        <!-- Update Profile Button -->
                        <div class="d-grid mb-4">
                            <asp:Button ID="btnUpdateProfile" runat="server" CssClass="btn btn-primary" Text="Update Profile" />
                        </div>

                        <hr />

                        <!-- Change Password Section -->
                        <h5 class="text-secondary">Change Password</h5>
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="txtUserID">User ID</label>
                                <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="txtOldPassword">Old Password</label>
                                <asp:TextBox ID="txtOldPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="txtNewPassword">New Password</label>
                                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnUpdatePassword" runat="server" CssClass="btn btn-warning" Text="Update Password"  />
                        </div>

                        <!-- Message -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="mt-3 d-block"></asp:Label>

                    </div>
                </div>
            </div>

            <!-- RIGHT: ISSUED BOOKS -->
            <div class="col-md-6">
                <div class="card shadow-lg">
                    <div class="card-header bg-secondary text-white text-center">
                        <h4>Issued Books</h4>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gvIssuedBooks" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                                <asp:BoundField DataField="Title" HeaderText="Book Title" />
                                <asp:BoundField DataField="AuthorID" HeaderText="Author ID" />
                                <asp:BoundField DataField="AuthorName" HeaderText="Author Name" />
                                <asp:BoundField DataField="IssueDate" HeaderText="Issue Date" DataFormatString="{0:yyyy-MM-dd}" />
                                <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" DataFormatString="{0:yyyy-MM-dd}" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
