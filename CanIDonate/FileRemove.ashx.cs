using System.IO;
using System.Web;

namespace CanIDonate
{
    public class FileRemove : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";

            if (!string.IsNullOrEmpty(context.Request["accountCode"]) & !string.IsNullOrEmpty(context.Request["file"]))
            {
                string accountCode = context.Request["accountCode"];
                string file = context.Request["file"];
                string dirFullPath = HttpContext.Current.Server.MapPath("~/media/tmp/" + accountCode + "/");

                if (Directory.Exists(dirFullPath))
                {
                    string fileFullPath = Path.Combine(dirFullPath, accountCode + "_" + file);

                    if (File.Exists(fileFullPath))
                        File.Delete(fileFullPath);
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