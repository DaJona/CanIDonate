using System;
using System.Web.Security;

namespace CanIDonate
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Trim() == string.Empty)
            {
                displayError("Type an username");
                return;
            }

            if (txtPassword.Text.Trim() == string.Empty)
            {
                displayError("Type a password");
                return;
            }

            Backend.service.LoginService loginService = new Backend.service.LoginService();
            if (loginService.Login(txtUserName.Text, txtPassword.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
            }
            else
            {
                displayError("Wrong username or password");
                return;
            }
        }

        private void displayError(string errorMessage)
        {
            cv.IsValid = false;
            cv.ErrorMessage = errorMessage;
        }
    }
}