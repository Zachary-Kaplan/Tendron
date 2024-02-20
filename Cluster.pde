public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    { 
        Tendril Garfield = new Tendril(len, 2 * PI * Math.random(), x, y);
        for(int j = 0; j < 7; j++)
        { 
          Garfield.show();
          Garfield.setAngle(Garfield.getAngle() + (PI/7));
        }
    }
}
