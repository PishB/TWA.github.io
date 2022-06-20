<%@ Page Language="C#" AutoEventWireup="true" Inherits="LoginPage" EnableViewState="false" CodeBehind="Login.aspx.cs" %>

<%@ Register Assembly="DevExpress.ExpressApp.Web.v19.1" Namespace="DevExpress.ExpressApp.Web.Templates.ActionContainers"
    TagPrefix="cc2" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v19.1" Namespace="DevExpress.ExpressApp.Web.Templates.Controls"
    TagPrefix="tc" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v19.1" Namespace="DevExpress.ExpressApp.Web.Controls"
    TagPrefix="cc4" %>
<%@ Register Assembly="DevExpress.ExpressApp.Web.v19.1" Namespace="DevExpress.ExpressApp.Web.Templates"
    TagPrefix="cc3" %>
<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>Logon</title>
    <link rel="shortcut icon" type="image/x-icon" href="Images/favicon.ico" />
    <style type="text/css">
        .dxlpControl_XafTheme.dxlpLoadingDiv_XafTheme {
            background-color: #000000 !important;
            opacity: 0.5 !important;
        }

        .dxeErrorFrameWithoutError_XafTheme {
            border: 1px solid #f44336;
            border-radius: 5px;
            padding: 0 !important;
        }

        .dxca-imageDiv {
            background-color: #5871b5 !important;
        }


        div#Logon_ErrorInfo {
            margin-bottom: 5px;
        }

        .ErrorMessage {
            text-align: right;
            direction: rtl;
        }

        .samimCaptcha .dxca-imageDiv {
            border-radius: 5px !important;
        }

        .samimCaptcha .dxeRoot_XafTheme, .samimCaptchaTextBox, .samimCaptcha {
            width: 100% !important;
        }

        .dxcaRefreshButtonText_XafTheme {
            font-family: IRANSans !important;
            font-size: 14px !important;
            font-weight: bold !important;
            color: #4a4a4a;
            text-decoration: none;
        }

        .samimCaptcha {
            position: relative;
        }

            .samimCaptcha .dxcaTextBoxCellNoIndent_XafTheme {
                padding-top: 25px;
                margin-top: 45px !important;
                position: relative;
                top: 8px;
            }

        td.dxcaRefreshButtonCell_XafTheme {
            position: absolute;
            z-index: 9999;
            right: 150px;
            top: 5px;
        }

        .samimCaptcha table {
            width: 100% !important;
        }

        @font-face {
            font-family: IRANSans;
            font-style: normal;
            font-weight: bold;
            src: url('fonts/IRANSans.eot');
            src: url('fonts/IRANSans.eot?#iefix') format('embedded-opentype'), /* IE6-8 */
            url('fonts/IRANSans.woff2') format('woff2'), /* FF39+,Chrome36+, Opera24+*/
            url('fonts/IRANSans.woff') format('woff'), /* FF3.6+, IE9, Chrome6+, Saf5.1+*/
            url('fonts/IRANSans.ttf') format('truetype');
            font-display: swap;
        }

        div#Logon_v0_14699671_MainLayoutEdit_xaf_l12_xaf_l21 {
            width: 100% !important;
        }

        .LogonTemplate div:nth-child(3) {
            top: 20% !important;
        }

        /*Customazation Of Loading Progress Controll*/
        .dxlpLoadingPanel_XafTheme, .dxlpLoadingPanelWithContent_XafTheme {
            border-radius: 10px !important;
        }

            .dxlpLoadingPanel_XafTheme td.dx, .dxlpLoadingPanelWithContent_XafTheme td.dx {
                white-space: nowrap !important;
                text-align: center !important;
                border-radius: 5px !important;
                font-family: 'IRANSans' !important;
                font-size: 18px !important;
                font-weight: bold !important;
            }

            .dxlpLoadingPanel_XafTheme .dxlp-loadingImage, .dxflFormLayout_XafTheme.dialog-formlayout.dialog-preparing:after, .dxlpLoadingPanelWithContent_XafTheme .dxlp-loadingImage {
                background-image: url(Images/LogoPishgam.svg?v=1) !important;
                height: 50px !important;
                width: 50px !important;
                animation-name: spin;
                animation-duration: 2000ms;
                animation-iteration-count: infinite;
                animation-timing-function: linear;
                /* transform: rotate(3deg); */
                /* transform: rotate(0.3rad);/ */
                /* transform: rotate(3grad); */
                /* transform: rotate(.03turn);  */
            }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }
        /*End Of Customazation Of Loading Progress Controll*/

        span#Logon_v0_14699671_MainLayoutEdit_xaf_l12_xaf_l21_xaf_l21_xaf_dviLogonText {
            font-family: IRANSans, Tahoma !important;
            font-size: 16px;
        }

        td.Caption.vaCenter {
            font-family: IRANSans !important;
            font-size: 14px !important;
            font-weight: bold !important;
        }

        .LogonContentCell table:first-child > tbody > tr > td > div {
            float: right;
        }

        .LogonContentLogonContentWidth {
            background-image: url("Group 373.png") !important;
            background-repeat: no-repeat;
            background-size: 100%;
            padding-top: 200px;
        }

        .LogonContentWidth {
            width: 500px;
            height: 550px;
            padding: 20px;
            background: rgb(255 255 255 / 80%);
            border-radius: 25px;
            border: none;
        }

        /*        .Item img {
            display: none
        }*/

        .CardGroupContent {
            background-color: transparent !important;
        }

        .firstEditorContainer {
            width: 100% !important;
        }

        .dxpnlControl_XafTheme.GroupContent.Adaptivity.AdaptivityEditorContainer.lastEditorContainer {
            width: 100% !important;
        }

        .dxm-content {
            font-family: IRANSans,tahoma !important;
            font-size: 16px;
        }

        ul.dx.dxm-image-r.dxm-noImages {
            margin-right: 61px;
            border-bottom: 5px solid #004886;
        }

        div#Logon_UPPopupActions ul li {
            border-radius: 0 !important;
        }

            div#Logon_UPPopupActions ul li a {
                padding: 14px 83px 14px 83px !important;
            }

        span.StaticText {
            font-family: IRANSans !important;
            font-size: 16px !important;
            font-weight: bold !important;
        }

        input {
            height: 40px;
        }

        .dxeTextBoxSys {
            border-radius: 5px;
        }

        .Item.LogonItemClassCSS {
            padding-right: 0 !important;
        }

        .dxpnlControl_XafTheme .Item {
            padding-right: 0 !important;
        }

        .Pedi {
            background-color: transparent;
        }

        .Logon_UPVSC {
            margin: 100px;
        }

        .GroupContent Adaptivity AdaptivityEditorContainer CardGroupBase lastVerticalCardGroup {
            margin-right: 50px !important;
        }
    </style>

</head>

<body class="Dialog" background="Images\Asset 1@1080x-100.jpg" style="background-size: cover !important;">

    <div id="PageContent" class="PageContent DialogPageContent">

        <form id="form1" runat="server">
            <cc4:ASPxProgressControl ID="ProgressControl" runat="server" />
            <div id="Content" runat="server" />
        </form>

    </div>

</body>

</html>


