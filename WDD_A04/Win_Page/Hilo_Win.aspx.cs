/** 
 * This Hilo_Win.aspx.cs's comment
 * Name        : Hilo_Win.aspx.cs
 * PURPOSE     : This page shows the user a screen asking them to guess a random number, 
 *               and if the user presses the Play again button, they are taken to a page 
 *               where they input the maximum number again.
 *               Additionally, all sessions except the name are deleted.
 * Programmer  : Minchul Hwang(8818858)
 */
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A04.Win_Page
{
    public partial class Hilo_Win : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string name = Session["Name"] as string;                    // Get name from session Name
                int randomNumber = (int)Session["RandomNumber"];            // Get Random NUmber from session RandomNumber

                if (!string.IsNullOrEmpty(name))
                {
                    Label1.Text = name;
                }
                if (!string.IsNullOrEmpty(randomNumber.ToString()))
                {
                    Label2.Text = randomNumber.ToString();
                }
            }
        }

        protected void Play_Again(object sender, EventArgs e)
        {
            // if user input Play Again button, then all sessions which are made before page will be deleted except name 
            Session.Remove("RandomNumber");
            Session.Remove("InputNum");
            Session.Remove("count");
            Session.Remove("minValue");
            Session.Remove("maxValue");

            Server.Transfer("/Input_Number/Hilo_Input_Number.aspx");        //Go to /Input_Number/Hilo_Input_Number.aspx page
        }
    }
}