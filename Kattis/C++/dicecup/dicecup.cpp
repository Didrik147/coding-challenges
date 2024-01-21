#include <iostream>

using namespace std;

int main(){
  
  
  
  int N;
  int M;
  
  cin >> N >> M;
  //N and M is between 4 and 20
  
  int sum = 0;
  //sum is minimum 2, and maximum 40
  
  int v[40][2] = {0};
  
  for(int k=1; k<=40; k++){
    v[k-1][1-1] = k;
  }
  
  
  for(int i=1; i<=N; i++){
    for(int j=1; j<=M; j++){
      sum = i+j;
      v[sum-1][2-1] += 1;
    }
  }
  
  int max = 0;
  
  for(int k=1; k<=40; k++){
    if( v[k-1][2-1]>=max ){
      //cout << v[k-1][1-1] << " " << v[k-1][2-1] << endl;
      max = v[k-1][2-1];
    }
  }
  
  for(int k=1; k<=40; k++){
    if( v[k-1][2-1]==max ){
      cout << v[k-1][1-1] << endl;
    }
  }
  
  
  
  
  
  return 0;
}
