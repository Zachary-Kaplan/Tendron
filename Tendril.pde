class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {
    myX = x;
    myY = y;
    myAngle = theta;
    myNumSegments = len;
  }
  public void show()
  {
    for(int i = 0; i < myNumSegments; i++)
    {
      myAngle += ( 0.4 * Math.random()) - 0.2;
      int endX = myX + (int)(SEG_LENGTH * cos((float)myAngle));
      int endY = myY + (int)(SEG_LENGTH * sin((float)myAngle));
      line(myX,myY,endX,endY);
      myX = endX;
      myY = endY;
    }
    Cluster Arbuckle = new Cluster(myNumSegments - 1, myX, myY);
  }
  public void setAngle(double newAngle)
  {
    myAngle = newAngle;
  }
  public double getAngle()
  {
    return myAngle;
  }
}
