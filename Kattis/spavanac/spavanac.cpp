#include <iostream>

using namespace std;

int main(){
  
  int H;
  int M;
  
  cin >> H;
  cin >> M;
  
  if(M >= 45){
    M -= 45;
  }else{
    if(H > 1){
      H--;
    }else{
      H = 23;
    }
    M += 60;
    M -= 45;
  }
  
  cout << H << " " << M;
  
  return 0;
}
