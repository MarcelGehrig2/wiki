// https://www.youtube.com/watch?v=BlpoURrpIwM
// Gültigkeitsbereicht von Variablen

int i = 10;
int auto i = 10;        //identisch


int i = 10;
{
    int i = 20;
}
std::cout << i << std::endl;    //Output: 10


int register i = 10;    //i wird direkt ins register der CPU geladen


static int i = 10;      //i wird erst am ende des programmes gelöscht, nicht am Ende der regulären gültigkeit


extern int i = 10;      //anderes cpp kann diese variable verändern


const int i = 10;       //siehe const.cpp


auto i = 10;            //siehe auto.cpp


