#include <iostream>
#include <cmath>
#include <iomanip>

using namespace std;

int main(){
  
  double r;
  int m;
  int c;
  
  double A_true;
  double pi=4*atan(1);
  
  double num_pi;
  double A_est;
  
  cin >> r >> m >> c;
  
  while( (r != 0) || (m != 0) || (c != 0) ){
    
    A_true = pi*r*r;
    
    num_pi = 4.0*c/m;
    A_est = num_pi*r*r;
    
    
    cout << setprecision(10) <<  A_true << " " << A_est << endl;
    
    cin >> r >> m >> c;
    
  }
  
  
  return 0;
}
