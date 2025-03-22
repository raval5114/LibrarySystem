<%@ Page Title="" Language="C#" MasterPageFile="~/ForAdmin.Master" AutoEventWireup="true" CodeBehind="Add_Book.aspx.cs" Inherits="LibrarySystem.Admin.Add_Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../App_Themes/Theme1/Admindesign.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="pnl">
                <tr>
                    <td>
                        <asp:TextBox ID="booknametxt" runat="server" placeholder="Enter Book Name" CssClass="inputbox"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:TextBox ID="authortxt" runat="server" placeholder="Enter Author Name" CssClass="inputbox"></asp:TextBox>
                    </td>
                </tr>
             
       
                <tr>
                    <td>
                        <asp:TextBox ID="descriptiontxt" runat="server" placeholder="Enter Book's Overview" CssClass="inputbox"></asp:TextBox>
                    </td>
                </tr>
        <tr>
                    <td>
                        <asp:TextBox ID="categorytxt" runat="server" placeholder="Enter Book's category" CssClass="inputbox"></asp:TextBox>
                    </td>
                </tr>
               <tr>
                    <td>
                        <asp:TextBox ID="statustxt" runat="server" placeholder="Enter Book's status" CssClass="inputbox"></asp:TextBox>
                    </td>
                </tr>
         
                <tr>
                    <td>
                        <asp:TextBox ID="shelftxt" runat="server" placeholder="Enter Rake Numebr" CssClass="inputbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Upload Book's Image Here:" Font-Size="Medium"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
            
            
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Add New Book" CssClass="smtbtn" OnClick="Button1_Click"  />
                </td>
            </tr>
        
            </table>       
                   
        
</asp:Content>
