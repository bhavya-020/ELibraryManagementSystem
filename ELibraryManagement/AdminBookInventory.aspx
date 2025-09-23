<%--MYCODE<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="ELibraryManagement.AdminBookInventory" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
--%>



<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="ELibraryManagement.AdminBookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
     <div class="row">
         <div class="col-md-5 ">
             <div class="card">
                 <div class="card-body">
                     <div class="row">
                         <div class="col">
                             <center>
                                 <h3>Book Details</h3>
                             </center>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col">
                             <center>
                                 <img id="imgview" Height="150px" Width="100px" src="imgs/books.jpg"  />
                             </center>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col">
                             <center>
                                 <hr />
                             </center>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col">
                             <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-md-3">
                             <label class="form-label">Book ID </label>
                             <div class="mb-3">
                                 <div class="input-group">
                                     <asp:TextBox CssClass="form-control" placeholder="ID" ID="TextBox1" runat="server"></asp:TextBox>
                                     <asp:Button ID="Button4" CssClass="btn btn-secondary btn-md" runat="server" Text="Go" OnClick="Button4_Click" />
                                 </div>
                             </div>
                         </div>
                         <div class="col-md-9">
                             <label class="form-label">Book Name </label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Name" ID="TextBox2" runat="server" ></asp:TextBox>
                             </div>
                         </div>                         
                     </div>
                     <div class="row">
                         <div class="col-md-4">
                             <label class="form-label">Language </label>
                             <div class="mb-3">
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                     <asp:ListItem Text="English" Value="English" />
                                     <asp:ListItem Text="Hindi" Value="Hindi" />
                                     <asp:ListItem Text="Marathi" Value="Marathi" />
                                     <asp:ListItem Text="French" Value="French" />
                                     <asp:ListItem Text="German" Value="German" />
                                     <asp:ListItem Text="Urdu" Value="Urdu" />
                                 </asp:DropDownList>
                             </div>
                             <label class="form-label">Publisher Name </label>
                             <div class="mb-3">
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server" >
                                     <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                     <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                 </asp:DropDownList>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <label class="form-label">Author Name </label>
                             <div class="mb-3">
                                 <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                     <asp:ListItem Text="A1" Value="a1" />
                                     <asp:ListItem Text="a2" Value="a2" />
                                 </asp:DropDownList>
                             </div>                             
                             <div class="mb-3">
                                 <label class="form-label">Publish Date</label>
                                 <asp:TextBox CssClass="form-control" placeholder="Date" ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>                                                            
                             </div>
                         </div>
                         <div class="col-md-4">
                             <label class="form-label">Genre</label>
                             <div class="mb-3">
                                 <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                     <asp:ListItem Text="Action" Value="Action" />
                                     <asp:ListItem Text="Adventure" Value="Adventure" />
                                     <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                     <asp:ListItem Text="Self Help" Value="Self Help" />
                                     <asp:ListItem Text="Motivation" Value="Motivation" />
                                     <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                     <asp:ListItem Text="Wellness" Value="Wellness" />
                                     <asp:ListItem Text="Crime" Value="Crime" />
                                     <asp:ListItem Text="Drama" Value="Drama" />
                                     <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                     <asp:ListItem Text="Horror" Value="Horror" />
                                     <asp:ListItem Text="Poetry" Value="Poetry" />
                                     <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                     <asp:ListItem Text="Romance" Value="Romance" />
                                     <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                     <asp:ListItem Text="Suspense" Value="Suspense" />
                                     <asp:ListItem Text="Thriller" Value="Thriller" />
                                     <asp:ListItem Text="Art" Value="Art" />
                                     <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                     <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                     <asp:ListItem Text="Health" Value="Health" />
                                     <asp:ListItem Text="History" Value="History" />
                                     <asp:ListItem Text="Math" Value="Math" />
                                     <asp:ListItem Text="Textbook" Value="Textbook" />
                                     <asp:ListItem Text="Science" Value="Science" />
                                     <asp:ListItem Text="Travel" Value="Travel" />
                                 </asp:ListBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-md-4">
                             <label class="form-label">Edition </label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Edition" ID="TextBox7" runat="server" ></asp:TextBox>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <label class="form-label">Book Cost(per unit)</label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Cost" ID="TextBox8" runat="server"  TextMode="Number"></asp:TextBox>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <label class="form-label">Pages</label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Pages" ID="TextBox9" runat="server"  TextMode="Number"></asp:TextBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-md-4">
                             <label class="form-label">Actual Stock </label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Actual cost" ID="TextBox4" runat="server"></asp:TextBox>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <label class="form-label">Current Stock</label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Stock" ID="TextBox5" runat="server" TextMode="Number" ></asp:TextBox>
                             </div>
                         </div>
                         <div class="col-md-4">
                             <label class="form-label">Issued Books</label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Issued books" ID="TextBox6" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>
                             </div>
                         </div>
                     </div>
                     <div class="row">
                         <div class="col-12">
                             <label class="form-label">Book Description</label>
                             <div class="mb-3">
                                 <asp:TextBox CssClass="form-control" placeholder="Description" ID="TextBox11" runat="server"  TextMode="MultiLine" Rows="2"></asp:TextBox>
                             </div>
                         </div>                            
                     </div>
                     <div class="row">
                         <div class="col-4 mx-auto">
                             <div class="mb-3">
                                 <asp:Button ID="Button1" CssClass="btn btn-success w-100 btn-md" runat="server" Text="Add" OnClick="Button1_Click" />
                             </div>
                         </div>
                         <div class="col-4 mx-auto">
                             <div class="mb-3">
                                 <asp:Button ID="Button2" CssClass="btn btn-primary w-100 btn-md" runat="server" Text="Update" OnClick="Button2_Click" />
                             </div>
                         </div>
                         <div class="col-4 mx-auto">
                             <div class="mb-3">
                                 <asp:Button ID="Button3" CssClass="btn btn-danger w-100 btn-md" runat="server" Text="Delete" OnClick="Button3_Click" />
                             </div>
                         </div>
                     </div>                       
                 </div>
             </div>
             <center>
                 <a href="homepage.aspx">Go back to home</a>
             </center>
             <br />
         </div>
         <div class="col-md-7 ">
             <div class="card">
                 <div class="card-body">
                     <div class="row">
                         <div class="col">
                             <center>
                                 <h3>Book Inventory List </h3>
                             </center>
                         </div>
                     </div>
                     <div class="col">                            
                         <hr />                            
                     </div>
                     <div class="row">
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                         <div class="col">
                             <asp:GridView CssClass="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                 <Columns>
                                     <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >

                                     <ItemStyle Font-Bold="True" />
                                     </asp:BoundField>
                                     <asp:TemplateField>
                                         <ItemTemplate>
                                             <div class="container-fluid">
                                                 <div class="row">
                                                     <div class="col-lg-10">
                                                         <div class="row">
                                                             <div class="col-12">
                                                                 <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                             </div>
                                                         </div>
                                                         <div class="row">
                                                             <div class="col-12">

                                                                 Author-<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                 | Genre-<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                 | Language-<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                             </div>
                                                         </div>
                                                         <div class="row">
                                                             <div class="col-12">

                                                                 Publisher-<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                 |Publish Date-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                 | Pages-<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                 | Edition-<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                             </div>
                                                         </div>
                                                         <div class="row">
                                                             <div class="col-12">

                                                                 Cost-<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                 | Actual Stock-<asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                 | Available-<asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                             </div>
                                                         </div>
                                                         <div class="row">
                                                             <div class="col-12">

                                                                 Description-<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                             </div>
                                                         </div>
                                                     </div>
                                                     <div class="col-lg-2">
                                                         <asp:Image ID="Image1" CssClass="img-fluid" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                     </div>
                                                 </div>
                                             </div>
                                         </ItemTemplate>
                                     </asp:TemplateField>

                                    </Columns>
                             </asp:GridView>
                         </div>
                     </div>
                 </div>
             </div>
             <br />
         </div>
     </div>
 </div>
</asp:Content>
