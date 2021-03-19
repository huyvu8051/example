<%@ Page  Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Backend._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        .auto-style1 {
            width: 195px;
        }
        .auto-style2 {
            width: 268px;
        }
        .auto-style3 {
            width: 303px;
        }
        .auto-style4 {
            width: 195px;
            height: 47px;
        }
        .auto-style5 {
            width: 268px;
            height: 47px;
        }
    </style>
    <table>
        <tr>
            
            <td class="auto-style1">Id:
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style1">Nhập title:
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Nhập description:
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Chọn trang:</td>
            <td class="auto-style2">
                <asp:DropDownList ID="ddKey" runat="server" Width="253px">
                    <asp:ListItem Text="Home" Value="Home"></asp:ListItem>
                    <asp:ListItem Text="About" Value="About"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnInsert" runat="server" Text="Save" OnClick="btnInsert_Click" />
            </td>
            <td>
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </td>
            
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" HtmlEncode="False" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" HtmlEncode="False" />
            <asp:BoundField DataField="KeyForPage" HeaderText="KeyForPage" SortExpression="KeyForPage" />
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Edit" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DemoDatabaseConnectionString %>" SelectCommand="SELECT * FROM [TextBog]" InsertCommand="INSERT INTO TextBog(Title, Description, KeyForPage) VALUES (@Title, @Description, @KeyForPage)" DeleteCommand="DELETE FROM TextBog WHERE (id = @id)" UpdateCommand="UPDATE TextBog SET Title = @Title, Description = @Description, KeyForPage = @KeyForPage where (id = @id)">
        <DeleteParameters>
            <asp:ControlParameter ControlID="txtId" Name="id" PropertyName="Text" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtTitle" Name="Title" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="Description" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddKey" Name="KeyForPage" PropertyName="SelectedValue" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtTitle" Name="Title" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtDescription" Name="Description" PropertyName="Text" />
            <asp:ControlParameter ControlID="ddKey" Name="KeyForPage" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="txtId" Name="id" PropertyName="Text" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
