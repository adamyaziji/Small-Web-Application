using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string day, month, daymonth;
    string today = DateTime.Now.ToString("dd-MM"); //convert todays time into a string
    int comp;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void playButton_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        int comp = random.Next(0, 6); // randomise computers choice

        /**
         * These if statements determine which choice the computer
         * has made and prints out its choice for the user to see
         * once they have made a move.
         **/


        if (comp == 1)
        {
            computerChoice_lb.Text = "Computer has chosen Rock";
        }

        if (comp == 2)
        {
            computerChoice_lb.Text = "Computer has chosen Paper";
        }

        if (comp == 3)
        {
            computerChoice_lb.Text = "Computer has chosen Scissors";
        }

        if (comp == 4)
        {
            computerChoice_lb.Text = "Computer has chosen Lizard";
        }

        if (comp == 5)
        {
            computerChoice_lb.Text = "Computer has chosen Spock";
        }


        /**
         * These sets of if statements determine whether the user or
         * the computer has won, lost or if there is a draw
         * depending on their choices. 
         **/
        if (Rockbutton.Checked == true)
        {
            if (comp == 3 || comp == 4)
            {
                result_lb.Text = "Congratulations, you win!";
            }

            else if (comp == 1)
            {
                result_lb.Text = "It's a draw!";
            }
            else
            {
                result_lb.Text = "Sorry, you lose!";

            }
        }

        if (Paperbutton.Checked == true)
        {
            if (comp == 1 || comp == 5)
            {
                result_lb.Text = "Congratulations, you win!";
            }
            else if (comp == 2)
            {
                result_lb.Text = "It's a draw!";
            }
            else
            {
                result_lb.Text = "Sorry, you lose!";
            }
        }

        if (Scissorsbutton.Checked == true)
        {
            if (comp == 2 || comp == 4)
            {
                result_lb.Text = "Congratulations, you win!";
            }
            else if (comp == 3)
            {
                result_lb.Text = "It's a draw!";
            }
            else
            {
                result_lb.Text = "Sorry, you lose!";
            }
        }

        if (Lizardbutton.Checked == true)
        {
            if (comp == 2 || comp == 5)
            {
                result_lb.Text = "Congratulations, you win!";
            }
            else if (comp == 4)
            {
                result_lb.Text = "It's a draw!";
            }
            else
            {
                result_lb.Text = "Sorry, you lose!";
            }
        }

        if (Spockbutton.Checked == true)
        {
            if (comp == 1 || comp == 3)
            {
                result_lb.Text = "Congratulations, you win!";
            }
            else if (comp == 5)
            {
                result_lb.Text = "It's a draw!";
            }
            else
            {
                result_lb.Text = "Sorry, you lose!";
            }
        }
    }

    /**
     * This method deselects whichever radio button has been selected
     * so the user can play again.
     **/
    protected void playAgainbutton_Click(object sender, EventArgs e)
    {
        Rockbutton.Checked = false;
        Paperbutton.Checked = false;
        Scissorsbutton.Checked = false;
        Lizardbutton.Checked = false;
        Spockbutton.Checked = false;
    }

    /**
     * This method takes in whatever the user has typed into the
     * day and month text boxes and creates a string based on (dd-mm).
     * e.g. the string will contain "03-12".
     * This string is then compared to the current date to see if it
     * is their birthday.
     **/
    protected void dobEnter_Click(object sender, EventArgs e)
    {
        month = Monthinput_tb.Text;
        day = Dateinput_tb.Text;
        daymonth = (day + "-" + month);

        if (daymonth == today)
        {
            Happybirthday_msg.Text = "Happy Birthday!!";
        }
    }
}