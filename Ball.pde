
public class Ball{
  
   private float x,y, dx = 3, dy = 2;
   private int ballWidth, ballHeight;
   
  
   public Ball(float x, float y, int bwidth, int bheight){
     
     this.x = x;
     this.y = y;
     this.ballWidth = bwidth;
     this.ballHeight = bheight;
     
   }
   
   
   public void render(){
         stroke(255);
         rect(x, y, ballWidth, ballHeight);
   }
   
   public int[] update(Paddle ep, Paddle pp){
   
     int[] temp = {0, 0};
     
        if(areColliding(this.x,this.y,(float)this.ballWidth,(float)this.ballHeight, ep.getX(), ep.getY(), ep.getWidth(), ep.getHeight())){
            this.dx*=-1;
            this.dy*=-1;
            x+=dx;
            y+=dy;
        }
        
        if(areColliding(this.x,this.y,(float)this.ballWidth,(float)this.ballHeight, pp.getX(), pp.getY(), pp.getWidth(), pp.getHeight())){
            this.dx*=-1;
            this.dy*=-1;
            x+=dx;
            y+=dy;
        }
        
        
        if(x < 0){
          this.dx*=-1;
        }
        
        if(x + ballWidth > width){
          this.dx*=-1;
        }
        
        if(y + ballHeight > 600){
        
          temp[0] = 1;
          x = width/2-5;
          y = height/2-5;
          
        }
        
        if(y < 60){
          temp[1] = 1;
          x = width/2-5;
          y = height/2-5;
          
        }
        
        x+=dx;
        y+=dy;
     return temp;
   }
   
   public boolean areColliding(float r1x,float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h){
     
     if(
     r1x + r1w >= r2x &&
     r1x <= r2x + r2w &&
     r1y + r1h >= r2y &&
     r1y <= r2y + r2h
     ){
       return true;
     }
    
     return false;
     
   }
  
}