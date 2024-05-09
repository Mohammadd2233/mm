<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="mg_st_cr.aspx.cs" Inherits="Absent_MG.mg_st_cr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Manage Course - Student </h1>
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
                                        <absentel for="name">Select a Instructor</absentel>
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT cr_Id, cr_name FROM course_schedu"></asp:SqlDataSource>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sc_Id"
                                            DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table">
                                            <Columns>
                                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                                                <asp:BoundField DataField="sec_name" HeaderText="section" SortExpression="sec_name"></asp:BoundField>

                                                <asp:CommandField ShowDeleteButton="True" ButtonType="Button">
                                                    <ControlStyle CssClass="btn btn-primary w-75 py-2"></ControlStyle>

                                                </asp:CommandField>
                                            </Columns>
                                            <HeaderStyle CssClass="table-header" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' DeleteCommand="Delete from st_cr where sc_Id = @sc_Id" SelectCommand="SELECT DISTINCT student.name, section.sec_name, section.cr_id, st_cr.sc_Id FROM section INNER JOIN st_cr ON section.sec_Id = st_cr.sec_id INNER JOIN student ON st_cr.st_id = student.st_Id WHERE (section.cr_id = @cr)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="cr"></asp:ControlParameter>
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
