<%@ Page Title="Default" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SQL_3.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="server">
    <div>
        <h5>Create a new account</h5>
        <hr />
        <div class="form-group mb-0">
            <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" Width="50%" placeholder="User Name" autofocus="autofocus">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" CssClass="text-danger" ErrorMessage="User Name field is required" Font-Size="Small">
            </asp:RequiredFieldValidator>
        </div>
        <div class="form-group mb-0">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" Width="50%" placeholder="Password">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="Password field is required" Font-Size="Small">
            </asp:RequiredFieldValidator>
        </div>
        <div class="form-group mb-0">
            <asp:TextBox ID="txtEMail" runat="server" CssClass="form-control" Width="50%" placeholder="E-Mail">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEMail" runat="server" ControlToValidate="txtEMail" CssClass="text-danger" ErrorMessage="E-Mail field is required" Font-Size="Small">
            </asp:RequiredFieldValidator>
        </div>
        <div class="form-group mt-3">
            <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-sm btn-outline-primary" OnClick="btnInsert_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-sm btn-outline-primary" OnClick="btnDelete_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-sm btn-outline-primary" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-sm btn-outline-primary" OnClick="btnReset_Click" />
        </div>
        <div class="form-group form-margin">
            <asp:TextBox ID="txtUpdate" runat="server" CssClass="form-control" Width="50%" placeholder="Enter id for Update">
            </asp:TextBox>
        </div>
        <hr />
        <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphSidebar" runat="server">
</asp:Content>
