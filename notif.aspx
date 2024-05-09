<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="notif.aspx.cs" Inherits="Absent_MG.notif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Notifactions</h1>
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
                <div class="col-lg-6">
                    <div class="section-title position-relative text-center mb-5 pb-2 wow fadeInUp" data-wow-delay="0.1s">
                        <h2 class="mt-2"></h2>
                    </div>
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox1" ReadOnly="true" TextMode="MultiLine" Height="150px" ViewStateMode="Enabled" runat="server" CssClass="form-control border-1  w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <absentel for="name">Message</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox2" ReadOnly="true" TextMode="DateTime" ViewStateMode="Enabled" runat="server" CssClass="form-control border-1  w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <absentel for="name">Date</absentel>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-title position-relative text-center mb-5 pb-2 wow fadeInUp" data-wow-delay="0.1s">
                        <h2 class="mt-2"></h2>
                    </div>
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                            DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table" DataKeyNames="not_Id">
                                            <Columns>
                                                <asp:BoundField DataField="not_Id" HeaderText="not_Id" SortExpression="not_Id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                                                <asp:BoundField DataField="content" HeaderText="content" SortExpression="not_content"></asp:BoundField>
                                                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>

                                                <asp:HyperLinkField DataNavigateUrlFields="not_Id" ControlStyle-CssClass="btn btn-primary rounded-pill w-100" DataNavigateUrlFormatString="notif.aspx?id={0}" Text="View" HeaderText="Details"></asp:HyperLinkField>
                                            </Columns>
                                            <HeaderStyle CssClass="table-header" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT notif.* FROM notif INNER JOIN excute ON notif.ex_id = excute.ex_Id WHERE (excute.st_id = @idd)">
                                            <DeleteParameters>
                                                <asp:Parameter Name="id"></asp:Parameter>
                                            </DeleteParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="idd" Name="idd"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
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
