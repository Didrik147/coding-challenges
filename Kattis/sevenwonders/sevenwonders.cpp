#include <iostream>
#include <string>
//#include <cmath>

using namespace std;

int main(){
  
  string s;
  
  cin >> s;
  
  int L;
  L = s.length();
  
  int nT = 0;
  int nC = 0;
  int nG = 0;
  
  string letter;
  
  for(int i=0; i<L; i++){
    letter = s[i];
    //cout << letter << endl;
    if(letter.compare("T") == 0){
      nT += 1;
    }else if(letter.compare("C") == 0){
      nC += 1;
    }else if(letter.compare("G") == 0){
      nG += 1;
    }
  }
  
  //cout << nT << endl;
  
  int set;
  set = nT;
  
  if(nC < set){
    set = nC;
  }
  
  if(nG < set){
    set = nG;
  }
  
  int total;
  total = (nT*nT)+(nC*nC)+(nG*nG)+(set*7);
  
  //cout << nT << " " << nC << " " << nG << endl;
  //cout << set << endl;
  
  cout << total << endl;
  
}
