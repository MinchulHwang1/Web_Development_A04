<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hilo_Input_Number.aspx.cs" Inherits="WDD_A04.Input_Number.Hilo_Input_Number" %>

<!DOCTYPE html>
<!--
    This source is the second File of Hi-lo game
    In this part, user input max number which cannot be 1,
    and the program generates a random integer number between 1 and user input maximum number
    this number is checked by ASP.NET validator.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hilo_Input_Number.aspx - WDD A04</title>
     <style>
     body{background-color: rgb(222, 166, 45);}
     h1{
            display: flex;
            flex-direction: column;
            align-items: center;
            font-style :oblique;
            color: rgb(226, 80, 82);
        }
     p{
         color:blueviolet;
         font-size: 30px;
         font-style :inherit;
     }
     .input_centerAlign{
         display: flex;
         flex-direction: column;
         align-items: center;
         justify-content: center;
     }
     
 </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="input_centerAlign">
            <h1>OK <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> </h1>
            <hr />
            <br />
            <p>Insert the Maxmum number you want</p>
            <br />
        
            <asp:TextBox ID="Num" runat="server" ToolTip ="Insert Integer number"></asp:TextBox>
            <br />
            <asp:Button ID="NumButton" runat="server" Text="Submit" onclick="inputNumButton" />
            <br />
            <!-- if user input nothing or a words consist of alphabet(not number) -->
            <asp:RequiredFieldValidator ID="NumberFieldValidator" runat="server" 
                ErrorMessage="Error : Please Insert an integer Number(more than 1)" ControlToValidate="Num"
                ForeColor ="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="NumberValidator" runat="server" 
                ErrorMessage="Error : Please Insert an integer Number(more than 1)" ControlToValidate ="Num"
                ValidationExpression="^(?!1$)[1-9]\d*$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
    </form>
</body>
</html>
