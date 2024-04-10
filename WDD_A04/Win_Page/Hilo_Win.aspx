<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hilo_Win.aspx.cs" Inherits="WDD_A04.Win_Page.Hilo_Win" %>

<!DOCTYPE html>
<!--
    This source is the fourth File of Hi-lo game
    In this part, all of sessions which can disturb for the next game will be deleted in server side
    and shows the win display
    and also if user press 'Play Again' button, it will go to Hilo_Input_Number.aspx page
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hilo_Win.aspx - WDD A04</title>
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
        form{
            
            display: flex;
            justify-content: center;
            align-items: center;
            height: 50vh;
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
            <h1>You Won!</h1>
            <!-- Shows the random number, and ask to user to play more -->
            <h1>Your Random Number was <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></h1>
            <br />
            <h2> Well done <i><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></i>!!! </h2>
            <asp:Button ID="PlayAgain" runat="server" Text="Play Again" onclick="Play_Again"/>
        </div>
    </form>
</body>
</html>
