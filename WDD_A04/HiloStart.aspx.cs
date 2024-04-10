/** 
 * This is a HiloStart.aspx.cs's comment
 * Name        : HiloStart.aspx.cs
 * PURPOSE     : This program is the first file required for the HILO game.
 *               When the user enters a name and the validation passes, 
 *               the name is saved in the session and moves on to the next page..
 * Programmer  : Minchul Hwang(8818858)
 */

using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WDD_A04
{
    public partial class HiloStart : System.Web.UI.Page
    {
        protected void Load_Hilo_Input_Number(object sender, EventArgs e)
        {
            string name = Name.Text;
            Session["Name"] = name;                                         // Save name in Session called "Name"
            Server.Transfer("Input_Number/Hilo_Input_Number.aspx");         // Go to Input_Number/Hilo_Input_Number.aspx
        }
       
    }
}