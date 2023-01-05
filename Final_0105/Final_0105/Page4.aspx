<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page4.aspx.cs" Inherits="Final_0105.Page5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="List："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Country："></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Number" HeaderText="Number" ReadOnly="True" SortExpression="Number" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Segment" HeaderText="Segment" SortExpression="Segment" />
            <asp:BoundField DataField="List" HeaderText="List" SortExpression="List" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105504ConnectionString %>" SelectCommand="SELECT    COUNT(Computer_info.Computer) AS Number, Site_info.Country, Computer_info.Segment, Computer_info.List
FROM       Site_info INNER JOIN
               Computer_info ON Site_info.SiteID = Computer_info.SiteID
WHERE    (Computer_info.List LIKE @List) AND (Site_info.Country LIKE @Country)
GROUP BY Site_info.Country, Computer_info.List, Computer_info.Segment">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="List" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="Country" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
