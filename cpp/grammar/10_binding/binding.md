# 정적바인딩(Static Binding) vs 동적바인딩(Dynamic Binding)
### 바인딩(bindig)이란?
* 변수와 함수에 대한 메모리 할당이나 함수 호출이 발생했을 때 실제로 처리해야
하는 `명령어들이 결정되는 시점`



# 정적 바인딩과 동적 바인딩 예제
정적 바인딩과는 다르게 부모클래스(Damage)의 `Attack함수를 가상함수로` 만들었다.

* 차이점
    * 정적 바인딩: void Attack(void)
    * 동적 바인딩: virtual void Attack(void)
### 정적 바인딩
* `컴파일시` 변수의 위치와 함수가 실행할 명령이 결정된 경우
* Static 변수, Overloading

```c++
#include <iostream>

using namespace std;


class Damage{
public:
    int damage;
    Damage(int damage):damage(damage){};
    void Attack(void){
        cout <<" no weapon!" << endl;
    };
};
class Bow:public Damage{
public:
    int range;
    Bow(int damage,int range): Damage(damage),range(range){ };
    Bow(Damage* damage, int range): Damage(*damage), range(range){};
    void Attack(void){
        cout << range+damage << " damage!" << endl;
    };
};
class Wand:public Damage{
public:
    int magic;
    Wand(int damage,int magic): Damage(damage = 1), magic(magic){};
    Wand(Damage* damage,int magic): Damage(*damage), magic(magic){ };
    void Attack(void){
        cout << damage+magic << " damage!" << endl;
    };
};

int main(void){
    Damage* damage = new Damage(100);
    Bow* bow = new Bow(damage,200); 
    Wand* wand = new Wand(damage,300);

    Damage* MyWeapon;

    MyWeapon = damage;
    MyWeapon->Attack(): // no weapon!
    MyWeapon = bow;
    MyWeapon->Attack(); // no weapon!

    MyWeapon = Wand;
    MyWeapon->Attack(); // no weapon!


    delete damage;
    delete MyWeapon;

    return 0;
```
MyWeapon = bow
300 damage로 출력되지않는다.

`virtual 함수를 사용하지않아서` 암만 객체에 자식 클래스의 값을 할당할려 해도 안된다. 
즉 한번 값이 정해지면은 자식객체의 바인딩이 안먹히는데 이것이 정적 바인딩이다.



### 동적 바인딩
* 실제 `실행할 떄(Run time)`결정되는 경우
* 지역 변수, Overriding

```c++

#include <iostream>

using namespace std;


class Damage{
public:
    int damage;
    Damage(int damage):damage(damage){};
    virtual void Attack(void){
        cout <<" no weapon!" << endl;
    };
};
class Bow:public Damage{
public:
    int range;
    Bow(int damage,int range): Damage(damage),range(range){ };
    Bow(Damage* damage, int range): Damage(*damage), range(range){};
    void Attack(void){
        cout << range+damage << " damage!" << endl;
    };
};
class Wand:public Damage{
public:
    int magic;
    Wand(int damage,int magic): Damage(damage = 1), magic(magic){};
    Wand(Damage* damage,int magic): Damage(*damage), magic(magic){ };
    void Attack(void){
        cout << damage+magic << " damage!" << endl;
    };
};

int main(void){
    Damage* damage = new Damage(100);
    Bow* bow = new Bow(damage,200); 
    Wand* wand = new Wand(damage,300);

    Damage* MyWeapon;
    MyWeapon = damage;
    MyWeapon->Attack();// no weapon!
    MyWeapon = bow;
    MyWeapon->Attack();// 300 damage!
    MyWeapon = wand;
    MyWeapon->Attack();// 400 damage!

    delete damage;
    delete MyWeapon;

    return 0;
}
```
동적 바인딩은 오버로딩된 Attack함수를 가상함수로 바꿈으로써
아래 main함수안 자식 객체들을 활용해 함수를 동적으로 오버로딩 시킬수 있게된다.

매우 간단하게 말하자면은

    가상함수로 오버로딩된 정적인 함수를 동적으로 만들어서
    바인딩 시킬수 있게 해주는것이다.