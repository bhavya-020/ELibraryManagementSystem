<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="ELibraryManagement.UserSignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


        <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-10">

                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>User Signup</h4>
                    </div>
                    <div class="card-body">

                        <!-- Full Name (full width) -->
                        <div class="form-group mb-3">
                            <label for="txtFullName">Full Name</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                        </div>

                        <!-- Date of Birth + Contact Number -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="txtDOB">Date of Birth</label>
                                <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="txtContact">Contact Number</label>
                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder="Enter contact number" TextMode="Phone"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Email (full width, important field) -->
                        <div class="form-group mb-3">
                            <label for="txtEmail">Email ID</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email address" TextMode="Email"></asp:TextBox>
                        </div>

                        <!-- State + City + Pincode (3 fields in a row) -->
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label for="txtState">State</label>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="Enter state"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="txtCity">City</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Enter city"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label for="txtPincode">Pincode</label>
                                <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" placeholder="Enter pincode"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Full Address (textarea full width) -->
                        <div class="form-group mb-3">
                            <label for="txtAddress">Full Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter full address"></asp:TextBox>
                        </div>

                        <!-- Password + Confirm Password -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label for="txtPassword">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label for="txtConfirmPassword">Confirm Password</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" placeholder="Confirm password" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Signup Button -->
                        <div class="d-grid">
                            <asp:Button ID="btnSignup" runat="server" CssClass="btn btn-success btn-block" Text="Sign Up" OnClick="btnSignup_Click" />
                        </div>

                        <!-- Message Label -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-danger mt-3 d-block"></asp:Label>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
