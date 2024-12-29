using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignments.Assignment_1
{
    public partial class T3_temp_con : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            try
            {
                double temperature = Convert.ToDouble(txtTemperature.Text);
                string conversionType = ddlConversionType.SelectedValue;
                double result = 0;

                if (conversionType == "CtoF")
                {
                    result = (temperature * 9 / 5) + 32;
                }
                else if (conversionType == "FtoC")
                {
                    result = (temperature - 32) * 5 / 9;
                }
                else
                {
                    lblResult.Text = "Invalid conversion type.";
                    return;
                }

                lblResult.Text = $"Converted Temperature: {result:F2}";
            }
            catch (FormatException)
            {
                lblResult.Text = "Please enter a valid temperature.";
            }
        }
    }
}