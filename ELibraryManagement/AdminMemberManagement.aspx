<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="ELibraryManagement.AdminMemberManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script type="text/javascript">
    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        //$('.tablel').DataTable();
    });
    </script>
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
                                <asp:Button ID="Button4" CssClass="btn btn-secondary btn-md" runat="server" Text="Go" OnClick="Button4_Click1" />

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
                            <asp:Button ID="btnActivate" runat="server" Text="Activate" CssClass="btn btn-success" OnClick="LinkButton1_Click"/>
                            <asp:Button ID="btnPending" runat="server" Text="Pending" CssClass="btn btn-warning" OnClick="LinkButton2_Click"/>
                            <asp:Button ID="btnDeactivate" runat="server" Text="Deactivate" CssClass="btn btn-warning"  OnClick="LinkButton3_Click"/>
                        </div>

                        <!-- Delete User -->
                        <div class="d-grid mb-3">
                            <asp:Button ID="btnDelete" runat="server" Text="Delete Permanently" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                        <div class ="col">
                        <asp:GridView ID="gvMembers" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="member_id">
                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="id" ReadOnly="True" SortExpression="member_id" />
                                <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                <asp:BoundField DataField="account_status" HeaderText="account_status" SortExpression="account_status" />
                                <asp:BoundField DataField="contact_no" HeaderText="contact_no" SortExpression="contact_no" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                            </Columns>
                        </asp:GridView>
                           

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
