<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard/Dashboard.Master" AutoEventWireup="true" CodeBehind="ProfilePicture.aspx.cs" Inherits="WebPages.Dashboard.ProfilePicture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href="Styles/simple-sidebar.css" rel="stylesheet" />
    <link href="Styles/AdminPanelStyles.css" rel="stylesheet" />

    <%--  <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/simple-sidebar.css" rel="stylesheet" />--%>
    <link href="font-awesome-4.3.0/css/font-awesome.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="c-title">

        <h4>
            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,change_picture%>" /></h4>
    </div>
    <div class="c-content">
        <%--<div id="demo-form2" class="form-horizontal form-label-right">--%>
        <div class="col-md-6 col-md-offset-3 col-xs-12">
            <div id="ContentPlaceHolder1_upWait">

                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 text-center">

                            <img id="ContentPlaceHolder1_imgUserPic" class="img-responsive center-margin" src="Images/3408.jpg" style="height: 100px; width: 100px;" />
                        </div>
                    </div>
                </div>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="row">
                        <div class="col-xs-12 col-sm-2 col-sm-push-10 text-right">
                            <span id="ContentPlaceHolder1_lblCoverPhoto" class="control-label formLabel" style="font-size: 100%; font-weight: bold;">
                                <asp:Literal runat="server" Text="<%$ Resources:Dashboard,img_file%>" /></span>
                        </div>

                        <div class="col-xs-12 col-sm-10 col-sm-pull-2 text-right">

                            <label class="btn btn-info btn-upload" for="inputImage" title="Upload image file">
                                <input class="sr-only" id="inputImage" name="file" type="file" accept="image/*" />
                                <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="Import image with Blob URLs">
                                    <asp:Literal runat="server" Text="<%$ Resources:Dashboard,select_img%>" />
                                    <span class="fa fa-photo"></span>
                                </span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="ln_solid"></div>
                <div class="form-group">
                    <div class="col-xs-12 text-right">
                        <a class="btn btn-auto-v btn-auto-h btn-primary goRight" href="/Registration/EditProfile">
                            <asp:Literal runat="server" Text="<%$ Resources:Dashboard,sabt%>" />
                            <span class="fa fa-edit"></span>
                        </a>
                    </div>
                </div>
                <div class="extra" style="height: 100px">
                </div>
            </div>
            <%--</div>--%>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>