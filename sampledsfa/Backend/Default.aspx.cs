using Lib;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Backend
{

    public partial class _Default : Page
    {
        
        DataTable table = new DataTable();
           protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Reset();
            }

        }

   

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (txtId.Text == "")
                SqlDataSource1.Insert();
            else
                SqlDataSource1.Update();
            Reset();
        }

        void Reset()
        {
            txtTitle.Text = txtDescription.Text = txtId.Text = "";
            txtId.Enabled = false;
            txtId.Visible = false;
            btnDelete.Visible = false;
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            Reset();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtId.Text = GridView1.SelectedRow.Cells[0].Text;
            txtTitle.Text = GridView1.SelectedRow.Cells[1].Text;
            txtDescription.Text = GridView1.SelectedRow.Cells[2].Text;
            ddKey.SelectedValue = GridView1.SelectedRow.Cells[3].Text;
            txtId.Visible = true;
            btnDelete.Visible = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            Reset();
           
        }
    }
}