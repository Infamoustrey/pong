
public class Player extends Paddle{
   
  
   public Player(float x, float y, int pwidth, int pheight){
      super(x, y, pwidth, pheight);
   }
   
   
   public void update(){
     
      if (keyPressed) {
        
        if (key == 'a' || key == 'A') {
          
           this.setX(this.getX()-5);
           
        }else if(key == 'd' || key == 'D'){
          
           this.setX(this.getX()+5);
          
        }
        
      }
      
      if(this.getX() <= 0){
           this.setX(this.getX()+5);
      }
      
      if(this.getX() + this.getWidth() >= width){
           this.setX(this.getX()-5);
      }
     
   }


}