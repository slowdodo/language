header는 복잡한 소스코드를 분리하기 위한 기능이다.
c언어를 컴파일할떄 분리한 코드를 전처리를 통해 불러온다.
[전처리](./src/main.i)
위 코드의 735번쨰 줄을 보면은 ./header/add.h의 코드가 전처리를 통해 그대로 가져와진걸 
볼 수가 있다.
```c
# 1 "../header/add.h" 1

# 1 "../header/add.h"
int add(int a, int b){
    return a + b;
}
```