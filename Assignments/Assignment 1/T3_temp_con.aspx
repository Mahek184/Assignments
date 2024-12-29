<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="T3_temp_con.aspx.cs" Inherits="Assignments.Assignment_1.T3_temp_con" %>

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
             <asp:Label ID="lblTemperature" runat="server" Text="Enter Temperature:"></asp:Label>
        <asp:TextBox ID="txtTemperature" runat="server"></asp:TextBox>

        <asp:Label ID="lblConversionType" runat="server" Text="Select Conversion Type:"></asp:Label>
        <asp:DropDownList ID="ddlConversionType" runat="server">
            <asp:ListItem Text="Celsius to Fahrenheit" Value="CtoF"></asp:ListItem>
            <asp:ListItem Text="Fahrenheit to Celsius" Value="FtoC"></asp:ListItem>
        </asp:DropDownList>

        <asp:Button ID="btnConvert" runat="server" Text="Convert" OnClick="btnConvert_Click" />

        <asp:Label ID="lblResult" runat="server" CssClass="result"></asp:Label>
        </div>
    </form>
</body>
</html>
