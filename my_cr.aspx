<%@ Page Title="" Language="C#" MasterPageFile="~/student.Master" AutoEventWireup="true" CodeBehind="my_cr.aspx.cs" Inherits="Absent_MG.my_cr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">My Courses</h1>
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
                <div class="col-12">
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="table cart-table" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="cr_name" HeaderText="Course" SortExpression="cr_name"></asp:BoundField>
                                                <asp:BoundField DataField="cr_symp" HeaderText="Sympol" SortExpression="cr_symp"></asp:BoundField>
                                                <asp:BoundField DataField="credit_hr" HeaderText="Credit Hours" SortExpression="credit_hr"></asp:BoundField>
                                                <asp:BoundField DataField="sec_name" HeaderText="Section" SortExpression="sec_name"></asp:BoundField>
                                                <asp:BoundField DataField="name" HeaderText="Instructor" SortExpression="name"></asp:BoundField>
                                            </Columns>
                                            <HeaderStyle CssClass="table-header" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT course_schedu.cr_name, section.sec_name, instructor.name, st_cr.st_id, course_schedu.cr_symp, course_schedu.credit_hr FROM course_schedu INNER JOIN section ON course_schedu.cr_Id = section.cr_id INNER JOIN st_cr ON course_schedu.cr_Id = st_cr.cr_id AND section.sec_Id = st_cr.sec_id INNER JOIN instructor ON section.inst_id = instructor.Inst_Id INNER JOIN student ON st_cr.st_id = student.st_Id WHERE (st_cr.st_id = @idd)">
                                            <SelectParameters>
                                                <asp:SessionParameter SessionField="idd" Name="idd"></asp:SessionParameter>
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
</asp:Content>
