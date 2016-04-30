<%@ Page Title="" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CanIDonate.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/login.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:Panel runat="server" CssClass="login" DefaultButton="btnLogin">
                <h1>Login</h1>
                <asp:ValidationSummary runat="server" CssClass="validation-summary" />

                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtUsername" Text="Username"></asp:Label>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="txtPassword" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
        
                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-danger" OnClick="btnLogin_Click" />
                <asp:CustomValidator ID="cv" runat="server" ErrorMessage="" Text="*" Display="None"></asp:CustomValidator>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>      
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="javascript" runat="server">

</asp:Content>
