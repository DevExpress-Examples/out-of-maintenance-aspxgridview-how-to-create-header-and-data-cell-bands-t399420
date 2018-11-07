<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="800px" Theme="Office2003Blue">
            <Columns>
                <dx:GridViewBandColumn Caption="Employee Information" VisibleIndex="10">
                    <HeaderStyle HorizontalAlign="Center" />
                    <Columns>
                        <dx:GridViewDataTextColumn FieldName="Title" VisibleIndex="0">
                            <HeaderStyle HorizontalAlign="Center" />
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="BirthDate" VisibleIndex="2">
                                </dx:GridViewDataDateColumn>
                            </Columns>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="1">
                            <HeaderStyle HorizontalAlign="Center" />
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="City" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="PostalCode" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="HomePhone" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="HireDate" VisibleIndex="2">
                            <HeaderStyle HorizontalAlign="Center" />
                        </dx:GridViewDataDateColumn>
                    </Columns>
                </dx:GridViewBandColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [LastName], [FirstName], [Title], [BirthDate], [HireDate], [Address], [City], [PostalCode], [Country], [HomePhone] FROM [Employees]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
