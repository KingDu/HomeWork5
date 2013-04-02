<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewCarTableFOrCustomers.aspx.vb" Inherits="gridview" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
    
        <br />
        <asp:SqlDataSource ID="Cardealer_APP" runat="server" 
            ConnectionString="<%$ ConnectionStrings:cs_CarDealershipApplication %>" 
            SelectCommand="SELECT * FROM [New_Car]">
        </asp:SqlDataSource>
        <br />
        <a href="default.aspx">Home</a>
        <br />
 
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Car_ID" 
            DataSourceID="Cardealer_APP" Width="700px" CssClass="cssgridview">
            <Columns>
                <asp:BoundField DataField="Car_Make" HeaderText="Make" 
                    SortExpression="Car_Make" />
                <asp:BoundField DataField="Car_Model" HeaderText="Model" 
                    SortExpression="Car_Model" />
                <asp:BoundField DataField="Car_Year" HeaderText="Year" 
                    SortExpression="Car_Year" />
                <asp:BoundField DataField="Car_Price" HeaderText="Price" 
                    SortExpression="Car_Price" />
                <asp:BoundField DataField="Car_Color" HeaderText="Color" 
                    SortExpression="Car_Color" />
                <asp:BoundField DataField="Shipped_From" HeaderText="Previous Location" 
                    SortExpression="Shipped_From" />
            </Columns>
        </asp:GridView>
    
    </div>
</asp:Content>
