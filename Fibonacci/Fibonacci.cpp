// Verificare Fibonacci
#include <iostream>
using namespace std;

int main() {
     int n,a,b,next;
     cout<<"Enter a number: ";
     cin>>n;
     if(n==0||n==1)
        cout<<n<<" is a fibonacci number\n\n";
     else
        a=0;b=1;
        next=a+b;
        while(next<n) {
           a=b;
           b=next;
           next=a+b;
        }
     if(next==n)
        cout<<n<<" is a fibonacci number";
     else
        cout<<n<<" is not a fibonacci number";
     return 0;
}