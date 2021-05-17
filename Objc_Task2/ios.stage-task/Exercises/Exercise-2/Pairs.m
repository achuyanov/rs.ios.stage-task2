#import "Pairs.h"

@implementation Pairs
   
- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger ret = 0;

    for (int i= array.count-1; i>0; i--) {

        for (int j= i-1; j>=0; j--) {
            if ([array[i] intValue]-[array[j] intValue] == [number intValue]) ret+= 1;
        }
    }

    return ret;
}

@end
