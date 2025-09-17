<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="ELibraryManagement.userLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">



                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">


                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>


                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>


                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg"
                                        ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                <br />


                                <div class="form-group">
                                    <a href="/UserSignUp.aspx">
                                        <input class="btn btn-info btn-block btn-lg" id="Button2"
    type="button" value="Sign Up" />
                                    </a>
                                </div>

                                </div>

                            </div>

                        




                            </div>
                        </div>



                <a href="homePage.aspx"> << Back to Home Page</a>
                    </div>
                </div>
            </div>
</asp:Content>
