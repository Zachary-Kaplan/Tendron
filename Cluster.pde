public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        Tendril Garfield = new Tendril(len, 2 * PI * Math.random(), x, y);
        Garfield.show();
    }
}
