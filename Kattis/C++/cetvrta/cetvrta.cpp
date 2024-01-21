#include <iostream>

using namespace std;

int main(){
  int c[4][2] = {0};
  
  cin >> c[0][0] >> c[0][1];
  cin >> c[1][0] >> c[1][1];
  cin >> c[2][0] >> c[2][1];
  
  int last[2] = {0};
  
  for(int j=0; j<=1; j++){
  
  if (c[0][j] != c[1][j] && c[0][j] != c[2][j]){
    last[j] = c[0][j];
  }
  
  if (c[1][j] != c[0][j] && c[1][j] != c[2][j]){
    last[j] = c[1][j];
  }
  
  if (c[2][j] != c[0][j] && c[2][j] != c[1][j]){
    last[j] = c[2][j];
  }
  }
  
  cout << last[0] << " "<< last[1] << endl;
  
}
