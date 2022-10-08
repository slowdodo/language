// 단순 선언으로는 안되지만 우회적으론 가능하다.
var asciiVal1 = 98;
var asciiVal2 = 42;
var asciiVal3 = 65;
var asciiVal4 = 85;

// Convert the ASCII values to a characters
var char1  = UnicodeScalar(asciiVal1)!
var char2  = UnicodeScalar(asciiVal2)!
var char3  = UnicodeScalar(asciiVal3)!
var char4  = UnicodeScalar(asciiVal4)!

// Print the converted characters
print("Char: ",char1);
print("Char: ",char2);
print("Char: ",char3);
print("Char: ",char4);