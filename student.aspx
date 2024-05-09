<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Absent_MG.student1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid header-carousel px-0 mb-5">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7 text-start">
                                    <h1 class="display-1 text-white animated slideInRight mb-3">ٍStudent page</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid container-service py-5">
        <div class="container pt-5">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <h1 class="display-6 mb-3">Excusive Service</h1>
                <p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue, iaculis id elit eget, ultrices pulvinar tortor.</p>
            </div>
            <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-book text-dark"></i>
                        </div>
                        <h5 class="mb-3">New request</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink1" CssClass="btn btn-light px-3" NavigateUrl="~/new_rep.aspx" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-book text-dark"></i>
                        </div>
                        <h5 class="mb-3">My Courses</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink2" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-book text-dark"></i>
                        </div>
                        <h5 class="mb-3">View request</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/view_rep.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
