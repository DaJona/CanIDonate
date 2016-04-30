using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace Backend.dao
{
    internal class _base
    {
        const string sqlServerInstanceName = "JONIGU-PC";
        const string dbName = "CanIDonate";
        const string dbUser = "canidonate";
        const string dbPassword = "aN7^rQ#Dc8";
        const bool useIntegratedSecurity = false;

        private SqlConnection conn;
        private SqlCommand cmd;
        private SqlDataAdapter adpt;
        private SqlConnectionStringBuilder connBuilder;

        protected int? insert(string sqlQuery, List<SqlParameter> sqlParameters)
        {
            connBuilder = new SqlConnectionStringBuilder();
            connBuilder.DataSource = sqlServerInstanceName;
            connBuilder.InitialCatalog = dbName;
            connBuilder.UserID = dbUser;
            connBuilder.Password = dbPassword;
            connBuilder.IntegratedSecurity = useIntegratedSecurity;

            using (conn = new SqlConnection(connBuilder.ConnectionString))
            {
                using (cmd = conn.CreateCommand())
                {
                    cmd.Connection.Open();
                    cmd.CommandText = sqlQuery;

                    if (sqlParameters != null)
                    {
                        if (sqlParameters.Count > 0)
                        {
                            SqlParameter[] parameters = new SqlParameter[sqlParameters.Count];

                            for (int i = 0; i < sqlParameters.Count; i++)
                            {
                                parameters[i] = new SqlParameter(sqlParameters[i].ParameterName, sqlParameters[i].Value);
                            }

                            cmd.Parameters.AddRange(parameters);
                        }
                    }

                    object result = cmd.ExecuteScalar();
                    if (result == DBNull.Value)
                        return null;
                    else
                        return Convert.ToInt32(result);
                }
            }
        }

        protected int updateDelete(string sqlQuery, List<SqlParameter> sqlParameters)
        {
            connBuilder = new SqlConnectionStringBuilder();
            connBuilder.DataSource = sqlServerInstanceName;
            connBuilder.InitialCatalog = dbName;
            connBuilder.UserID = dbUser;
            connBuilder.Password = dbPassword;
            connBuilder.IntegratedSecurity = useIntegratedSecurity;

            using (conn = new SqlConnection(connBuilder.ConnectionString))
            {
                using (cmd = conn.CreateCommand())
                {
                    cmd.Connection.Open();
                    cmd.CommandText = sqlQuery;

                    if (sqlParameters != null)
                    {
                        if (sqlParameters.Count > 0)
                        {
                            SqlParameter[] parameters = new SqlParameter[sqlParameters.Count];

                            for (int i = 0; i < sqlParameters.Count; i++)
                            {
                                parameters[i] = new SqlParameter(sqlParameters[i].ParameterName, sqlParameters[i].Value);
                            }

                            cmd.Parameters.AddRange(parameters);
                        }
                    }

                    return cmd.ExecuteNonQuery();
                }
            }
        }

        protected DataTable fillDataTable(string sqlQuery, List<SqlParameter> sqlParameters)
        {
            connBuilder = new SqlConnectionStringBuilder();
            connBuilder.DataSource = sqlServerInstanceName;
            connBuilder.InitialCatalog = dbName;
            connBuilder.UserID = dbUser;
            connBuilder.Password = dbPassword;
            connBuilder.IntegratedSecurity = useIntegratedSecurity;

            using (conn = new SqlConnection(connBuilder.ConnectionString))
            {
                DataTable dt = new DataTable();

                using (cmd = conn.CreateCommand())
                {
                    cmd.Connection.Open();
                    cmd.CommandText = sqlQuery;

                    if (sqlParameters != null)
                    {
                        if (sqlParameters.Count > 0)
                        {
                            SqlParameter[] parameters = new SqlParameter[sqlParameters.Count];

                            for (int i = 0; i < sqlParameters.Count; i++)
                            {
                                parameters[i] = new SqlParameter(sqlParameters[i].ParameterName, sqlParameters[i].Value);
                            }

                            cmd.Parameters.AddRange(parameters);
                        }
                    }

                    using (adpt = new SqlDataAdapter())
                    {
                        adpt.SelectCommand = cmd;

                        adpt.Fill(dt);
                        return dt;
                    }
                }
            }
        }
    }
}
