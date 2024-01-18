#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main(){
  
  double R;
  double C;
  
  cin >> R >> C;
  
  double pi = 4*atan(1);
  
  double A_R;
  double A_cheese;
  
  A_R = pi*R*R;
  A_cheese = pi*(R-C)*(R-C);
  
  double perc = (A_cheese/A_R)*100;
  
  cout << setprecision(8) << perc << endl;
  
  return 0;
}
