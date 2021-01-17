//3.8.5 set查找和统计
//功能描述：**
//对set容器进行查找数据以及统计数据
//函数原型：
//find(key);                   //查找key是否存在,若存在，返回该键的元素的迭代器；若不存在，返回set.end();
//count(key);                 //统计key的元素个数
#include<iostream>
using namespace std;
#include<set>
void test01(){
	set<int>s1;
	s1.insert(10);
	s1.insert(60);
	s1.insert(30);
	s1.insert(40);
	//查找
	set<int>::iterator pos=s1.find(300);
	if (pos != s1.end()){
		cout << "找到元素：" << *pos << endl;
	}
	else{
		cout << "未找到元素" << endl;
	}
}
//统计
void test02(){
	set<int>s2;
	s2.insert(10);
	s2.insert(60);
	s2.insert(30);
	s2.insert(40);
	int num = s2.count(30);
	//对于set而言，统计结果为0/1
	cout << "num=" << num << endl;
}
int main(){
	//test01();
	test02();
	return 0;
}
//总结：
//* 查找-- - find    （返回的是迭代器）
//* 统计-- - count  （对于set，结果为0或者1）
