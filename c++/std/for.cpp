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
for(int i = 0; i < n; i++) it++;