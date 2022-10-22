// `중요` fallthrough는 switch에서만 사용한 구문(Stetement)이다.
var value = 4
switch (value)
{
case 4:
  print("4")
  fallthrough 
//  print("?") <- 에러가 뜨는 이유는 fallthrough는 자동으로 다음 케이스로 넘기기 때문이다.
case 3:
 print("3")
 fallthrough 
case 2:
 print("2")
 fallthrough 
default:
 print("1")
}
// fallthrough는 break하지말고 진행하라는 함수이다.