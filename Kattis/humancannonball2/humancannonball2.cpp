#include <iostream>
#include <cmath>

using namespace std;

int main(){
  
  int N;
  cin >> N;
  
  double v0, theta, x1, h1, h2;
  double g=9.81;
  
  double pi=4*atan(1);
  
  double t, y;
  
  int conclusion[N];
  
  for(int i=1; i<=N; i++){
    cin >> v0 >> theta >> x1 >> h1 >> h2;
    
    theta = theta*(pi/180.0);
    
    t = x1/(v0*cos(theta));
    y = v0*t*sin(theta) - 0.5*g*t*t;
    
    if( (y >= h1+1) && (y <= h2-1) ){
      //cout << "Safe" << endl;
      conclusion[i-1] = 1;
    }else{
      //cout << "Not Safe" << endl;
      conclusion[i-1] = 0;
    }
    
  }
  
  
  for(int i=1; i<=N; i++){
    if(conclusion[i-1] == 1){
      cout << "Safe" << endl;
    }else{
      cout << "Not Safe" << endl;
    }
  }
  
  
  return 0;
}
