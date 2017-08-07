<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebPages.Dashboard.Admin.Students" %>

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

            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,students%>" /></h4>
    </div>
    <div class="x_content">
        <div class="row">
            <div class="col-md-4 hidden-xs">
                <label style="padding-top: 5px;">
                    نمایش
                                <select name="ctl00$ContentPlaceHolder1$ddlPageSize" onchange="javascript:setTimeout('__doPostBack(\'ctl00$ContentPlaceHolder1$ddlPageSize\',\'\')', 0)" id="ContentPlaceHolder1_ddlPageSize" style="font-weight: normal;">
                                    <option selected="selected" value="10">10</option>
                                    <option value="25">25</option>
                                    <option value="50">50</option>
                                    <option value="75">75</option>
                                    <option value="100">100</option>
                                </select>
                    رکورد
                </label>
            </div>
            <div class="col-md-4 col-xs-12 text-righ">
                <asp:Button ID="btnAddStudent" name="btnAdd" class="btn btn-primary" runat="server"
                    Text="<%$ Resources:Dashboard,add_student%>" OnClick="btnAddStudent_Click" />
            </div>
            <div class="col-md-4 col-xs-12 text-righ">
                <div class="input-group">
                    <span class="input-group-btn">
                        <a id="btnSearch" class="btn btn-primary" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnSearch','')">
                            <span class="fa fa-search"></span>
                        </a>
                    </span>
                    <div id="ContentPlaceHolder1_upSearch">

                        <input name="ctl00$ContentPlaceHolder1$tbxSearch" type="text" maxlength="50" id="tbxSearch" class="form-control text-right dirRight" />
                    </div>
                </div>
            </div>
        </div>

        <div id="ContentPlaceHolder1_upGrid">

            <div>

                <asp:GridView ID="gvStudents" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" AutoGenerateColumns="False" CssClass="dirRight table" HorizontalAlign="Center" OnRowDataBound="gvStudents_RowDataBound" AllowCustomPaging="True" AllowPaging="True" OnSelectedIndexChanged="gvStudents_SelectedIndexChanged" OnRowEditing="gvStudents_RowEditing" OnRowCommand="gvStudents_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="studentCode" HeaderText="<%$ Resources:Dashboard,shomare_daneshamozi%>" />
                        <asp:BoundField DataField="FirstName" HeaderText="<%$ Resources:Dashboard,name%>" />
                        <asp:BoundField DataField="LastName" HeaderText="<%$ Resources:Dashboard,family%>" />
                        <asp:BoundField DataField="FathersFirstName" HeaderText="<%$ Resources:Dashboard,father_name%>" />
                        <asp:TemplateField ItemStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Justify">
                            <ItemTemplate>
                                <asp:Button ID="Edid" runat="server"
                                    CommandName="Edit"
                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                    Text="ویرایش" />

                                <asp:Button ID="Details" runat="server"
                                    CommandName="Details"
                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                    Text="جزئیات" />

                                <asp:Button OnClientClick="if(!confirm('ایا مطمئن هستید؟')) return false;" ID="Delet" runat="server"
                                    CommandName="Delet"
                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                    Text="حذف" />
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
        </div>

        <div class="row">
            <div class="col-md-5 col-md-push-7 col-xs-6 col-xs-push-6">

                <a id="ContentPlaceHolder1_btnViewAll" class="btn btn-auto-h btn-info goRight" href="javascript:__doPostBack('ctl00$ContentPlaceHolder1$btnViewAll','')" style="margin-right: 5px;">نمایش همه
                                <span class="fa fa-list"></span>
                </a>
                <asp:Label runat="server" ID="lbl1"> hi</asp:Label>
            </div>
            <div class="extra" style="height: 100px">
            </div>
        </div>
    </div>
</asp:Content>