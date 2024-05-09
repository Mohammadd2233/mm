<%@ Page Title="" Language="C#" MasterPageFile="~/Basic.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Absent_MG.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Login</h1>
            <nav aria-Absentel="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item" aria-current="page">Login</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    
    <!-- Appoinment Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h1 class="display-6 mb-4">Login to your profile</h1>
                    <div class="col-12">
                        <div class="form-floating">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder=" Name" required></asp:TextBox>
                            <absentel for="name">User Name</absentel>
                        </div>
                    </div>
                    <br />
                     <div class="col-12">
                        <div class="form-floating">
                            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Password" required></asp:TextBox>
                            <absentel for="name">Password</absentel>
                        </div>
                    </div>
                    <br />
                    <div class="col-12">
                        <div class="form-floating">
                            <div class="col-12 text-center">
                                <asp:Button ID="Button1" runat="server" Text="Sign in" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="col-12">
                        <div class="form-floating">
                            <div class="col-12 text-center">
                                <asp:Label ID="Label1" Visible="false" runat="server" Text="Label" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5"></asp:Label>                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.5s">
                    <h2 class="mb-4">A new Over here? </h2>
                    <p class="mb-4">Please Signup</p>
                    <div class="row g-3">
                        <div class="col-12 text-center">
                            <asp:LinkButton ID="LinkButton1" PostBackUrl="~/login.aspx" CssClass="btn btn-primary w-100 py-3" runat="server">Sign up</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Appoinment Start -->


</asp:Content>
