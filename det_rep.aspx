<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="det_rep.aspx.cs" Inherits="Absent_MG.det_rep" %>

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
                                        <asp:DropDownList ID="cr1"  Enabled="false" runat="server" AutoPostBack="true" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" DataSourceID="SqlDataSource1" DataTextField="cr_name" DataValueField="cr_Id"></asp:DropDownList>

                                        <absentel for="name">course</absentel>
                                    </div>
                                </div>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT section.sec_name, section.sec_Id, course_schedu.cr_name, course_schedu.cr_Id, st_cr.st_id FROM st_cr INNER JOIN section ON st_cr.sec_id = section.sec_Id INNER JOIN course_schedu ON st_cr.cr_id = course_schedu.cr_Id AND section.cr_id = course_schedu.cr_Id WHERE (st_cr.st_id = @stid)" InsertCommand="INSERT INTO excute(date, ex_type, descrp, doc, cr_id, st_id, sec_id) VALUES (@date, @type, @desc , @doc, @cr, @st, @sec)">
                                    <InsertParameters>
                                        <asp:Parameter Name="date"></asp:Parameter>
                                        <asp:Parameter Name="type"></asp:Parameter>
                                        <asp:Parameter Name="desc"></asp:Parameter>
                                        <asp:Parameter Name="doc"></asp:Parameter>
                                        <asp:Parameter Name="cr"></asp:Parameter>
                                        <asp:Parameter Name="st"></asp:Parameter>
                                        <asp:Parameter Name="sec"></asp:Parameter>
                                    </InsertParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter SessionField="stid" Name="stid"></asp:SessionParameter>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="sec1" Enabled="false" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" DataSourceID="SqlDataSource1" DataTextField="sec_name" DataValueField="sec_Id"></asp:DropDownList>
                                        <absentel for="name">select a section</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="status" ReadOnly="true" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server"></asp:TextBox>

                                        <absentel for="name">Status</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="doc1" ReadOnly="true" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server"></asp:TextBox>
                                        <asp:FileUpload ID="doc" EnableViewState="true" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" />
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
                                        <asp:RadioButtonList ID="exc1" EnableViewState="true" CellSpacing="2" CellPadding="4" CssClass="form-control border-1 rounded-pill w-100 ps-9 pe-10" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem Value="Medterm1">Med term 1</asp:ListItem>
                                            <asp:ListItem Value="Medterm2">Med term 2</asp:ListItem>
                                            <asp:ListItem Value="Lecture">Lecture</asp:ListItem>
                                            <asp:ListItem Value="Quiz">Quiz</asp:ListItem>
                                            <asp:ListItem Value="Final">Final</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <absentel for="name">excute Type</absentel>
                                    </div>
                                </div>
                                <br />
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="desc" TextMode="MultiLine"  Height="125px" CssClass="form-control border-1 w-100 ps-9 pe-10" runat="server"></asp:TextBox>
                                        <absentel for="name">Descripe Excuse</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="resp" ReadOnly="true" Height="125px" Visible="false" TextMode="MultiLine" CssClass="form-control border-1 w-100 ps-9 pe-10" runat="server" > 
                                        </asp:TextBox>
                                        <absentel for="name">Response</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:Button ID="update" Text="Update" OnClick="update_Click" CssClass="btn  btn-primary w-100" runat="server"></asp:Button>
                                    </div>
                                </div>
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
