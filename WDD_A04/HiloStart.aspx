<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiloStart.aspx.cs" Inherits="WDD_A04.HiloStart" %>


<!DOCTYPE html>
<!--
    This source is basic source of Hi-lo game developed through HTML code.
    It is actually do as assignment 1,3 of WDD
    This program used ASP.NET workfram and need 3 aspx files called (Hilo_Input_Number, Hilo_Guess_Number, and Hilo_Win)
    furthermore, this program uses serverside-> code behind style.
     - Insert your name first.
     - Choose the maximum number whatever you want
       - the number should be higher than 1
       - the number type should be integer
     - Press Submit button, then the random number will be occur between 1 and the number you inserted
     - track the random number until you find it.
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HiloStart.aspx - WDD A04</title>
    <style>
        body{background-color: rgb(222, 142, 45);}
        h1{
            font-style: initial;
            color: aquamarine;
        }
        
        p{
            display: flex;
            flex-direction: column;
            align-items: center;
            font-size: 30px;
            font-style:italic;
            color:blue
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
    <form id="Hilo_form" runat="server">
      <div class="input_centerAlign">
        <asp:Label runat="server" Text="<h1>Let's play <i>Hi-lo</i> game!</h1>" ></asp:Label>
        <p>What is your name?</p>
       
        
            <asp:TextBox ID="Name" runat="server" ToolTip="Insert your name(Only Alpha)"></asp:TextBox>
            <br />
            <asp:Button ID="NameButton" runat="server" Text="Submit" 
                onclick="Load_Hilo_Input_Number"/>
            <br />
          <!-- if user input nothing or not a words consist of alphabet -->
            <asp:RequiredFieldValidator ID="NameValidator" runat="server" 
                ErrorMessage="Insert your name again" ControlToValidate="Name"
                ForeColor="#FF0F00F" Display="Dynamic" ></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="NameExpressionValidator" runat="server" 
                ErrorMessage="Name must be consisted of <i>Alpha</i> only" ControlToValidate="Name"
                ValidationExpression="^[A-Za-z\s]+$" ForeColor="#FF0F00F"  Display="Dynamic" ></asp:RegularExpressionValidator>
        </div>
    </form>
</body>
</html>
