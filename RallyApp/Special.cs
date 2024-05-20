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

    }
}