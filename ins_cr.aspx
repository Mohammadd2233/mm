<%@ Page Title="" Language="C#" MasterPageFile="~/Instructor.Master" AutoEventWireup="true" CodeBehind="ins_cr.aspx.cs" Inherits="Absent_MG.ins_cr" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-xxl py-5 bg-primary hero-header mb-5">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center text-start">
                    <h1 class="text-white animated zoomIn">My Courses</h1>
                    <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                </div>
            </div>
        </div>
    </div>
    <div class="container-xxl py-5">
        <div class="container px-lg-5">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="wow fadeInUp" data-wow-delay="0.3s">
                        <div class=" row g-4 text-center">
                            <div class="col-12">
                                <div class="form-floating">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                        DataSourceID="SqlDataSource1" Width="100%" CssClass="table cart-table">
                                        <Columns>
                                            <asp:BoundField DataField="cr_symp" HeaderText="symp" SortExpression="cr_symp"></asp:BoundField>
                                            <asp:BoundField DataField="cr_name" HeaderText="name" SortExpression="cr_name"></asp:BoundField>
                                            <asp:BoundField DataField="credit_hr" HeaderText="credit_hr" SortExpression="credit_hr"></asp:BoundField>

                                        </Columns>
                                        <HeaderStyle CssClass="table-header" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:Absent %>' SelectCommand="SELECT course_schedu.cr_name, course_schedu.credit_hr, course_schedu.cr_symp, course_schedu.stack, instructor.name FROM course_schedu INNER JOIN instructor ON course_schedu.cr_Id = instructor.cr_id WHERE (instructor.name = @name)">
                                        <SelectParameters>
                                            <asp:SessionParameter SessionField="n" Name="name"></asp:SessionParameter>

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
        <!-- Contact End -->
</asp:Content>

