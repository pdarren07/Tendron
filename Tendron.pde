
public void setup() {
    size(500, 500);
    background(255);
    noLoop();
}

public void draw() {
    background(255);
    new Cluster(50, width / 2, height / 2); 
}

public void mousePressed() {
    redraw();
}
