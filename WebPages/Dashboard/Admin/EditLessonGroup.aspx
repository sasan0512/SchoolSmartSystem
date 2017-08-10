<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="EditLessonGroup.aspx.cs" Inherits="WebPages.Dashboard.Admin.EditeLessonGroup" %>

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
            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,EditeLessonGroup%>" /></h4>
    </div>
    <div class="c-content">
        <div id="demo-form2" class="form-horizontal form-label-right">
            <div class="col-md-6 col-md-offset-3 col-xs-12">

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <%--personalcode--%>
                            <span id="lblID" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,ID%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$lblID" type="text" maxlength="50" id="lblLGID" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <%--name--%>
                            <span id="ContentPlaceHolder1_lbl_Class" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Class%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxClass" type="text" maxlength="50" id="tbxClass" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <%--family--%>
                            <span id="ContentPlaceHolder1_lbl_LessonTitle" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,LessonTitle%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxLessonTitle" type="text" maxlength="50" id="tbxLessonTitle" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>

                <div class="ln_solid"></div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <%--birthday--%>
                            <span id="ContentPlaceHolder1_lbl_Unit" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Unit%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxUnit" type="text" maxlength="50" id="tbxUnit" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                        <%--telephon--%>
                        <span id="ContentPlaceHolder1_lbl_TeacherFName" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,TeacherFName%>" />
                        </span>
                    </div>

                    <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                        <input name="ctl00$ContentPlaceHolder1$tbxTeacherFName" type="text" maxlength="15" id="tbxTeacherFName" runat="server" class="form-control text-right dirRight" />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                        <%--username--%>
                        <span id="ContentPlaceHolder1_lbl_TeacherLName" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,TeacherLName%>" />
                        </span>
                    </div>

                    <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                        <input name="ctl00$ContentPlaceHolder1$tbxTeacherLName" type="text" maxlength="15" id="tbxTeacherLName" runat="server" class="form-control text-right dirRight" />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                        <%--password--%>
                        <span id="ContentPlaceHolder1_lbl_GradeTitle" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,GradeTitle%>" />
                        </span>
                    </div>

                    <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                        <input name="ctl00$ContentPlaceHolder1$tbxGradeTitle" type="text" maxlength="15" id="tbxGradeTitle" runat="server" class="form-control text-right dirRight" />
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                        <%--mobile--%>
                        <span id="ContentPlaceHolder1_lbl_Day" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Day%>" />
                        </span>
                    </div>

                    <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                        <input name="ctl00$ContentPlaceHolder1$tbxDay" type="text" maxlength="11" id="tbxDay" runat="server" class="form-control text-right dirRight" />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                        <%--Type--%>
                        <span id="ContentPlaceHolder1_lbl_Time" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Time%>" />
                        </span>
                    </div>

                    <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                        <input name="ctl00$ContentPlaceHolder1$tbxTime" type="text" maxlength="11" id="tbxTime" runat="server" class="form-control text-right dirRight" />
                    </div>
                </div>
            </div>


            <div class="ln_solid"></div>
            <div class="form-group">
                <div class="col-xs-4 text-left">
                    <a href="http://localhost:4911/Dashboard/Admin/LessonGroups.aspx" class="btn btn-default">
                        <span class="fa fa-chevron-left"></span>
                        <asp:Literal runat="server" Text="<%$ Resources:Dashboard,Back%>" />
                    </a>
                </div>
                <div class="col-xs-8 text-right">

                    <asp:Button ID="btnSabtEditProfile" name="btnSabt" class="btn btn-primary" runat="server"
                        Text="<%$ Resources:Dashboard,sabt%>" OnClick="btnSabtEditLessonGroup_Click" />
                </div>
            </div>

            <div class="extra" style="height: 100px">
            </div>
        </div>
    </div>
    </div>
</asp:Content>
