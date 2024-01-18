#include <iostream>

using namespace std;

int main(){
    
    int v[20]; 
    
    int n;
    
    cin >> n;
    
    int x;
    
    for(int i=1; i<=n; i++){
      
      cin >> x;
      v[i-1] = x;
    }
    
    for(int i=1; i<=n; i++){
      
      if(v[i-1] % 2 == 0){
          cout << v[i-1] << " is even" << endl;
      }else{
          cout << v[i-1] << " is odd" << endl;
      }
    }
    
    /*while(n >= 1){
      
      cin >> x;
      //n = n - 1;
      n -= 1;
      
      if(x % 2 == 0){
          cout << x << " is even" << endl;
      }else{
          cout << x << " is odd" << endl;
      }
      
  }*/
}
