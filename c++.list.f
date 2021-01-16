//3.7.7 list 反转和排序
功能描述：
将容器中的元素反转，以及将容器中的数据进行排序
函数原型：**
reverse();    //反转链表
sort();         //链表排序
#include<iostream>
using namespace std;
#include<list>
#include<algorithm>
void printList(const list<int>&L){
	for (list<int>::const_iterator it = L.begin(); it != L.end(); it++){
		cout << *it << " ";
	}
	cout << endl;
}
void test01(){
	list<int>L;
	L.push_back(10); 
	L.push_back(50);
	L.push_back(30);
	L.push_back(40);
	cout << "反转前：" << endl;
	printList(L);
	//反转
	L.reverse();
	cout << "反转后：" << endl;
	printList(L);
}
bool myCompare(int v1,int v2){
	//降序 让第一个数 > 第二个数
	return v1 > v2;
}
void test02(){
	list<int>L;
	L.push_back(10);
	L.push_back(50);
	L.push_back(30);
	L.push_back(40);
	//排序
	cout << "排序前：" << endl;
	printList(L);
	//所有不支持随机访问迭代器的容器，不可以用便准算法
	//不支持随机访问迭代器的容器，内部会提供一些算法
	//sort(L.begin(), L.end());
	L.sort();//默认排序规则  从小到大 升序
	cout << "排序后：" << endl;
	printList(L);
	//降序
	L.sort(myCompare);
	printList(L);
}
int main(){
	test01();
	test02();
	return 0;
}
//总结：
//* 反转-- - reverse
//* 排序-- - sort （成员函数）
