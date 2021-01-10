2.5.3 vector 容器嵌套容器
#include<iostream>
using namespace std;
#include<string>
#include<vector>
void test01(){
	vector<vector<int>>v;
	//创建小容器
	vector<int>v1;
	vector<int>v2;
	vector<int>v3; 
	vector<int>v4;
	for (int i = 0; i < 4; i++){
		v1.push_back(i + 1);
		v2.push_back(i + 2);
		v3.push_back(i + 3);
		v4.push_back(i + 4);
	}
	//将小容器插入到大的容器中
	v.push_back(v1);
	v.push_back(v2);
	v.push_back(v3);
	v.push_back(v4);
	//通过大容器，把所有数据遍历一遍
	for (vector<vector<int>>::iterator it = v.begin(); it != v.end(); it++){
		//(*it)---容器vector<int>
		for (vector<int>::iterator vit = (*it).begin(); vit != (*it).end(); vit++){
			cout << *vit << " ";
		}
		cout << endl;
	}
}
int main(){
	test01();
	system("pause");
	return 0;
}
#include<iostream>
using namespace std;
#include<string>
//string的构造函数
//string();    				//创建一个空的字符串 例如: string str;
//string(const char* s); 	        //使用字符串s初始化
//string(const string& str);     //使用一个string对象初始化另一个string对象
//string(int n, char c);          //使用n个字符c初始化 


void test01(){
	string s1;//默认构造
	const char *str= "hello world";
	string s2(str);
	cout << "s2=" << s2 << endl;
	string s3(s2);
	cout << "s3=" << s3 << endl;
	string s4(10, 'a');
	cout << "s4=" << s4 << endl;
}
int main(){
	test01();
	system("pause");
	return 0;
}
