<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="CSS/LoginPage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1><span id="firstLogo">Up</span><span id="secondLogo">Grade</span></h1>
        <div class="LoginBlock">
             <asp:TextBox ID="SchoolName" class="textFields" runat="server" autocomplete="off" placeholder="School Name"></asp:TextBox><br />
            <asp:TextBox ID="UserName" class="textFields" runat="server" autocomplete="off" placeholder="ID"></asp:TextBox><br />
            <asp:TextBox ID="Password" class="textFields" runat="server" autocomplete="off" placeholder="Password" type="password"></asp:TextBox>
            <div class="accountTypeSelector">
                <input id="Student" runat="server" type="radio" name="AccountType" value="Student"  />
                <label class="accountType Student" for="Student" title="Student Account"></label>
                <input id="Teacher" runat="server" type="radio" name="AccountType" value="Teacher"  />
                <label class="accountType Teacher"for="Teacher" title="Teacher Account"></label>
                <input id="Admin" runat="server" type="radio" name="AccountType" value="Admin"  />
                <label class="accountType Admin"for="Admin" title="Admin Account"></label>
            </div>    
            <asp:Button ID="LoginButton" OnClick="LoginAccount" runat="server"  Text="Login" />
            <asp:Button ID="testbutton" OnClick="testbutton_Click" runat="server" Text="test" />
        </div>
        <div>

        </div>

    </form>
</body>
</html>
