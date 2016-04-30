namespace Backend.service
{
    public class LoginService
    {
        public bool Login(string username, string password)
        {
            dao.AccountsDao accountsDao = new dao.AccountsDao();
            entity.model.Account existingAccount;

            existingAccount = accountsDao.ValidateUser(username, password);

            return existingAccount != null;
        }
    }
}
