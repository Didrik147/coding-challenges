#include <iostream>

using namespace std;

int main(){
  
  int n;
  cin >> n;
  
  int t[n];
  
  for(int i=1; i<=n; i++){
    cin >> t[i-1];
  }
  
  int counter = 0;
  
  for(int i=1; i<=n; i++){
    if( t[i-1]<0 ){
      counter += 1;
    }
  }
  
  cout << counter << endl;
  
}
