<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hilo_Guess_Number.aspx.cs" Inherits="WDD_A04.Guess_Number.Hilo_Guess_Number" %>

<!DOCTYPE html>
<!--
    This source is the third File of Hi-lo game
    In this part, the game logics are in the server part(follow Hi-lo roles)
    and check if the guess number is fit on random number
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hilo_Guess_Number.aspx - WDD A04</title>
    <style>
        body{background-color: rgb(176, 248, 235);}
        h1{
            display: flex;
            flex-direction: column;
            align-items: center;
            font-style :oblique;
            color: rgb(34, 23, 184);
        }
        h2{
            display: flex;
            flex-direction: column;
            align-items: center;
            font-style :oblique;
            color: rgb(75, 36, 201);
        }
      
        p{
            color:rgb(227, 64, 64);
            font-size: 20px;
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
        <h2>Guess Your Number!</h2>
        <br />
        
            <asp:TextBox ID="GuessNumber" runat="server" ToolTip="Insert Integer number"></asp:TextBox>
            
        
            <asp:Button ID="GuessButton" runat="server" Text="Make This Guess" onclick ="guessNumberButton"/>
            <br />
            <!-- if user input nothing or a words consist of alphabet(not number) -->
            <asp:RequiredFieldValidator ID="NumberFieldValidator" runat="server" 
                ErrorMessage="Error : Please Insert an integer Number" ControlToValidate="GuessNumber"
                ForeColor ="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="GuessNumberValidator" runat="server" 
                ErrorMessage="Error : Please Insert an integer Number" ControlToValidate ="GuessNumber"
                ValidationExpression="^[1-9]\d*$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" Display="Dynamic"></asp:Label>
        </div>
        
        <br />
        
    </form>
</body>
</html>
