#include <stdio.h>

#ifndef M_PI
#define M_PI (3.14159265358979323846264338327950288)
#endif /* M_PI */

int main(){
    long long int limit = (long long int)1e8;
    long double result = 0;
    for(long double i=1;i<=limit;++i){
        result += i/M_PI;
    }
    printf("%20.20Lg\n",result);
}