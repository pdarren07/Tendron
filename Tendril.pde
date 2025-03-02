class Tendril {
    public final static int SEG_LENGTH = 4; 
    private int myNumSegments, myX, myY;
    private double myAngle;

    public Tendril(int len, double theta, int x, int y) {
        myNumSegments = len;
        myAngle = theta;
        myX = x;
        myY = y;
        if (myNumSegments > 5) { 
          drawTendril();
        }
    }

    private void drawTendril() {
        float currentX = myX;
        float currentY = myY;
        strokeWeight(map(myNumSegments, 2, 50, 1, 3)); 
        stroke(0, 100, 0); //Green color
        for (int i = 0; i < myNumSegments; i++) {
            float nextX = currentX + SEG_LENGTH * cos((float)myAngle);
            float nextY = currentY + SEG_LENGTH * sin((float)myAngle);
            line(currentX, currentY, nextX, nextY);
            currentX = nextX;
            currentY = nextY;
            myAngle += random(-0.1, 0.1); 

            if (i == myNumSegments -1) { 
              fill(255,0,0); //Red color for cluster
              ellipse(currentX, currentY, 5, 5);
              new Cluster(max(5, myNumSegments / 2), (int)currentX, (int)currentY); 
            }
        }
    }

    public void show() {
        
    }
}
