list< vector<int> > variableName;

variableName.push_back({1, 2, 3});
variableName.push_back({4, 2, 6});

for (auto &v : variableName)
{
    for (auto &x : v)
        cout << x << " ";
    cout << endl;
}



list<...>::iterator it = myList.begin();
for(int i = 0; i < n; i++) it++;	//i -> it?



//range-based for loop
vector<int> vec;
vec.push_back( 10 );
vec.push_back( 20 );

for (int &i : vec ) 
{
        cout << i;
}
// for maps
for ( auto address_entry : address_book )
{
        cout  << address_entry.first << " < " << address_entry.second << ">" <<endl;
}