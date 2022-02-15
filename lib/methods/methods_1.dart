//Methods are functions that provide behavior for an object.



import 'dart:math';

class Point {
  double x = 0;
  double y = 0;

  Point(this.x, this.y);

  double distanceTo(Point other) {
    var dx = x - other.x;
    var dy = y - other.y;
    return sqrt(dx * dx + dy * dy);
  }
}


// Operators
//
// Operators are instance methods with special names.
// Dart allows you to define operators with the following names:
< 	+ 	| 	>>>
> 	/ 	^ 	[]
<= 	~/ 	& 	[]=
>= 	* 	<< 	~
– 	% 	>> 	==


