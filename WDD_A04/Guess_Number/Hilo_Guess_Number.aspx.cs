/** 
 * This Hilo_Guess_Number.aspx.cs's comment
 * Name        : Hilo_Guess_Number.aspx.cs
 * PURPOSE     : This file is responsible for finding random numbers using numbers that have passed the validation check.
                 By calculating the numbers entered by the user, the range continues to decrease, 
                 ultimately helping to reach a random number.
 * Programmer  : Minchul Hwang(8818858)
 */


using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A04.Guess_Number
{
    public partial class Hilo_Guess_Number : System.Web.UI.Page
    {
        int guessCount;     // To check if the insert number is the first number or not

        int min;            // To save min number
        int max;            // To save max number
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string name = Session["Name"] as string;                    // Get name from session Name
                int maxNumber = (int)Session["InputNum"];                   // Get MaxNumber from session InputNum
                int randomNumber = (int)Session["RandomNumber"];            // Get randomNumber from session RandomNumber

                guessCount = 0;                                             // Set guessCount 0
                Session["count"] = guessCount;                              // Set guessCount value into session "count"
                                                                            // This is to save the count because the page is initialized every time the button is pressed.
                if (!string.IsNullOrEmpty(name))
                {
                    Label1.Text = name;
                }
                if (!string.IsNullOrEmpty(maxNumber.ToString()))
                {
                }
                if (!string.IsNullOrEmpty(randomNumber.ToString()))
                {
                }
            }
        }
        protected void guessNumberButton(object sender, EventArgs e)
        {
            string guessNumber = GuessNumber.Text;                  // Get guess number from user.
            int guessValue;
            bool x;                                                 // This value is needed to be checked if the user input is number or not

            if(int.TryParse(guessNumber, out guessValue))           // Try to change the number into integer number
            {
                x = true;                                           // if it is number, then return x valued true
            }
            else                                                    // or false
            {
                x = false;
            }
            int guessNumberPlus = guessValue + 1;
            int guessNumberMinus = guessValue - 1;
            guessCount = (int)Session["count"];                     // Get guessCount from session

            // If Validation test pass
            if (x)                                                  // If user input is number
            {
                int maxNumber = (int)Session["InputNum"];               // user input max number
                int randomNumber = (int)Session["RandomNumber"];        // user input random number

                if (guessValue >= 1 && guessValue <= maxNumber)         // if the guess number is within range
                {
                    if (guessValue == randomNumber)                     // if guess number is the same as random number
                    {
                        Server.Transfer("/Win_Page/Hilo_Win.aspx");     // Go to Hilo_Win page
                    }
                    else if (guessValue < randomNumber)                 // if guess number is less than random number
                    {
                        if(guessCount == 0)
                        {
                            max = maxNumber;
                            Label2.Text = "Your allowable guessing range is any value between" + guessNumberPlus + " and " + max;
                            min = guessValue + 1;
                            guessCount++;

                            Session["count"] = guessCount;
                            Session["minValue"] = min;                  
                            Session["maxValue"] = max;
                            GuessNumber.Text = "";
                        }
                        else
                        {
                            min = (int)Session["minValue"];
                            max = (int)Session["maxValue"];
                            min = guessValue + 1;
                            Label2.Text = "Your allowable guessing range is any value between" + min + " and " + max;

                            Session["minValue"] = min;
                            Session["maxValue"] = max;
                            GuessNumber.Text = "";
                        }
                    }
                    else                                        // if guess number is lager than random number
                    {
                        if(guessCount == 0)
                        {
                            min = 1;
                            Label2.Text = "Your allowable guessing range is any value between" + min + " and " + guessNumberMinus;
                            max = guessValue -1;
                            guessCount++;

                            Session["count"] = guessCount;
                            Session["minValue"] = min;
                            Session["maxValue"] = max;
                            GuessNumber.Text = "";
                        }
                        else
                        {
                            min = (int)Session["minValue"];
                            max = (int)Session["maxValue"];
                            max = guessValue - 1;
                            
                            Label2.Text = "Your allowable guessing range is any value between" + min + " and " + max;

                            Session["minValue"] = min;
                            Session["maxValue"] = max;
                            GuessNumber.Text = "";
                        }
                    }
                }
                else                                                // if guess number is out of range
                {
                    Label2.Text = "out of range";
                    GuessNumber.Text = "";
                }
            }
            else
            {
                GuessNumber.Text = "";
            }
        }
    }
}