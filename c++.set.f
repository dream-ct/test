//3.8.7 pair对组创建
//功能描述：
//成对出现的数据，利用对组可以返回两个数据
//两种创建方式：
//pair<type, type> p(value1, value2); 
//pair<type, type> p = make_pair(value1, value2); 
#include<iostream>
using namespace std;
#include<string>
void test01(){
	//第一种方式
	pair<string, int>p("Tom", 20);
	cout << "姓名：" << p.first << " 年龄：" << p.second << endl;
	//第二种方式
	pair<string, int>p2 = make_pair("Jack", 18);
	cout << "姓名：" << p2.first << " 年龄：" << p2.second << endl;
}
int main(){
	test01();
	return 0;
}
3.8.8 set容器排序
学习目标：
set容器默认排序规则为从小到大，掌握如何改变排序规则
主要技术点：
利用仿函数，可以改变排序规则
#include<iostream>
using namespace std;
#include<set>
class MyCompare{
public:
	bool  operator()(int v1, int v2){
		return v1 > v2;
	}
};
void test01(){
	set<int>s1;
	s1.insert(10);
	s1.insert(30);
	s1.insert(50);
	s1.insert(20);
	for (set<int>::iterator it = s1.begin(); it != s1.end(); it++){
		cout << *it << " ";
	}
	cout << endl;
	//指定排序规则为从大到小
	set<int,MyCompare>s2;
	s2.insert(10);
	s2.insert(30);
	s2.insert(50);
	s2.insert(20);
	for (set<int,MyCompare>::iterator it = s2.begin(); it != s2.end(); it++){
		cout << *it << " ";
	}
	cout << endl;
}
int main(){
	test01();
	return 0;
}
//总结：利用仿函数可以指定set容器的排序规则
