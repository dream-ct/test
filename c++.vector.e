3.1.4 string字符串拼接
功能描述：
实现在字符串末尾拼接字符串
函数原型：
string& operator+=(const char* str);                    //重载+=操作符
string& operator+=(const char c);                          //重载+=操作符
string& operator+=(const string& str);                 //重载+=操作符
string& append(const char *s);                                //把字符串s连接到当前字符串结尾
string& append(const char *s, int n);                  //把字符串s的前n个字符连接到当前字符串结尾
string& append(const string &s);                            //同operator+=(const string& str)
string& append(const string &s, int pos, int n); // 字符串s中从pos开始的n个字符连接到字符串结尾
#include<iostream>
using namespace std;
#include<string>
void test01(){
	string str1 = "你";
	str1 += "是猪";
	cout << "str1=" << str1 << endl;
	str1 += ':';
	cout << "str1=" << str1 << endl;
	string str2 = " He is pig ";
	str1 += str2;
	cout << "str1=" << str1 << endl;

	string str3 = "He";
	str3.append(" love ");
	cout << "str3=" << str3 << endl;
	
	str3.append("love me",4);
	cout << "str3=" << str3 << endl;
	
	str3.append(str2);
	cout << "str3=" << str3 << endl;

	str3.append(str2,6,2);
	cout << "str3=" << str3 << endl;
}
int main(){
		test01();
		system("pause");
		return 0;
	}
