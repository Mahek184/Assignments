<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_3.aspx.cs" Inherits="Assignments.Assignment_1.Task_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f9;
            color: #333;
        }
        form {
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background: white;
        }
        input, select, button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        button {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .result {
            font-size: 18px;
            font-weight: bold;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblNumber1" runat="server" Text="Enter the first number:"></asp:Label>
        <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>

        <asp:Label ID="lblNumber2" runat="server" Text="Enter the second number:"></asp:Label>
        <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>

        <asp:Label ID="lblOperation" runat="server" Text="Choose an operation:"></asp:Label>
        <asp:DropDownList ID="ddlOperation" runat="server">
            <asp:ListItem Text="Addition" Value="add"></asp:ListItem>
            <asp:ListItem Text="Subtraction" Value="subtract"></asp:ListItem>
            <asp:ListItem Text="Multiplication" Value="multiply"></asp:ListItem>
            <asp:ListItem Text="Division" Value="divide"></asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />

        <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
