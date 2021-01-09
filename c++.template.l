1.3.7类模板分文件编写
问题：类模板中成员函数创建时机是在调用阶段，导致分文件编写是链接不到
解决方式1：直接包含.cpp文件
解决方式2：将声明和实现写到同一个文件中，并更改后缀名为.hpp,hpp是约定的名称，并不是强制
#include<iostream>
using namespace std;
//#include"person.h"//会报错
//解决方式1：直接包含.cpp文件
//#include"person.cpp"
#include"person.hpp"
//template<class T1, class T2>
//class Person{
//public:
//	Person(T1 name, T2 age);
//	void showPerson();
//	T1 m_Name;
//	T2 m_Age;
//};
//template<class T1, class T2>
//Person<T1, T2>::Person(T1 name, T2 age){
//	this->m_Name = name;
//	this->m_Age = age;
//}
//template<class T1, class T2>
//void Person<T1, T2>::showPerson(){
//	cout << "姓名：" << this->m_Name 
//		<< "b年龄：" << this->m_Age << endl;
//}
void test01(){
	Person<string, int>P("Tom", 18);
	P.showPerson();
}
int main(){
	test01();
	system("pause");
	return 0;
}
