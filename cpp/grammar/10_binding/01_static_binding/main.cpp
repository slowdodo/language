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

    MyWeapon = wand;
    MyWeapon->Attack(); // no weapon!


    delete damage;
    delete MyWeapon;

    return 0;
}