using Backend.entity.model;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Backend.dao
{
    internal class AccountsDao : _base
    {
        public Account ValidateUser(string username, string password)
        {
            string sqlSentence = "";

            sqlSentence += "SELECT TOP 1 * FROM app.Accounts acc ";
            sqlSentence += "WHERE acc.username = @username ";
            sqlSentence += "AND acc.[password] = @password ";

            List<SqlParameter> sqlParameters = new List<SqlParameter>();
            sqlParameters.Add(new SqlParameter("@username", username));
            sqlParameters.Add(new SqlParameter("@password", password));

            return getEntity(fillDataTable(sqlSentence, sqlParameters));

        }

        #region Account entity

        private List<Account> getList(DataTable dt)
        {
            List<Account> result;

            if (dt.Rows.Count > 0)
            {
                result = new List<Account>();

                for (int index = 0; index < dt.Rows.Count; index++)
                {
                    result.Add(getEntity(dt.Rows[index]));
                }

                return result;
            }
            else
                return null;
        }

        private Account getEntity(DataTable dt)
        {
            if (dt.Rows.Count > 0)
                return getEntity(dt.Rows[0]);
            else
                return null;
        }

        private Account getEntity(DataRow dr)
        {
            Account result = new Account();

            result.id = (int)dr["id"];
            result.username = dr["username"].ToString();
            result.password = dr["password"].ToString();
            result.name = dr["name"].ToString();
            result.email = dr["email"].ToString();

            return result;
        }

        #endregion
    }
}
