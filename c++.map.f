//3.10 案例 - 员工分组
//3.10.1 案例描述
//* 公司今天招聘了10个员工（ABCDEFGHIJ），10名员工进入公司之后，需要指派员工在那个部门工作
//* 员工信息有: 姓名  工资组成；部门分为：策划、美术、研发
//* 随机给10名员工分配部门和工资
//* 通过multimap进行信息的插入  key(部门编号) value(员工)
//* 分部门显示员工信息
// 3.10.2 实现步骤
//1. 创建10名员工，放到vector中
//2. 遍历vector容器，取出每个员工，进行随机分组
//3. 分组后，将员工部门编号作为key，具体员工作为value，放入到multimap容器中
//4. 分部门显示员工信息
#include<iostream>
using namespace std;
#include<string>
#include<vector>
#include<map>
#include<ctime>
#define CEHUA 0
#define MEISHU 1
#define YANFA 2
class Worker{
public:
	string m_Name;
	int m_Salary;
	
};
void creatWorker(vector<Worker>&v){
	string nameSeed = "ABCDEFGHIJ";
	for (int i = 0; i < 10; i++){
		Worker worker;
		worker.m_Name = "员工";
		worker.m_Name += nameSeed[i];
		worker.m_Salary = rand() % 10001 + 10000;
		v.push_back(worker);
	}
}
void setGroup(vector<Worker>&v, multimap<int, Worker>&m){
	for (vector<Worker>::iterator it = v.begin(); it != v.end(); it++){
		//产生随机部门编号
		int deptId = rand() % 3;
		//将员工插入到分组中
		//key 部门编号  value具体员工
		m.insert(make_pair(deptId, *it));
	}
}
void showWorkerByGroup(multimap<int, Worker>&m){
	cout << "策划部门信息：" << endl;
	multimap<int,Worker>::iterator pos=m.find(CEHUA);
	int count = m.count(CEHUA);//统计具体人数
	int index = 0;
	for (; pos != m.end() && index < count; pos++, index++){
		cout << "姓名：" << pos->second.m_Name << "工资：" << pos->second.m_Salary << endl;
	}
	cout << "美术部门信息：" << endl;	
	pos = m.find(MEISHU);
	count = m.count(MEISHU);//统计具体人数
	index = 0;
	for (; pos != m.end() && index < count; pos++, index++){
		cout << "姓名：" << pos->second.m_Name << "工资：" << pos->second.m_Salary << endl;
	}
	cout << "研发部门信息：" << endl;
	pos = m.find(YANFA);
	count = m.count(YANFA);//统计具体人数
	index = 0;
	for (; pos != m.end() && index < count; pos++, index++){
		cout << "姓名：" << pos->second.m_Name << "工资：" << pos->second.m_Salary << endl;
	}
}
int main(){
	srand((unsigned int)time(NULL));
	//1、创建员工
	vector<Worker>v;
	creatWorker(v);
	//测试
	/*for (vector<Worker>::iterator it = v.begin(); it != v.end(); it++){
		cout << "姓名：" << it->m_Name << "年龄：" << it->m_Salary << endl;
	}*/
	//2、员工分组
	multimap<int, Worker>m;
	setGroup(v,m);
	//3、分组显示员工
	showWorkerByGroup(m);
	return 0;
}
