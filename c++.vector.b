2.5.2 vector存放自定义数据类型
#include<iostream>
using namespace std;
#include<string>
#include<vector>
class Person{
public:
	Person(string name, int age){
		this->m_Name = name;
		this->m_Age = age;
	}
	string m_Name;
	int m_Age;
};
void test01(){
	vector<Person>v;
	Person p1("aaa", 10);
	Person p2("bbb", 20);
	Person p3("ccc", 30);
	Person p4("ddd", 40);
	Person p5("eee", 50);
	//向容器中添加数据
	v.push_back(p1);
	v.push_back(p2);
	v.push_back(p3);
	v.push_back(p4); 
	v.push_back(p5);
	//遍历容器中的数据
	for (vector<Person>::iterator it = v.begin(); it != v.end(); it++){
		cout << "姓名：" << (*it).m_Name << "年龄：" << (*it).m_Age << endl;
		cout << "姓名：" << it->m_Name << "年龄：" << it->m_Age << endl;//这样输出也可以 it 可以当成一个指针
	}
}
//存放自定义数据类型指针
void test02(){
	vector<Person*>v;
	Person p1("aaa", 10);
	Person p2("bbb", 20);
	Person p3("ccc", 30);
	Person p4("ddd", 40);
	Person p5("eee", 50);
	//向容器中添加数据
	v.push_back(&p1);
	v.push_back(&p2);
	v.push_back(&p3);
	v.push_back(&p4);
	v.push_back(&p5);
	//遍历容器中的数据
	
   for (vector<Person*>::iterator it = v.begin(); it != v.end(); it++){
      Person*p = (*it)
		cout << "姓名：" << (**it).m_Name << "年龄：" << (**it).m_Age << endl;
		cout << "姓名：" << (*it)->m_Name << "年龄：" << (*it)->m_Age << endl;//这样输出也可以 it 可以当成一个指针
	}
}
int main(){
	test01();
	test02();
	system("pause");
	return 0;
}
