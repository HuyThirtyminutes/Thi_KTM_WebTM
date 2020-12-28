<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="tintuc.aspx.cs" Inherits="QLCB.Management.tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="tin_id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="tin_id" HeaderText="tin_id" ReadOnly="True" SortExpression="tin_id" />
            <asp:BoundField DataField="noidung" HeaderText="noidung" SortExpression="noidung" />
            <asp:BoundField DataField="ngaygui" HeaderText="ngaygui" SortExpression="ngaygui" />
            <asp:BoundField DataField="tgia_id" HeaderText="tgia_id" SortExpression="tgia_id" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString1 %>" DeleteCommand="DELETE FROM [tintuc] WHERE [tin_id] = @tin_id" InsertCommand="INSERT INTO [tintuc] ([tin_id], [noidung], [ngaygui], [tgia_id]) VALUES (@tin_id, @noidung, @ngaygui, @tgia_id)" ProviderName="<%$ ConnectionStrings:tintucConnectionString1.ProviderName %>" SelectCommand="SELECT [tin_id], [noidung], [ngaygui], [tgia_id] FROM [tintuc]" UpdateCommand="UPDATE [tintuc] SET [noidung] = @noidung, [ngaygui] = @ngaygui, [tgia_id] = @tgia_id WHERE [tin_id] = @tin_id">
        <DeleteParameters>
            <asp:Parameter Name="tin_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="tin_id" Type="String" />
            <asp:Parameter Name="noidung" Type="String" />
            <asp:Parameter Name="ngaygui" Type="String" />
            <asp:Parameter Name="tgia_id" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="noidung" Type="String" />
            <asp:Parameter Name="ngaygui" Type="String" />
            <asp:Parameter Name="tgia_id" Type="String" />
            <asp:Parameter Name="tin_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="tin_id" DataSourceID="SqlDataSource2" Height="50px" Width="257px">
        <Fields>
            <asp:BoundField DataField="tin_id" HeaderText="tin_id" ReadOnly="True" SortExpression="tin_id" />
            <asp:BoundField DataField="noidung" HeaderText="noidung" SortExpression="noidung" />
            <asp:BoundField DataField="ngaygui" HeaderText="ngaygui" SortExpression="ngaygui" />
            <asp:BoundField DataField="tgia_id" HeaderText="tgia_id" SortExpression="tgia_id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
