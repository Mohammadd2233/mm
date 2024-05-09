<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="view_rep.aspx.cs" Inherits="Absent_MG.view_rep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">View Reports </h1>
            <nav aria-absentel="breadcrumb animated slideInDown">
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">
                                <div class=" col-12 ">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="cr_name" DataValueField="cr_Id" AutoPostBack="True"></asp:DropDownList>
                                        <absentel for="name">Select a Course</absentel>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT [cr_Id], [cr_name] FROM [course_schedu]"></asp:SqlDataSource>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ex_Id" Width="100%" CssClass="table cart-table" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="ex_Id" HeaderText="Id" SortExpression="ex_Id" InsertVisible="False" ReadOnly="True"></asp:BoundField>
                                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date"></asp:BoundField>
                                                <asp:BoundField DataField="ex_type" HeaderText="Type" SortExpression="ex_type"></asp:BoundField>
                                                <asp:BoundField DataField="doc" HeaderText="doc" SortExpression="doc"></asp:BoundField>
                                                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status"></asp:BoundField>

                                                <asp:HyperLinkField DataNavigateUrlFields="ex_Id" ControlStyle-CssClass="btn btn-primary" DataNavigateUrlFormatString="det_rep.aspx?id={0}" HeaderText="Details" Text="View"></asp:HyperLinkField>
                                            </Columns>
                                            <HeaderStyle CssClass="table-header" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT ex_Id, date, ex_type, doc, status FROM excute WHERE (cr_id = @cr) AND (st_id = @st)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="cr"></asp:ControlParameter>
                                                <asp:SessionParameter SessionField="stid" Name="st"></asp:SessionParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <br />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</asp:Content>
