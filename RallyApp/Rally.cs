using Npgsql;

namespace race
{
    public class Rally
    {
        public int Number{get;set;}
        public List<Racer> ListRacer{get;set;}

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
            Rally rally= new Rally();
            rally.AddListRacer(Racer.GetListRacers(connection));
            foreach (var racer in rally.ListRacer)
            {
                racer.AddListSpecial(Special.GetSpecialsFromRacerId(connection,racer.Id));
            }
            return rally;
        }
    }    
}