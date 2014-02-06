void keyPressed(){
  if(key=='0'){
    mode=0;
  }else if(key=='1'){
    mode=1;
  }else if(key=='2'){
    mode=2;
  }else if(key=='3'){
    mode=3;
  }else{
    exit();
  }
  //~~
  if(mode==0){
    cycleModes=true;
  }else{
    cycleModes=false;
  }
}
