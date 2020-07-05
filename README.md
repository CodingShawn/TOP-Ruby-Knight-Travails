# TOP-Ruby-Knight-Travails

User Interface:<br/>
User can input starting and ending location of Knight on the chessboard, and will be given the simplest possible way for the knight to move from start to end location

Input:<br/>
Start and end position of Knight

Output:<br/>
Simplest possible way of getting from start to end position by showing all squares the Knight will stop along the way

Algorithmn:<br/>
Utilised breadth first search to find shortest path needed for knight to travel from one location to another. In order to determine the path, created node which had pointer back to parent node so able to trace path.

Notes:<br/>
Square class and Chessboard class not fully utilised as of now. Could be used in the future to show graphical representation of knight movement.
