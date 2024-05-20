using Npgsql;

namespace race
{
    public class Special
    {
        public int Id{get;set;}
        public string Name{get;set;}
        private int minute;
        public int Minute
        {
            get
            {
                return minute;
            }
            set
            {
                if(minute<0)
                {
                    Console.WriteLine("minute must be positive");
                }
                if(minute>=60)
                {
                    Console.WriteLine("minute cannot exceed 59 unit. that's an hour");
                }
                else
                {
                    minute=value;
                }
            }
        }
        private int second;
        public int Second
        {
            get{
                return second;
            }
            set{
                if(second<0)
                {
                    Console.WriteLine("second must be positive");
                }
                if(second>=60)
                {
                    Console.WriteLine("second cannot exceed 59 unit. that's an hour");
                }
                else
                {
                    second=value;
                }
            }
        }
        private int millisecond;
        public Special(){}
        public int Millisecond
        {
            get{
                return millisecond;
            }
            set{
                if(millisecond<0)
                {
                    Console.WriteLine("millisecond must be positive");
                }
                if(millisecond>=1000)
                {
                    Console.WriteLine("millisecond cannot exceed 999 unit. that's a second");
                }
                else
                {
                    millisecond=value;
                }
            }
        }
        public Special AddId(int id)
        {
            Id=id;
            return this;
        }
        public Special AddName(string n)
        {
            Name=n;
            return this;
        }
        public Special AddMinute(int m)
        {
            Millisecond=m;
            return this;
        }
        public Special AddSecond(int s)
        {
            Second=s;
            return this;
        }
        public Special AddMillisecond(int ms)
        {
            Millisecond=ms;
            return this;
        }

        public static List<Special> GetSpecials(NpgsqlConnection connection)
        {
            List<Special> specials= new List<Special>();
            connection.Open();

            string selectCommand = "SELECT id_special,name_special FROM v_time;";

            using(var command=new NpgsqlCommand(selectCommand,connection))
            {
                using(var reader=command.ExecuteReader())
                {
                    while(reader.Read())
                    {
                        Special special=
                         new Special()
                         .AddId(reader.GetInt32(0))
                         .AddName(reader.GetString(1));
                        specials.Add(special);
                    }
                }
            }
            connection.Close();
            return specials;
        }
    }
}