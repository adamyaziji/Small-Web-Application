<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 784px; width: 770px;">
    <form id="form1" runat="server">
    <div style="height: 38px; margin-left: 80px;">
    
        <asp:Label ID="Dob_msg" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#0066FF" Text="First, please enter your date of birth"></asp:Label>
        :<br />
        <br />
        <asp:Label ID="Day_lb" runat="server" Text="Day"></asp:Label>
        &nbsp;(dd)
        <asp:TextBox ID="Dateinput_tb" runat="server" Width="72px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Month_lb" runat="server" Text="Month"></asp:Label>
        &nbsp;(mm)&nbsp;
        <asp:TextBox ID="Monthinput_tb" runat="server" Width="75px"></asp:TextBox>
        &nbsp;
        <asp:Label ID="Year_lb" runat="server" Text="Year"></asp:Label>
        &nbsp;(yyyy)&nbsp;
        <asp:TextBox ID="Yearinput_tb" runat="server" Width="73px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="dobEnter" runat="server" OnClick="dobEnter_Click" Text="Enter" />
        <br />
        <br />
        <br />
        <asp:Label ID="Happybirthday_msg" runat="server"></asp:Label>
        <br />
        <br />
        <br />

        <asp:Label ID="Welcome_msg" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#0066FF" Text="Ready to play Rock, Paper, Scissors, Lizard, Spock?"></asp:Label>
        <br />
        <br />
        
        <asp:RadioButton ID="Rockbutton" runat="server" Text="Rock" GroupName="choicelist" />
        <br />
        
        <asp:RadioButton ID="Paperbutton" runat="server" Text="Paper" GroupName="choicelist" />
        <br />
       
        <asp:RadioButton ID="Scissorsbutton" runat="server" Text="Scissors" GroupName="choicelist" />
        <br />
        
        <asp:RadioButton ID="Lizardbutton" runat="server" Text="Lizard" GroupName="choicelist" />
        <br />
        
        <asp:RadioButton ID="Spockbutton" runat="server" Text="Spock" GroupName="choicelist" />
        <br />
        <br />
        <asp:Label ID="Rules_lb" runat="server" ForeColor="Red" Text="Please be aware of the following rules..."></asp:Label>
        <br />
        <br />
        <ul>
            <li> Scissors beats paper </li>
            <li> Paper beats rock </li>
            <li> Rock beats lizard </li>
            <li> Lizard beats Spock </li>
            <li> Spock beats scissors </li>
            <li> Scissors beats lizard </li>
            <li> Lizard beats paper  </li>
            <li> Paper beats Spock  </li>
            <li> Spock beats rock </li>
            <li> Rock beats scissors </li.>
            </li>
        </ul>
        
        <br />
        <br />

        <asp:Button ID="playButton" runat="server" Height="29px" OnClick="playButton_Click" Text="Play!" Width="183px" />
        
        <asp:Button ID="playAgainButton" runat="server" Height="29px" OnClick="playAgainbutton_Click" Text="Play Again?" Width="175px" />
        
        <br />
        <br />
    
        <asp:Label ID="computerChoice_lb" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="result_lb" runat="server"></asp:Label>
    
        <br />
        <br />

    </div>
        
    <p>
        &nbsp;</p>
        
    </form>
    </body>
</html>
