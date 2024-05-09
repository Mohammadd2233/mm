<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="add_inst.aspx.cs" Inherits="Absent_MG.add_inst" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Add Instructor</h1>
            <nav aria-absentel="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item" aria-current="page">Add</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <div class="section-title position-relative text-center mb-5 pb-2 wow fadeInUp" data-wow-delay="0.1s">
                        <h2 class="mt-2">Make your study more specific</h2>
                    </div>
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">

                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <absentel for="name">Name</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <absentel for="name">Instr Id</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="email" required></asp:TextBox>
                                        <absentel for="email">University Email</absentel>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="TextBox2" ErrorMessage="Email is Required Field"
                                            ForeColor="#93C83F"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="TextBox2" ErrorMessage="Email is not in correct format"
                                            ForeColor="#93c83f"
                                            ValidationExpression="\w+([-+.']\w+)*@taibahu.edu.sa"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox3" TextMode="Password" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Password" required></asp:TextBox>
                                        <absentel for="name">Password</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Confirm" required></asp:TextBox>
                                        <absentel for="name">Confirm Password</absentel>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server"
                                            ControlToCompare="TextBox3" ControlToValidate="TextBox4"
                                            ErrorMessage="Password Mismatch" ForeColor="#93C83F"></asp:CompareValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" TextMode="Phone" placeholder="Phone No" required></asp:TextBox>
                                        <absentel for="name">Phone Number</absentel>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                            ControlToValidate="TextBox5" ErrorMessage="Phone no is not in correct Format"
                                            ForeColor="#93c83f" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" TextMode="Phone" placeholder="Phone No" required></asp:TextBox>
                                        <absentel for="name">Major</absentel>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <asp:Button ID="Button1" runat="server"
                                        Text="Add" OnClick="Button1_Click" CssClass="btn btn-primary w-100 py-3" />
                                </div>
                                <br />
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:Label ID="Label1" Visible="false" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
