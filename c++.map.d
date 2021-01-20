//3.9.5 map查找和统计
//功能描述：
//对map容器进行查找数据以及统计数据
//函数原型：
//find(key);                   //查找key是否存在,若存在，返回该键的元素的迭代器；若不存在，返回set.end();
//count(key);                 //统计key的元素个数
#include<iostream>
using namespace std;
#include<map>
void test01(){
	map<int, int>m;
	m.insert(pair<int, int>(1, 10));
	m.insert(pair<int, int>(2, 20));
	m.insert(pair<int, int>(3, 30));
	//查找
	map<int,int>::iterator pos=m.find(3);
	if (pos != m.end()){
		cout << "查到了元素key=" << pos->first << " value=" << pos->second << endl;
	}
	else{
		cout << "未找到元素" << endl;
	}
	//统计
	int num = m.count(3);
	cout << "num=" << num << endl;
}
int main(){
	test01();
	return 0;
}
//总结：
//- 查找-- - find    （返回的是迭代器）
//- 统计-- - count  （对于map，结果为0或者1）（对于multimap统计可能大于1）