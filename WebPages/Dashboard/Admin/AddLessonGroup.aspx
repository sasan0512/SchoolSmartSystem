<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Admin/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddLessonGroup.aspx.cs" Inherits="WebPages.Dashboard.Admin.AddLessonGroup" %>

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
            <asp:literal runat="server" text="<%$ Resources:Dashboard,NewLessonGroup%>" />
        </h4>
    </div>
    <div class="c-content">
        <div id="demo-form2" class="form-horizontal form-label-right">
            <div class="col-md-6 col-md-offset-3 col-xs-12">

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_Class" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,Class%>" />
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
                            <span id="ContentPlaceHolder1_lbl_LessonTitle" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,LessonTitle%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxLessonTitle" type="text" maxlength="50" id="tbxLessonTitle" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_Unit" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,Unit%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxUnit" type="text" maxlength="50" id="tbxUnit" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_TFName" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,TeacherFName%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxTFName" type="text" maxlength="50" id="tbxTeacherFName" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_TLName" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,TeacherLName%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxTLName" type="text" maxlength="50" id="tbxTeacherLName" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_GTtile" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,GradeTitle%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxGTitle" type="text" maxlength="50" id="tbxGradeTitle" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_Daye" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,Day%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxDay" type="text" maxlength="50" id="tbxDay" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-4 col-sm-push-8 text-right">
                            <span id="ContentPlaceHolder1_lbl_Time" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:literal runat="server" text="<%$ Resources:Dashboard,Time%>" />
                            </span>
                        </div>

                        <div class="col-xs-12 col-sm-8 col-sm-pull-4 text-right">
                            <input name="ctl00$ContentPlaceHolder1$tbxTime" type="text" maxlength="50" id="tbxTime" runat="server" class="form-control text-right dirRight" />
                        </div>
                    </div>
                </div>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-xs-4 text-left">
                        <a href="http://localhost:4911/Dashboard/Admin/LessonGroups.aspx" class="btn btn-default">
                            <span class="fa fa-chevron-left"></span>
                            <asp:literal runat="server" text="<%$ Resources:Dashboard,Back%>" />
                        </a>
                    </div>
                    <div class="col-xs-8 text-right">

                        <asp:button id="btnSabtLesson" name="btnSabt" class="btn btn-primary" runat="server"
                            text="<%$ Resources:Dashboard,sabt%>" onclick="btnSabtLessonGroup_Click" />
                    </div>
                </div>

                <div class="extra" style="height: 100px">
                </div>
            </div>
        </div>
    </div>
</asp:Content>
