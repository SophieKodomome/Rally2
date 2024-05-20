using Npgsql;

namespace race
{
    public class Rally
    {
        public int Number{get;set;}
        List<Racer> ListRacer{get;set;}

        public Rally AddNumber(int n)
        {
            Number=n;
            return this;
        }

        public Rally AddListRacer(List<Racer> lr)
        {
            ListRacer=lr;
            return this;
        }
        public Rally(){}
        public static Rally PSQLFetchAll(NpgsqlConnection connection)
        {
            return Rally;
        }
    }    
}