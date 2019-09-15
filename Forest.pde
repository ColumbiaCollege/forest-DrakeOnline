/*
 * Title: Forest
 * Description: Create a procedurally generated forest that moves
 * Author: Drake G. Cummings
 * Date: August 10, 2019
 */
 
void setup () {
   noStroke();
   size(1000,1000);
   frameRate(30);
}
 
void draw () {
   GenerateTrees(1);
   DrawTrees();
   DeleteOffscreenTrees();
}
 
