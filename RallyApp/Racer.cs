
using Npgsql;

namespace race
{
    public class Racer
    {
        public int Id{get;set;}
        public string Name{get;set;}

        public int IdCategory{get;set;}
        public string Category{get;set;}
        public List<Special> ListSpecial{get;set;}
        public Racer AddId(int id)
        {
            Id=id;
            return this;
        }
        public Racer AddName(string n)
        {
            Name=n;
            return this;
        }
        public Racer AddIdCategory(int id)
        {
            IdCategory=id;
            return this;
        }
        public Racer AddCategory(string n)
        {
            Category=n;
            return this;
        }

        public Racer AddListSpecial(List<Special> ls)
        {
            ListSpecial=ls;
            return this;
        }
        public Racer(){}

        public static List<Racer> GetListRacers(NpgsqlConnection connection)
        {
            List<Racer> racers= new List<Racer>();

            connection.Open();
            string selectCommand = "SELECT * FROM v_racers;";
            using(var command=new NpgsqlCommand(selectCommand,connection))
            {
                using(var reader=command.ExecuteReader())
                {
                    while(reader.Read()){
                        Racer racer=
                            new Racer()
                            .AddId(reader.GetInt32(0))
                            .AddName(reader.GetString(1))
                            .AddIdCategory(reader.GetInt32(2))
                            .AddCategory(reader.GetString(1));
                        racers.Add(racer);
                    }
                }
            }
            connection.Close();
            return racers;
        }
    }
}