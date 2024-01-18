#include <iostream>

using namespace std;

int main(){
  
  int N;
  int M;
  
  cin >> N >> M;
  //N and M is between 4 and 20
  
  int diff;
  
  if (N > M){
    diff = N - M;
  }else{
    diff = M - N;
  }
  
  //cout << diff << endl;
  
  int middle;
  middle = ((N+1)+(M+1))/2;
  
  for(int i=middle-(diff/2); i<=middle+(diff/2); i++){
    cout << i << endl;
  }
  
  
  return 0;
}
