#include <iostream>
#include <string>

using namespace std;

int main(){
  
  string JM;
  string d;
  
  cin >> JM;
  cin >> d;
  
  if(JM.length() >= d.length()){
    cout << "go" << endl;
  }else{
    cout << "no" << endl;
  }

}
