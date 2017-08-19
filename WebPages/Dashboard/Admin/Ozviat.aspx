<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Ozviat.aspx.cs" Inherits="WebPages.Dashboard.Admin.Ozviat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="../Styles/bootstrap.css" rel="stylesheet" />
    <link href="../Styles/simple-sidebar.css" rel="stylesheet" />
    <script src="../JavaScript/custom.min.js"></script>
    <link href="../Styles/AdminPanelStyles.css" rel="stylesheet" />
    <link href="../font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="c-title">
        <h4>
            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,NewLesson%>" /></h4>
    </div>
    <div class="c-content">
        <div id="demo-form2" class="form-horizontal form-label-right">
            <div class="col-md-12  col-xs-12">

                <div>
                    <asp:GridView ID="gvSelectedStudents" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                        CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" CssClass="dirRight table"
                        HorizontalAlign="Center" OnRowDataBound="gvStudents_RowDataBound" AllowCustomPaging="True" AllowPaging="True"
                        OnSelectedIndexChanged="gvStudents_SelectedIndexChanged" OnRowEditing="gvStudents_RowEditing"
                        OnRowCommand="gvStudents_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="StudentCode" HeaderText="شماره دانش آموزی " />
                            <asp:BoundField DataField="FirstName" HeaderText="نام" />
                            <asp:BoundField DataField="LastName" HeaderText="نام خانوادگی" />
                            <asp:BoundField DataField="FathersFirstName" HeaderText="نام پدر" />

                            <asp:TemplateField>
                                <ItemTemplate>

                                    <asp:Button ID="Details" runat="server"
                                        CommandName="Details"
                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                        Text="<%$ Resources:Dashboard,Details%>" />

                                    <asp:Button OnClientClick="if(!confirm('ایا مطمئن هستید؟')) return false;" ID="Delet" runat="server"
                                        CommandName="Delet"
                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                        Text="<%$ Resources:Dashboard,delete%>" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </div>

                <div class="ln_solid"></div>
                <div class="form-group">
                    <%-- <div class="col-xs-4 text-left">
                        <a href="http://localhost:4911/Dashboard/Admin/Lessons.aspx" class="btn btn-default">
                            <span class="fa fa-chevron-left"></span>
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Back%>" />
                        </a>
                    </div>
                    <div class="col-xs-8 text-right">

                        <asp:Button ID="btnSabtLesson" name="btnSabt" class="btn btn-primary" runat="server"
                            Text="<%$ Resources:Dashboard,sabt%>" OnClick="btnSabtLesson_Click" />
                    </div>--%>
                </div>

                <div class="extra" style="height: 100px">
                </div>
            </div>
        </div>
    </div>
</asp:Content>