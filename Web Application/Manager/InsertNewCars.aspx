<%@ Page Language="VB" AutoEventWireup="false" CodeFile="InsertNewCars.aspx.vb"
    Inherits="detailsView" MasterPageFile="~/MasterPage.master" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_CarDealershipApplication %>"
            DeleteCommand="DELETE FROM [New_Car] WHERE [Car_ID] = @Car_ID" InsertCommand="INSERT INTO [New_Car] ([Car_Make], [Car_Model], [Car_Year], [Car_Price], [Car_Color], [Shipped_From]) VALUES (@Car_Make, @Car_Model, @Car_Year, @Car_Price, @Car_Color, @Shipped_From)"
            SelectCommand="SELECT * FROM [New_Car] WHERE ([Car_ID] = @Car_ID)" UpdateCommand="UPDATE [New_Car] SET [Car_Make] = @Car_Make, [Car_Model] = @Car_Model, [Car_Year] = @Car_Year, [Car_Price] = @Car_Price, [Car_Color] = @Car_Color, [Shipped_From] = @Shipped_From WHERE [Car_ID] = @Car_ID">
            <DeleteParameters>
                <asp:Parameter Name="Car_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Car_Make" Type="String" />
                <asp:Parameter Name="Car_Model" Type="String" />
                <asp:Parameter Name="Car_Year" Type="Int32" />
                <asp:Parameter Name="Car_Price" Type="String" />
                <asp:Parameter Name="Car_Color" Type="String" />
                <asp:Parameter Name="Shipped_From" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Car_ID" QueryStringField="Car_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Car_Make" Type="String" />
                <asp:Parameter Name="Car_Model" Type="String" />
                <asp:Parameter Name="Car_Year" Type="Int32" />
                <asp:Parameter Name="Car_Price" Type="String" />
                <asp:Parameter Name="Car_Color" Type="String" />
                <asp:Parameter Name="Shipped_From" Type="String" />
                <asp:Parameter Name="Car_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <a href="default.aspx">Home</a>
        <br />
        <a href="NewCarTable.aspx">View All New Cars</a>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Car_ID"
            DataSourceID="SqlDataSource1" Height="50px" Width="531px" DefaultMode="Insert">
            <Fields>
                <asp:BoundField DataField="Car_Make" HeaderText="Make" SortExpression="Car_Make" />
                <asp:BoundField DataField="Car_Model" HeaderText="Model" SortExpression="Car_Model" />
                <asp:BoundField DataField="Car_Year" HeaderText="Year" SortExpression="Car_Year" />
                <asp:BoundField DataField="Car_Price" HeaderText="Price" SortExpression="Car_Price" />
                <asp:BoundField DataField="Car_Color" HeaderText="Color" SortExpression="Car_Color" />
                <asp:BoundField DataField="Shipped_From" HeaderText="Previous Location" SortExpression="Shipped_From" />
                <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </div>
</asp:Content>
