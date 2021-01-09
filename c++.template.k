11.3.5类模板与继承
当类模板碰到继承时，需要注意以下几点：
当子类继承的父类时一个模板时，子类在声明的时候，要指定父类中T的类型
如果不指定，编译器无法给子类分配内存
如果想灵活指定出父类中T的类型，子类也需变为类模板
#include<iostream>
using namespace std;
template<class T>
class Base{
	T m;
};
//class Son :public Base{//错误，必须要知道父类中的T类型，才能继承给子类
class Son :public Base<int>{

};
//void test01(){
//	Son s1;
//}
//如果想灵活指定出父类中T的类型，子类也需变为类模板
template<class T1,class T2>
class Son2 :public Base<T2>{
public:
	Son2(){
		cout << "T1的类型为："<<typeid(T1).name() << endl;
		cout << "T2的类型为："<<typeid(T2).name() << endl;
	}
	T1 obj;
};
void test02(){
	Son2<int, char>S2;
}
int main(){
	//test01();
	test02();
	system("pause");
	return 0;
}
1.3.6类模板成员函数类外实现
类模板中成员函数在类外实现时，需要加上模板参数列表
#include<iostream>
using namespace std;
#include<string>
template<class T1, class T2>
class Person{
public:
	Person(T1 name, T2 age);/*{
		this->m_Name = name;
		this->m_Age =age;
	}*/
	void showPerson();/*{
		cout << "姓名：" << this->m_Name 
			<< "年龄：" << this->m_Age << endl;
	}*/
	T1 m_Name;
	T2 m_Age;
};
//构造函数类外实现
template<class T1, class T2>
Person<T1, T2>::Person(T1 name, T2 age){
	this->m_Name = name;
	this->m_Age = age;
}
//成员函数类外实现
template<class T1, class T2>
void Person<T1, T2>::showPerson(){
	cout << "姓名：" << this->m_Name 
		<< "b年龄：" << this->m_Age << endl;
}
void test01(){
	Person<string, int>P("Tom", 18);
	P.showPerson();
}
int main(){
	test01();
	system("pause");
	return 0;
}
