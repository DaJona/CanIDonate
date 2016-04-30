namespace Backend.entity.model
{
    public class Account
    {
        private int _id;
        private string _username;
        private string _password;
        private string _name;
        private string _email;

        public int id
        {
            get
            {
                return _id;
            }
            set
            {
                _id = id;
            }
        }

        public string username
        {
            get
            {
                return _username;
            }
            set
            {
                _username = username;
            }
        }

        public string password
        {
            get
            {
                return _password;
            }
            set
            {
                _password = password;
            }
        }

        public string name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = name;
            }
        }

        public string email
        {
            get
            {
                return _email;
            }
            set
            {
                _email = email;
            }
        }
    }
}
