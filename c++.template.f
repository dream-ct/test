//1.2.6模板的局限性
//模板不是万能的，有些特定数据类型，需要具体化方式做特殊实现
//对比两个数据是否相等函数
#include<iostream>
using namespace std;
class Person{
public:
	Person(string name, int age){
		m_Name = name;
		m_Age = age;
	}
	//姓名
	string m_Name;
	//年龄
	int m_Age;
};
template<class T>
bool myCompare(T &a, T&b){
	if (a == b){
		return true;
	}
	else{
		return false;
	}
}
//利用具体化Person的版本实现代码，具体优化先调用
template<>bool myCompare(Person &p1, Person &p2){
	if (p1.m_Name == p2.m_Name&&p1.m_Age == p2.m_Age){
		return true;
	}
	else{
		return false;
	}
}
void test01(){
	int a = 10;
	int b = 20;
	bool ret = myCompare(a, b);
	if (ret){
		cout << "a==b" << endl;
	}
	else{
		cout << "a!=b" << endl;
	}
}
void test02(){
	Person p1("Tom", 10);
	Person p2("Tom", 10);
	bool ret = myCompare(p1, p2);
	if (ret){
		cout << "p1==p2" << endl;
	}
	else{
		cout << "p1!=p2" << endl;
	}
}
int main(){
	//test01();
	test02();
	system("pause");
	return 0;
}
