using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignments.Assignment_1
{
    public partial class Task_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                double number1 = Convert.ToDouble(txtNumber1.Text);
                double number2 = Convert.ToDouble(txtNumber2.Text);
                string operation = ddlOperation.SelectedValue;
                double result = 0;

                switch (operation)
                {
                    case "add":
                        result = number1 + number2;
                        break;
                    case "subtract":
                        result = number1 - number2;
                        break;
                    case "multiply":
                        result = number1 * number2;
                        break;
                    case "divide":
                        if (number2 == 0)
                        {
                            lblResult.Text = "Error: Division by zero is not allowed.";
                            return;
                        }
                        result = number1 / number2;
                        break;
                    default:
                        lblResult.Text = "Invalid operation.";
                        return;
                }

                lblResult.Text = $"Result: {result}";
            }
            catch (FormatException)
            {
                lblResult.Text = "Please enter valid numbers.";
            }
        }
    }
}