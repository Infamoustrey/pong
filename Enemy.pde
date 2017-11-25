
public class Enemy extends Paddle{
   
   private float dx = 0;
  
   public Enemy(float x, float y, int pwidth, int pheight){
      super(x, y, pwidth, pheight);
   }
   
   
   public void update(Ball mb){
     
     if(mb.x < this.getX()){dx=-ceil(random(2,4));}
     if(mb.x > this.getX() + this.getWidth()){dx=ceil(random(2,4));}
     
     this.setX(this.getX()+dx);
     
     if(this.getX() <= 0){
           this.setX(this.getX()+dx);
      }
      
      if(this.getX() + this.getWidth() >= width){
           this.setX(this.getX()-dx);
      }
   }


}