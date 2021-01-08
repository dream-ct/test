//1.2.4普通函数与函数模板的区别
//1、普通函数调用时可以发生自动类型转换（隐士类型转换）
//2、函数模板调用时，如果利用自动类型推导，不会发生隐士类型转换
//3、如果利用显示指定类型的方式，可以发生隐士类型转换
#include<iostream>
using namespace std;
//普通函数
int myAdd01(int a, int b){
	return a + b;
}
void test01(){
	int a = 10;
	int b = 20;
	char c = 'c';
	cout << myAdd01(a, c) << endl;
	//自动类型推导 不会发生隐士类型转换
	//cout << myAdd02(a, c) << endl;
	//显示指定类型 会发生隐士类型转换
	cout << myAdd02<int>(a, c) << endl;
}
//函数模板
template<typename T>
myAdd02(T a, T b){
	return a + b;
}
int main(){
	test01();
	system("pause");
	return 0;
}
