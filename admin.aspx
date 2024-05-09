<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Absent_MG.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Carousel Start -->
    <div class="container-fluid header-carousel px-0 mb-5">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="img/carousel-2.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7 text-start">
                                    <h1 class="display-1 text-white animated slideInRight mb-3">Admin Page</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->
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
                        <h5 class="mb-3">add a course to Instructor</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/cr_inst.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-person text-dark"></i>
                        </div>
                        <h5 class="mb-3">Add Instructor</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/add_inst.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-book text-dark"></i>
                        </div>
                        <h5 class="mb-3">Add course</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink3" NavigateUrl="~/add_cr.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-building-add text-dark"></i>
                        </div>
                        <h5 class="mb-3">Add Section</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink4" NavigateUrl="~/add_section.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-arrow-down-up  text-dark"></i>
                        </div>
                        <h5 class="mb-3">Add studen to course</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/stud_cr.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-gear text-dark"></i>
                        </div>
                        <h5 class="mb-3">Manage student course Section</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink6" NavigateUrl="~/mg_st_cr.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div> <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item">
                        <div class="icon-box-primary mb-4">
                            <i class="bi bi-gear text-dark"></i>
                        </div>
                        <h5 class="mb-3">Excuse reports</h5>
                        <p class="mb-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur tellus augue.</p>
                        <asp:HyperLink ID="HyperLink7" NavigateUrl="~/adm_rep.aspx" CssClass="btn btn-light px-3" runat="server"><i class="bi bi-chevron-double-right ms-1"></i></asp:HyperLink>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
