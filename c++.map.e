//3.9.6 map容器排序
//学习目标：
//map容器默认排序规则为 按照key值进行 从小到大排序，掌握如何改变排序规则
//主要技术点:
//-利用仿函数，可以改变排序规则
#include<iostream>
using namespace std;
#include<map>
class MyCompare{
public:
	bool operator()(int v1, int v2){
		return v1 > v2;
	}
};
void test01(){
	//默认从小到大排序
	//利用仿函数实现从大到小
	map<int, int, MyCompare>m;
	m.insert(pair<int, int>(1, 10));
	m.insert(pair<int, int>(2, 30));
	m.insert(pair<int, int>(5, 20));
	m.insert(pair<int, int>(4, 10));
	for (map<int, int>::iterator it = m.begin(); it != m.end(); it++){
		cout << "key=" << it->first << " value=" << it->second << endl;
	}
}
int main(){
	test01();
	return 0;
}
//总结：
//* 利用仿函数可以指定map容器的排序规则
//* 对于自定义数据类型，map必须要指定排序规则, 同set容器
