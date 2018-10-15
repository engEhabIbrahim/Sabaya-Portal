using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using Sabaya_Portal.App_Code;



namespace Sabaya_Portal
{
    public partial class _try : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                locationSelection();
            }


        }




        public void locationSelection ()
        {
            var myLocation = new StringBuilder();
            BusinessLayer BL = new BusinessLayer();
            DataTable dt = BL.Locationselection();
            DataTable dt2 = new DataTable();
            string gov = "Reyad";
            int x;
            for (int i=0;i<dt.Rows.Count;i++)
            {
                myLocation.Append("<li class=\"list-group-item librePanelListGroupItem\">");
                //myLocation.Append("<a class=\"dropbtn\">" + "مرحبا" + " " + Session["FullName"] + "<i class=\"fa fa-lock\" style=\"margin-right:5px; \"></i>");
                myLocation.Append("<a data-toggle=\"collapse\" href =\"#"+gov+"\">");
                myLocation.Append("<span class=\"fa fa-angle-down arrow\"></span>");
                myLocation.Append("<span style=\"float:right\">"+dt.Rows[i]["GovName"].ToString()+"</span></a>");
                dt2 = BL.cityselection(Convert.ToInt32(dt.Rows[i]["GovID"].ToString()));
                myLocation.Append("<ul id="+gov+" class=\"collapse librePanelSubListGroupItem\">");
                for (x=0;x<dt2.Rows.Count;x++)
                {
                    myLocation.Append("<li class=\"list-group-item librePanelListGroupItem\">");
                    myLocation.Append("<span style=\"float:right\"><a href=\"#\">" + dt2.Rows[x]["CityName"].ToString() + "</a></span></li> ");
                    myLocation.Append("<br/>");
                }
                myLocation.Append("</ul>");
                myLocation.Append("</li>");
                gov = "menuNo" + i + 1;
            }
            menu2PanelSubListGroup.InnerHtml = myLocation.ToString();


        }




    }

}