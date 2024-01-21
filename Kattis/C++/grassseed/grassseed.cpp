#include <iostream>
#include <iomanip>

using namespace std;

int main(){
  
  double C;
  cin >> C;
  
  int L;
  cin >> L;
  
  double w[L];
  double l[L];
  double tot = 0;
  
  for(int i=0; i<L; i++){
    cin >> w[i] >> l[i];
    tot += C*w[i]*l[i];
  }
  
  //cout << tot << endl;
  cout << setprecision(7) << fixed <<tot << '\n';
  
  return 0;
}
