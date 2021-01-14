//3.3.6 deque 数据存取
//功能描述：
//对deque 中的数据的存取操作
//函数原型：
//at(int idx);      //返回索引idx所指的数据
//operator[];       //返回索引idx所指的数据
//front();             //返回容器中第一个数据元素
//back();               //返回容器中最后一个数据元素
#include<iostream>
using namespace std;
#include<deque>
void test01(){
	deque<int>d;
	d.push_back(1);
	d.push_back(2);
	d.push_back(3);
	d.push_front(100);
	d.push_front(200);
	d.push_front(300);
	//通过[]方式访问元素
	for (int i = 0; i < d.size(); i++){
		cout << d[i] << " ";
	}
	cout << endl;
	//通过at方式访问元素
	for (int i = 0; i < d.size(); i++){
		cout << d.at(i) << " ";
	}
	cout << endl;
	cout << "第一个元素为：" << d.front() << endl;
	cout << "最后一个元素为：" << d.back() << endl;
}
int main(){
	test01();
	system("pause");
	return 0;
}
//总结：
//除了用迭代器获取deque容器中元素，[]和at也可以
//front返回容器第一个元素
//back返回容器最后一个元素
