<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="chude.aspx.cs" Inherits="QLCB.Management.chude" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="chude_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="chude_id" HeaderText="chude_id" ReadOnly="True" SortExpression="chude_id" />
            <asp:BoundField DataField="tencd" HeaderText="tencd" SortExpression="tencd" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString1 %>" DeleteCommand="DELETE FROM [chude] WHERE [chude_id] = @chude_id" InsertCommand="INSERT INTO [chude] ([chude_id], [tencd]) VALUES (@chude_id, @tencd)" ProviderName="<%$ ConnectionStrings:tintucConnectionString1.ProviderName %>" SelectCommand="SELECT [chude_id], [tencd] FROM [chude]" UpdateCommand="UPDATE [chude] SET [tencd] = @tencd WHERE [chude_id] = @chude_id">
        <DeleteParameters>
            <asp:Parameter Name="chude_id" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="chude_id" Type="String" />
            <asp:Parameter Name="tencd" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tencd" Type="String" />
            <asp:Parameter Name="chude_id" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="chude_id" DataSourceID="SqlDataSource1" Height="50px" Width="214px">
        <Fields>
            <asp:BoundField DataField="chude_id" HeaderText="chude_id" ReadOnly="True" SortExpression="chude_id" />
            <asp:BoundField DataField="tencd" HeaderText="tencd" SortExpression="tencd" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cpMainContent1" runat="server">
</asp:Content>
