<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPublisherManagement.aspx.cs" Inherits="ELibraryManagement.AdminPublisherManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container mt-4">
      <div class="row">

          <!-- Left Panel: Publisher Form -->
          <div class="col-md-4">
              <div class="card shadow-lg">
                  <div class="card-header bg-primary text-white text-center">
                      <h5>Publisher Details</h5>
                  </div>
                  <div class="card-body">
                      <!-- Publisher ID -->
                      <div class="form-group mb-3">
                          <label for="txtPublisherId">Publisher ID</label>
                          <asp:TextBox ID="txtAuthorId" runat="server" CssClass="form-control" placeholder="Enter Publisher ID"></asp:TextBox>
                      </div>

                      <!-- Publisher Name -->
                      <div class="form-group mb-3">
                          <label for="txtAuthorName">Publisher Name</label>
                          <asp:TextBox ID="txtPublisherName" runat="server" CssClass="form-control" placeholder="Enter Publisher Name"></asp:TextBox>
                      </div>

                      <!-- Buttons -->
                      <div class="d-flex justify-content-between">
                          <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success" />
                          <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-warning" />
                          <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" />
                      </div>

                      <asp:Label ID="lblMessage" runat="server" CssClass="d-block mt-3 text-danger"></asp:Label>
                  </div>
              </div>
          </div>

          <!-- Right Panel: Author List -->
          <div class="col-md-8">
              <div class="card shadow-lg">
                  <div class="card-header bg-info text-white text-center">
                      <h5>Publisher List</h5>
                  </div>
                  <div class="card-body">

                      <%-- OnPageIndexChanging="gvAuthors_PageIndexChanging"--%>
                      <asp:GridView ID="gvPublisher" runat="server" CssClass="table table-striped table-bordered" AutoGenerateColumns="False" AllowPaging="True" PageSize="10">
                          <Columns>
                              <asp:BoundField DataField="PublisherId" HeaderText="Publisher ID" />
                              <asp:BoundField DataField="PublisherName" HeaderText="Publisher Name" />
                          </Columns>
                      </asp:GridView>
                  </div>
              </div>
          </div>

      </div>
  </div>
</asp:Content>
