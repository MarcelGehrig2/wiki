// http://www.cprogramming.com/tutorial/stl/stlmap.html

//std::map <key_type, data_type, [comparison_function]>

//[comparison_function]: wenn <-operator nicht vorhanden oder überladen istream

//keys werden sortiert gespeichert


#include <map>

std::map <string, char> grade_list;

grade_list["John"] = 'B';
grade_list.erase("John");
grade_list.size();			//1
grade_list.erase("John");
grade_list.size();			//0
grade_list.empty();
grade_list.clear();

//check if a key is available
grade_list["John"] = 'A';
if(grade_list.find("Tim") == grade_list.end())
{
    std::cout<<"Tim is not in the map!"<<endl;
}

//iterator
for (std::map<string,char>::iterator it=mymap.begin(); it!=mymap.end(); ++it)
    std::cout << it->first << " => " << it->second << '\n';	//first=key; second=value