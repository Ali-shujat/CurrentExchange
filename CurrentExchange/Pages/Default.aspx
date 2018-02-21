<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script src="../Scripts/jquery-3.3.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <%--<SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />--%>

    <!-- Add your CSS styles to the following file -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    Current exchange
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div class="container">
    <!-- Title -->
    <div class="row">
        <div class="col-lg-3 " style="padding:100px 0px 0px 0px">
            <div class="input-group">
                <input id="curr_number" type="text" name="quantity" class="form-control">
                <div class="input-group-append">
                    <button id="rsButton" class="btn btn-outline-secondary" type="button">
                        <img src="../Images/flag_sweden.png" alt="sweimg" style="width:20%;"/> Convert</button>
                </div>
            </div>
          <br />
            <%--<input type="number" name="quantity" min="1" max="1000000" id="curr_number"/>--%>
            <%--<button id="rsButton" type="button" class="btn btn-outline-primary btn-lg">
                Krona Convert </button>--%>
            <!-- <div id="currencyResult"></div><hr> -->
            <table class="table table-dark col-lg-3 ">
                <tr>
                    <th>Country</th>
                    <th>Currency Rates</th>
                </tr>
                <tr>
                    <td>
                        <img src="../Images/Pakistan-icon.png" alt="" style="width:25%;" /> PKR
                    </td>
                    <td class="pkrSek"></td>
                </tr>
                <tr>
                    <td>
                        <img src="../Images/Canada-icon.png" alt="" style="width:25%;"/> CAN $
                    </td>
                    <td class="canSek"></td>
                </tr>
                <tr>
                    <td>
                        <img src="../Images/United-States-icon.png" alt="" style="width:25%;"/> US $
                    </td>
                    <td class="usaSek"></td>
                </tr>
                <tr>
                    <td>
                        <img src="../Images/Norway-icon.png" alt="" style="width:25%;"/> NEK
                    </td>
                    <td class="norSek"></td>
                </tr>
                <tr>
                    <td>
                        <img src="../Images/Denmark-icon.png" alt="" style="width:25%;"/> DKK
                    </td>
                    <td class="denSek"></td>
                </tr>
                <tr>
                    <td>
                        <img src="../Images/England-icon.png" alt="" style="width:25%;"/> GBP £
                    </td>
                    <td class="engSek"></td>
                </tr>
            </table>
        </div>
    </div>


</asp:Content>
