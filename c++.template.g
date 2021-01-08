//1.3类模板
// 1.3.1类模板语法
//template<typename T>
#include<iostream>
using namespace std;
#include<string>
template<class NameType,class AgeType>
class Person{
public:
	Person(NameType name, AgeType age){
		this->m_Name = name;
		this->m_Age = age;
	}
	NameType m_Name;
	AgeType m_Age;
	void showPerson(){
		cout << "name:" << this->m_Name << " age:" << this->m_Age << endl;
	}
};

void test01(){
	Person<string, int>p1("张三",15);
	p1.showPerson();
}
int main(){
	test01();
	system("pause");
	return 0;
}
