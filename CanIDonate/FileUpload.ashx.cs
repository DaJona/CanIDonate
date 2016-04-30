using System.IO;
using System.Web;

namespace CanIDonate
{
    public class FileUpload : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            if (!string.IsNullOrEmpty(context.Request["accountCode"]))
            {
                string accountCode = context.Request["accountCode"];
                string dirFullPath = HttpContext.Current.Server.MapPath("~/media/tmp/" + accountCode + "/");

                if (!Directory.Exists(dirFullPath))
                    Directory.CreateDirectory(dirFullPath);

                foreach (string s in context.Request.Files)
                {
                    HttpPostedFile file = context.Request.Files[s];
                    string fileName = file.FileName;
                    string fileExtension = file.ContentType;

                    if (!string.IsNullOrEmpty(fileName))
                    {
                        file.SaveAs(Path.Combine(dirFullPath, accountCode + "_" + fileName));
                    }
                }
            }
            else
            {
                context.Response.Write("Received 500 error code");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}