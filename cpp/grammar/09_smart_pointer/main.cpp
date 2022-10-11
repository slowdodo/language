#include <iostream>

#include <memory>

using namespace std;

class Person

{

private:
    string name_;

    int age_;

public:
    Person(const string &name, int age); // 기초 클래스 생성자의 선언

    ~Person() { cout << "소멸자가 호출되었습니다." << endl; }

    void ShowPersonInfo();
};

int main(void)

{

    unique_ptr<Person> hong = make_unique<Person>("길동", 29);

    hong->ShowPersonInfo();

    return 0;
}

Person::Person(const string &name, int age) // 기초 클래스 생성자의 정의

{

    name_ = name;

    age_ = age;

    cout << "생성자가 호출되었습니다." << endl;
}

void Person::ShowPersonInfo() { cout << name_ << "의 나이는 " << age_ << "살입니다." << endl; }