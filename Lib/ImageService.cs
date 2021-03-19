using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lib
{
    public class ImageService
    {
        public static DataClasses1DataContext db = new DataClasses1DataContext();
        public static List<ImageBog> getAll()
        {
            return db.ImageBogs.ToList();
        }

    }
}
