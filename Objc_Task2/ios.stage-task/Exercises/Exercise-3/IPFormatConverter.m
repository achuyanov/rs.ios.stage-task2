#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if (numbersArray.count == 0) return @"";

    NSMutableString *ret = [NSMutableString stringWithString:@""];
    
    for (int i = 0; i < 4; ++i) {
        
        if (numbersArray.count - 1 < i) {
            [ret appendString:@"0."];
            continue;
        }
        
        if ([numbersArray[i] intValue] < 0) return @"Negative numbers are not valid for input.";
        
        if ([numbersArray[i] intValue] > 255) return @"The numbers in the input array can be in the range from 0 to 255.";
        
        [ret appendFormat:@"%@.", numbersArray[i]];
    }
    
    return [ret substringWithRange:NSMakeRange(0, ret.length - 1)];
}

@end
