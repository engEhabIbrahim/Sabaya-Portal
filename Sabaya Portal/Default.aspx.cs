using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

public partial class _Default : System.Web.UI.Page
{

   

    private static bool CheckAlphaNumeric(string str)
    {
        return Regex.IsMatch(str, @"^[a-zA-Z0-9 ]*$");
    }
}
