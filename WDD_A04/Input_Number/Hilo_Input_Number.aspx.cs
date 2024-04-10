/** 
 * This Hilo_Input_Number.aspx.cs's comment
 * Name        : Hilo_Input_Number.aspx.cs
 * PURPOSE     : This file creates a random number between that number and 1 using the number 
 *               that passed the validation check, and passes the number and random number to the session on the next page.
 * Programmer  : Minchul Hwang(8818858)
 */

using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A04.Input_Number
{
    public partial class Hilo_Input_Number : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)                                    // Check the page exist and session check also
            {
                string name = Session["Name"] as string;
                if(!string.IsNullOrEmpty(name))
                {
                    Label1.Text = name;
                }
            }
        }

        protected void inputNumButton(object sender, EventArgs e)
        {
            string num = Num.Text;                              // Get number from user
            int maxValue = int.Parse(num);
           
            int randomNumber;                                   // Make random number between user input number and 1
            Random random = new Random();
            randomNumber = random.Next(1, maxValue+1);

            Session["InputNum"] = maxValue;                     // Save Maximum number in Session "InputNum"
            Session["RandomNumber"] = randomNumber;             // Save random number in Session "RandomNumber"

            Server.Transfer("/Guess_Number/Hilo_Guess_Number.aspx");        // Go to Guess_Number/Hilo_Guess_Number.aspx
        }
    }
}