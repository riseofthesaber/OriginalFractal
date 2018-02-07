boolean mor = false;
boolean les = false;
int siz = 0;
public void setup() {
	size(500,500);
	rectMode(CENTER);
}

void draw() {
	background(170);
	noFill();
	strokeWeight(5);
	if (mor==true && siz<=500 ) {
		siz+=1;
	}
	if (les==true && siz>=0 ) {
		siz-=1;
	}
	Fraketyfrak(250,250, siz);
}
public void Fraketyfrak(int x, int y, int size){
	rect(x, y, size,size);
	if(size > 10){
		Fraketyfrak(x-size,y-size,size/2);
		Fraketyfrak(x+size,y+size,size/2);
		Fraketyfrak(x-size,y+size,size/2);
		Fraketyfrak(x+size,y-size,size/2);
	}
}
public void keyPressed(){

	if(key=='a'){
		mor = true;
	}
	if(key=='s'){
		les = true;
	}
}
public void keyReleased(){
	if(key=='a'){
		mor = false;
	}
	if(key=='s'){
		les = false;
	}
}