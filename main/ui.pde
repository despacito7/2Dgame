class UI{
  
  private float phealth;
  private int ptimestamp;
  private int hpx;
  
  private int[] colorArr = new int[]{255,0,0};
  
  public UI(){
    
  }
  
  public void update(){
    printScore();
    printFireAmmo();
    drawCooldown();
    HPoverlay();
    drawHP();
  }
  
  public void printScore(){
    fill(255);
    textSize(32);
    if(score<10000){
      text(score,700,75);
    } else {
      text(score,677,75); 
    }
    noFill();
  }
  
  public void printFireAmmo() {
    fill(255);
    textSize(32);
    text(fireAmmo, 700, 127);
    noFill();
  }
  
  public void drawCooldown(){
    noStroke();
    noFill();
    //int divide = num/250;
    if(ptimestamp + 500 > millis()){
      fill(229,0,0);
      rect(525,700,(millis()-ptimestamp)/2,50);
    } else {
      fill(255);
      textSize(32);
      text("READY",525,690);
      fill(0,128,0);
      rect(525,700,250,50);
    }
  }
  
  public void HPoverlay(){
    noFill();
    if(phealth == 2 || phealth == 1){
      fill(255,0,0);
      textSize(24);
      text("LOW HP",25,700);
      
    }/* else if(phealth == 1){
      
      if(millis()%12 == 0){
        colorArr[0] = 255;
        colorArr[1] = 255;
        colorArr[2] = 255;
        
      } else if(millis()%14 == 0){
        colorArr[0] = 255;
        colorArr[1] = 0;
        colorArr[2] = 0;
      }
      
      fill(colorArr[0],colorArr[1],colorArr[2]);
      text("LOW HP", 25, 700);
      
    }*/
    
    stroke(255,0,0);
    noFill();
    hpx = -25;
    for(int i = 0; i < 5; i++){
       hpx += 50;
       rect(hpx,712.5,25,25);
     }
  }
  
  public void drawHP(){
    
    noStroke();
    if(phealth<1){
      noFill();
    } else {
     hpx = -25;
     noFill();
     for(int i = 0; i < phealth; i++){
       fill(255,0,0);
       hpx += 50;
       rect(hpx,712.5,25,25);
     }
    }
    
    
  }
  
  
  
  public void getPData(float health, int timestamp){
    phealth = health;
    ptimestamp = timestamp;
    //System.out.println(phealth + " " + ptimestamp);
  }
  
}
