<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewCarTable.aspx.vb" Inherits="gridview" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
    
        <br />
        <asp:SqlDataSource ID="Cardealer_APP" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_CarDealershipApplication %>" 
            DeleteCommand="DELETE FROM [New_Car] WHERE [Car_ID] = @Car_ID" 
            InsertCommand="INSERT INTO [New_Car] ([Car_Make], [Car_Model], [Car_Year], [Car_Price], [Car_Color], [Shipped_From]) VALUES (@Car_Make, @Car_Model, @Car_Year, @Car_Price, @Car_Color, @Shipped_From)" 
            SelectCommand="SELECT * FROM [New_Car]" 
            UpdateCommand="UPDATE [New_Car] SET [Car_Make] = @Car_Make, [Car_Model] = @Car_Model, [Car_Year] = @Car_Year, [Car_Price] = @Car_Price, [Car_Color] = @Car_Color, [Shipped_From] = @Shipped_From WHERE [Car_ID] = @Car_ID">
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
        <a href="InsertNewCars.aspx">Release a New Car</a>
        <br />

        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Car_ID" 
            DataSourceID="Cardealer_APP" Width="700px" CssClass="cssgridview" PageSize = "10">
            <Columns>
                <asp:BoundField DataField="Car_Make" HeaderText="Make" 
                    SortExpression="Car_Make" />
                <asp:BoundField DataField="Car_Model" HeaderText="Model" 
                    SortExpression="Car_Model" />
                <asp:HyperLinkField DataNavigateUrlFields="Car_ID" 
                    DataNavigateUrlFormatString="NewCarDetails.aspx?Car_ID={0}" 
                    Text="View Car Details" />
            </Columns>
        </asp:GridView>
    
    </div>
</asp:Content>
