
public class Paddle{

  
   private float x,y;
   private int paddleWidth, paddleHeight;
   
  
   public Paddle(float x, float y, int pwidth, int pheight){
     
     this.x = x;
     this.y = y;
     this.paddleWidth = pwidth;
     this.paddleHeight = pheight;
     
   }
   
   
   public void render(){
         stroke(255);
         rect(x, y, paddleWidth, paddleHeight);
   }

    public float getX(){return x;}
    public float getY(){return y;}
    public int getWidth(){return paddleWidth;}
    public int getHeight(){return paddleHeight;}
    public void setX(float val){x=val;}
    public void setY(float val){y=val;}

}