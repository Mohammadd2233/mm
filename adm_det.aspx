<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adm_det.aspx.cs" Inherits="Absent_MG.adm_det" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Details</h1>
            <nav aria-absentel="breadcrumb animated slideInDown">
                <ol class="breadcrumb justify-content-center mb-0">

                    <li class="breadcrumb-item" aria-current="page">View</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row justify-content-center">
                <div class="col-lg-7">

                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="cr1" Enabled="false" ViewStateMode="Enabled" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" DataSourceID="SqlDataSource1" DataTextField="cr_name" DataValueField="cr_Id"></asp:DropDownList>
                                        <absentel for="name">course</absentel>
                                    </div>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT section.sec_Id, section.sec_name, course_schedu.cr_Id, course_schedu.cr_name FROM course_schedu INNER JOIN section ON course_schedu.cr_Id = section.cr_id">
                                </asp:SqlDataSource>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="sec1" Enabled="false" ViewStateMode="Enabled" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" DataSourceID="SqlDataSource1" DataTextField="sec_name" DataValueField="sec_Id"></asp:DropDownList>
                                        <absentel for="name">section</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:FileUpload ID="doc" Enabled="false" ViewStateMode="Enabled" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" />
                                        <absentel for="name">File</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="date1" ReadOnly="true" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server"></asp:TextBox>
                                        <absentel for="name">Date of Uploaded</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:RadioButtonList ID="exc1" Enabled="false" CellSpacing="2" CellPadding="4" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Medterm1">Med term 1</asp:ListItem>
                                            <asp:ListItem Value="Medterm2">Med term 2</asp:ListItem>
                                            <asp:ListItem Value="Final">Final</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <absentel for="name">excute Type</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="resp" Height="125px" TextMode="MultiLine" CssClass="form-control border-1 w-100 ps-9 pe-10" runat="server" > 
                                        </asp:TextBox>
                                        <absentel for="name">Response</absentel>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="staus" EnableViewState="true" CellSpacing="2" CellPadding="4" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Under Process">Under Process</asp:ListItem>
                                            <asp:ListItem Value="Wait of aproval">Wait of aproval</asp:ListItem>
                                            <asp:ListItem Value="aprroved">aprroved</asp:ListItem>
                                            <asp:ListItem Value="Disaprroved">Disaprroved</asp:ListItem>

                                        </asp:DropDownList>
                                        <absentel for="name">Status</absentel>
                                    </div>
                                </div>

                                <br />
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="desc" TextMode="MultiLine" ReadOnly="true" Height="125px" CssClass="form-control border-1 w-100 ps-9 pe-10" runat="server"></asp:TextBox>
                                        <absentel for="name">Descripe Excuse</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Update1" runat="server" OnClick="Update1_Click"
                                        Text="Update" CssClass="btn btn-primary w-100 py-3" />
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
