#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
 
    UInt8 ret = 0;
    
    for (UInt8 i=7; i>=0; i--) {
        ret+= n%2 * pow(2, i);
        n/= 2;
        if (n<2) {
            i--;
            ret+= n*pow(2, i);
            break;
        }
    }

    return ret;
}
