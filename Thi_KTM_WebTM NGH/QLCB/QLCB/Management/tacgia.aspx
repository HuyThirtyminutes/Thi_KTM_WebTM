<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="tacgia.aspx.cs" Inherits="QLCB.Management.tacgia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tgia_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="322px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="tgia_id" HeaderText="tgia_id" ReadOnly="True" SortExpression="tgia_id" />
            <asp:BoundField DataField="tentg" HeaderText="tentg" SortExpression="tentg" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString1 %>" DeleteCommand="DELETE FROM [tacgia] WHERE [tgia_id] = @tgia_id" InsertCommand="INSERT INTO [tacgia] ([tgia_id], [tentg], [email]) VALUES (@tgia_id, @tentg, @email)" ProviderName="<%$ ConnectionStrings:tintucConnectionString1.ProviderName %>" SelectCommand="SELECT [tgia_id], [tentg], [email] FROM [tacgia]" UpdateCommand="UPDATE [tacgia] SET [tentg] = @tentg, [email] = @email WHERE [tgia_id] = @tgia_id">
        <DeleteParameters>
            <asp:Parameter Name="tgia_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tgia_id" Type="String" />
            <asp:Parameter Name="tentg" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tentg" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="tgia_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="tgia_id" DataSourceID="SqlDataSource1" Height="50px" Width="174px">
        <Fields>
            <asp:BoundField DataField="tgia_id" HeaderText="tgia_id" ReadOnly="True" SortExpression="tgia_id" />
            <asp:BoundField DataField="tentg" HeaderText="tentg" SortExpression="tentg" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
