# 스마트포인터란(smart pointer)?


# 종류

1. unique_ptr

2. shared_ptr

3. weak_ptr


### unique_ptr

`C++11부터 삭제됨`

```c++
unique_ptr<int> ptr01(new int(5)); // int형 unique_ptr인 ptr01을 선언하고 초기화함.

auto ptr02 = move(ptr01);          // ptr01에서 ptr02로 소유권을 이전함.

// unique_ptr<int> ptr03 = ptr01;  // 대입 연산자를 이용한 복사는 오류를 발생시킴. 

ptr02.reset();                     // ptr02가 가리키고 있는 메모리 영역을 삭제함.

ptr01.reset();                     // ptr01가 가리키고 있는 메모리 영역을 삭제함.
```


### shared_ptr

```c++
shared_ptr<int> ptr01(new int(5)); // int형 shared_ptr인 ptr01을 선언하고 초기화함.

cout << ptr01.use_count() << endl; // 1

auto ptr02(ptr01);                 // 복사 생성자를 이용한 초기화

cout << ptr01.use_count() << endl; // 2

auto ptr03 = ptr01;                // 대입을 통한 초기화

cout << ptr01.use_count() << endl; // 3  
```

### weak_ptr

```c++


```