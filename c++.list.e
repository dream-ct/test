//3.7.6 list 数据存取
//功能描述：
//对list容器中数据进行存取
//函数原型：
//front();         //返回第一个元素。
//back();          //返回最后一个元素。
#include<iostream>
using namespace std;
#include<list>
void test01(){
	list<int>L;
	L.push_back(10); 
	L.push_back(20);
	L.push_back(30);
	L.push_back(40);
	//L[0]; 不可以用[]访问list容器中的元素
	//L.at(0); 不可以用at方式访问list容器中的元素
	//原因是list本质是链表，不是用连续线性空间存储数据，迭代器也是不支持随机访问的
	cout << "第一个元素为：" << L.front() << endl;
	cout << "最后一个元素为：" << L.back() << endl;
	//验证迭代器是不支持随机访问的
	list<int>::iterator it = L.begin();
	//it+ = 1;//错误，不支持随机访问
	it++;//可以，支持双向
	//cout << *it << endl;
}
int main(){
	test01();
	return 0;
}
//总结：
//* list容器中不可以通过[]或者at方式访问数据
//* 返回第一个元素-- - front
//* 返回最后一个元素-- - back
