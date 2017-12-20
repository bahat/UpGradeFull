<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddStudents.aspx.cs" Inherits="AddStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox placeholder="DateOfBirth [MM/DD/YYYY] " ID="DOB" runat="server" ></asp:TextBox>
            <asp:TextBox placeholder="First Name" ID="FirstName" runat="server"></asp:TextBox>
            <asp:TextBox placeholder="Last Name" ID="LastName" runat="server"></asp:TextBox>
            <asp:TextBox placeholder="SchoolID" ID="SchoolID" runat="server"></asp:TextBox>
            <asp:TextBox placeholder="PhoneNumber" ID="PhoneNumber" runat="server"></asp:TextBox>
            <asp:TextBox placeholder="Mail Address" ID="MailAddress" runat="server"></asp:TextBox>
            <asp:Button ID="Insert" runat="server" Text="Button" OnClick="Insert_Click"/>
        </div>
    </form>
</body>
</html>
