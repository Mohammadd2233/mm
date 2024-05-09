<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="stud_cr.aspx.cs" Inherits="Absent_MG.stud_cr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center py-5 mt-4">
            <h1 class="display-2 text-white mb-3 animated slideInDown">Add Student to course</h1>
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
                   
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <form>
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cr_name" DataValueField="cr_Id">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT course_schedu.cr_Id, course_schedu.cr_name FROM course_schedu ">
                                        </asp:SqlDataSource>
                                        <absentel for="name">Select a course</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList3" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="Inst_Id">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT course_schedu.cr_Id, instructor.Inst_Id, instructor.name FROM course_schedu INNER JOIN ins_cr ON course_schedu.cr_Id = ins_cr.cr_id INNER JOIN instructor ON ins_cr.inst_id = instructor.Inst_Id WHERE (course_schedu.cr_Id = @id)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="id"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <absentel for="name">Instructor</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:ListBox ID="stlist" Height="140px" runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5"></asp:ListBox>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT instructor.Inst_Id, instructor.name, course_schedu.cr_Id FROM instructor INNER JOIN ins_cr ON instructor.Inst_Id = ins_cr.inst_id INNER JOIN course_schedu ON ins_cr.cr_id = course_schedu.cr_Id WHERE (course_schedu.cr_Id = @id)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="id"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <absentel for="name">Select a student</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:TextBox ID="TextBox1" AutoPostBack="true" OnTextChanged="TextBox1_TextChanged"  runat="server" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" placeholder="Category Name" required></asp:TextBox>
                                        <absentel for="name">Name of student</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <asp:DropDownList ID="DropDownList2" CssClass="form-control border-1 rounded-pill w-100 ps-4 pe-5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="sec_name" DataValueField="sec_Id">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT course_schedu.cr_Id, instructor.Inst_Id, section.sec_name, section.sec_Id FROM course_schedu INNER JOIN section ON course_schedu.cr_Id = section.cr_id INNER JOIN instructor ON section.inst_id = instructor.Inst_Id WHERE (course_schedu.cr_Id = @cr) AND (instructor.Inst_Id = @inst)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="cr"></asp:ControlParameter>
                                                <asp:ControlParameter ControlID="DropDownList3" PropertyName="SelectedValue" Name="inst"></asp:ControlParameter>
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <absentel for="name">Section</absentel>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                                        Text="Add"  CssClass="btn btn-primary w-100 py-3" />
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
