<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2.aspx.cs" Inherits="Final_0105.Page2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="List："></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="166px" Width="370px">
        <Columns>
            <asp:BoundField DataField="ComputerNumber" HeaderText="ComputerNumber" ReadOnly="True" SortExpression="ComputerNumber" />
            <asp:BoundField DataField="Segment" HeaderText="Segment" SortExpression="Segment" />
            <asp:BoundField DataField="List" HeaderText="List" SortExpression="List" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:M11105504ConnectionString %>" SelectCommand="SELECT COUNT(Computer) AS ComputerNumber, Segment, List
FROM Computer_info
WHERE List LIKE @List
GROUP BY Segment, List
ORDER BY ComputerNumber DESC">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="List" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
