using Lib;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frontend
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBog tb =  Lib.TextBlogService.getTextBlog("Home");

                ltTitle.Text = tb.Title;
                ltDescription.Text = tb.Description;


                reImageBlog.DataSource = Lib.ImageService.getAll();
                reImageBlog.DataBind();

            }
        }
        public List<ImageBlog> InitImageBlog()
        {
            List<ImageBlog> imageBlogList = new List<ImageBlog>();
            imageBlogList.Add(new ImageBlog()
            {
                src = "Template/images/map-in-grass.jpg",
                description = "orem ipsum dolor sit amet,consectetur adipiscing eli",
                redirect = "Tham ngan"
            }) ;
            imageBlogList.Add(new ImageBlog()
            {
                src = "Template/images/little-girl-hugging-the-globe.jpg",
                description = "orem ipsum dolor sit amet,consectetur adipiscing eli",
                redirect = "Tham ngan"
            });
            imageBlogList.Add(new ImageBlog()
            {
                src = "Template/images/pointing-area-in-globe.jpg",
                description = "orem ipsum dolor sit amet,consectetur adipiscing eli",
                redirect = "Tham ngan"
            });
            return imageBlogList;
        }

        protected void reImageBlog_ItemCommand(object source, RepeaterCommandEventArgs e)
        {


        }
    }
}