<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="Final_0105.Page3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Country："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SiteID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SiteID" HeaderText="SiteID" ReadOnly="True" SortExpression="SiteID" />
            <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Continent" HeaderText="Continent" SortExpression="Continent" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105504ConnectionString %>" SelectCommand="SELECT SiteID, Site, Region, Country, Continent FROM dbo.Site_info
Where Country LIKE @Country">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Country" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
