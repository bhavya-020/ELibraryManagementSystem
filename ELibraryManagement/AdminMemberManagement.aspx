<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="ELibraryManagement.AdminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container mt-4">
        <div class="row">

            <!-- Left Panel: Member Details -->
            <div class="col-md-4">
                <div class="card shadow-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h5>Member Details</h5>
                    </div>
                    <div class="card-body">

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label>Member ID</label>
                                <asp:TextBox ID="txtMemberId" runat="server" CssClass="form-control" placeholder="ID"></asp:TextBox>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label>Full Name</label>
                                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label>DOB</label>
                                <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label>Contact No</label>
                                <asp:TextBox ID="txtContact" runat="server" CssClass="form-control" placeholder="Contact"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label>Email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Email"></asp:TextBox>
                        </div>

                        <div class="row">
                            <div class="col-md-4 mb-3">
                                <label>State</label>
                                <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="State"></asp:TextBox>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label>City</label>
                                <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label>Pincode</label>
                                <asp:TextBox ID="txtPincode" runat="server" CssClass="form-control" placeholder="Pincode"></asp:TextBox>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label>Full Address</label>
                            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Full Address"></asp:TextBox>
                        </div>

                        <!-- Account Status Section -->
                        <div class="mb-3">
                            <label>Account Status:</label><br />
                            <asp:Label ID="lblAccountStatus" runat="server" CssClass="badge bg-success">Active</asp:Label>
                        </div>

                        <!-- Activate / Deactivate Buttons -->
                        <div class="d-flex justify-content-between mb-3">
                            <asp:Button ID="btnActivate" runat="server" Text="Activate" CssClass="btn btn-success" />
                            <asp:Button ID="btnDeactivate" runat="server" Text="Deactivate" CssClass="btn btn-warning" />
                        </div>

                        <!-- Delete User -->
                        <div class="d-grid mb-3">
                            <asp:Button ID="btnDelete" runat="server" Text="Delete Permanently" CssClass="btn btn-danger" />
                        </div>

                        <asp:Label ID="lblMessage" runat="server" CssClass="d-block mt-2 text-danger"></asp:Label>
                    </div>
                </div>
            </div>

            <!-- Right Panel: Member List -->
            <div class="col-md-8">
                <div class="card shadow-lg">
                    <div class="card-header bg-info text-white text-center">
                        <h5>Member List</h5>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="gvMembers" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="MemberId" HeaderText="ID" />
                                <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                                <asp:BoundField DataField="DOB" HeaderText="DOB" />
                                <asp:BoundField DataField="Contact" HeaderText="Contact" />
                                <asp:BoundField DataField="Email" HeaderText="Email" />
                                <asp:BoundField DataField="State" HeaderText="State" />
                                <asp:BoundField DataField="City" HeaderText="City" />
                                <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                <asp:BoundField DataField="Status" HeaderText="Account Status" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
