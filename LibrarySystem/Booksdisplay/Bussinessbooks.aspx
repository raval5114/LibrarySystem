<%@ Page Title="" Language="C#" MasterPageFile="~/UserIterface.Master" AutoEventWireup="true" CodeBehind="Bussinessbooks.aspx.cs" Inherits="LibrarySystem.Booksdisplay.Bussinessbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server">
        <HeaderTemplate>
        <div class="product-grid">
    </HeaderTemplate>
        <ItemTemplate>
             <div class="product-card">
        
            <asp:Image ID="imgbook" runat="server" CssClass="product-img" ImageUrl='<%# Eval("Bookimage") %>' AlternateText="Product Image" />

            <h2>
                <asp:Label ID="titlelbl" runat="server" Text='<%# Eval("Title") %>' CssClass="product-title"></asp:Label>
            </h2>

            <h5>
                <asp:Label ID="authorlbl" runat="server" Text='<%# Eval("Author") %>' CssClass="product-name"></asp:Label>
            </h5>

            <p class="product-price">
                <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
            </p>

            <p class="product-days">
                <asp:Label ID="lblRentalDays" runat="server" Text='<%# Eval("Booksf") %>'></asp:Label>
            </p>
                  <p class="product-days">
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
            </p>
           
            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("BookID") %>'>LinkButton</asp:LinkButton>
        </div>
   
        </ItemTemplate>

    </asp:Repeater>
</asp:Content>
