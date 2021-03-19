using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lib
{
    public class TextBlogService
    {
        public static DataClasses1DataContext db = new DataClasses1DataContext();
        public static TextBog getTextBlog(String blogKey)
        {
            return db.TextBogs.Where(s => s.KeyForPage == blogKey).FirstOrDefault();
        }
        public static List<TextBog> getAll()
        {
            return db.TextBogs.ToList();
        }

        public static TextBog findById(int id)
        {
            return db.TextBogs.Where(s => s.id == id).FirstOrDefault();
        }
        public static void deleteByIds(List<int> ids)
        {
            List<TextBog> tbList = new List<TextBog>();
            foreach(int id in ids)
            {
                tbList.Add(findById(id));
            }
            db.TextBogs.DeleteAllOnSubmit(tbList);
            db.SubmitChanges();

        }
    }
}
