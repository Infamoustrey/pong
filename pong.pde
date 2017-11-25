
Ball mainBall;
Player playerPaddle;
Enemy enemyPaddle;

int enemyScore = 0, playerScore = 0;

void setup() {
  size(800, 600);
  background(0);
  surface.setResizable(false);
  
  init();
}

void draw(){
  background(0);
  
  update();
  
  render();
  
}


public void init(){
  
  mainBall = new Ball(width/2-5, height/2-5,10,10);
  
  enemyPaddle = new Enemy(width/2-70,60,50,10);
  playerPaddle = new Player(width/2-70,height-20,50,10);
  
}


public void update(){

  int[] deltaScore = mainBall.update(enemyPaddle, playerPaddle);
  enemyScore += deltaScore[1];
  playerScore += deltaScore[0];
  enemyPaddle.update(mainBall);
  playerPaddle.update();
  
}


public void render(){
 
  mainBall.render();
  enemyPaddle.render();
  playerPaddle.render();
  
  textSize(40);
  text("You: "+enemyScore, 10, 40);
  text("Enemy: "+playerScore, width-220, 40);
  
}