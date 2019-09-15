IntList treeXCoordinates = new IntList();
IntList treeYCoordinates = new IntList();

void GenerateTrees(int amount) {
  while(amount > 0) {
    int randomY = int(random(height/1.5, height+50));
    
    treeXCoordinates.append(width+30);
    treeYCoordinates.append(randomY);
  
    amount--;
  }
}

void DrawTrees() {
  background(#f3f3f3);
  for(int i = 0; i < treeXCoordinates.size(); i++) {  
      // Make Trunk
      fill(#BA5E12);
      rect(treeXCoordinates.get(i), treeYCoordinates.get(i), 20, 80);
      // Make Treetop
      fill(#3CB371);
      ellipse(treeXCoordinates.get(i)+10, treeYCoordinates.get(i), 60, 60);
      // Reduce the X Value by 10, moving it to the left
      treeXCoordinates.set(i, treeXCoordinates.get(i)-10 );
  }   
}

void DeleteOffscreenTrees() {
  for(int i = 0; i < treeXCoordinates.size(); i++) {
    if(treeXCoordinates.get(i) < -30) {
      treeXCoordinates.remove(i);
      treeYCoordinates.remove(i);
    }
  }
}
