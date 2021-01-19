//4.2  谓词
//4.2.1 谓词概念
//* 返回bool类型的仿函数称为**谓词
//* 如果operator()接受一个参数，那么叫做一元谓词
//* 如果operator()接受两个参数，那么叫做二元谓词
//4.2.2 一元谓词
#include<iostream>
using namespace std;
#include<vector>
#include<algorithm>
class GreaterFive{
public:
	bool operator()(int val){
		return val > 5;
	}
};
void test01(){
	vector<int>v;
	for (int i = 0; i < 10; i++){
		v.push_back(i);
	}
	//查找容器中有没有大于5的数字
	//GreaterFive()匿名函数对象
	vector<int>::iterator it= find_if(v.begin(), v.end(), GreaterFive());
	if (it == v.end()){
		cout << "未找到" << endl;
	}
	else{
		cout << "找到了大于5的数字为：" << *it << endl;
	}
}
int main(){
	test01();
	return 0;
}
//4.2.2二元谓词
//#include<iostream>
//using namespace std;
//#include<vector>
//#include<algorithm>
//class MyCompare{
//public:
//	bool operator()(int v1, int v2){
//		return v1 > v2;
//	}
//};
//void test01(){
//	vector<int>v;
//	v.push_back(10);
//	v.push_back(30);
//	v.push_back(50);
//	v.push_back(40);
//	v.push_back(20);
//	sort(v.begin(), v.end());
//	for (vector<int>::iterator it = v.begin(); it != v.end(); it++){
//		cout << *it << " ";
//	}
//	cout << endl;
//	//使用函数对象，改变算法策略，变为排序规则为从大到小
//	sort(v.begin(), v.end(), MyCompare());
//	for (vector<int>::iterator it = v.begin(); it != v.end(); it++){
//		cout << *it << " ";
//	}
//	cout << endl;
//}
//int main(){
//	test01();
//	return 0;
//}
