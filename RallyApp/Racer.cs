
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
    }
}