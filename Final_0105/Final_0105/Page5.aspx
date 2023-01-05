<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page5.aspx.cs" Inherits="Final_0105.Page4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="List："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="minRank："></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="maxRank"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="List" HeaderText="List" SortExpression="List" />
            <asp:BoundField DataField="Rank" HeaderText="Rank" SortExpression="Rank" />
            <asp:BoundField DataField="Computer" HeaderText="Computer" SortExpression="Computer" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105504ConnectionString %>" SelectCommand="SELECT    List, Rank,  Computer
FROM       List
WHERE    (List LIKE @List) AND (Rank &gt; @minRank)  AND (Rank &lt; @maxRank)
ORDER BY Rank">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="List" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="minRank" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox3" Name="maxRank" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
