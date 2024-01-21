#include <iostream>

using namespace std;

int main(){
  
  //Declare numerator and denominator
  int num = 1;
  int den = 1;
  int m = 0;
  
  while(1 == 1){
    cin >> num >> den;
    if(num == 0 && den == 0){
      break;
    }else{
      m = 0;
      while(num >= den){
        m++;
        num = num - den;
      }
      cout << m << " " << num << " / " << den << endl;
    }
  }
  
  return 0;
}
