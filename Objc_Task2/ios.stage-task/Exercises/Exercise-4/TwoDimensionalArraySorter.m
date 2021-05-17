#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {

    NSMutableArray *nums = [[NSMutableArray alloc] init];
    NSMutableArray *strs = [[NSMutableArray alloc] init];
    
    for (NSArray *subarray in array) {
        
        if (![subarray isKindOfClass:[NSArray class]]) return @[];
        
        if (subarray.count == 0) continue;
        
        if ([subarray.firstObject isKindOfClass:[NSNumber class]]) [nums addObjectsFromArray:subarray];
        
        if ([subarray.firstObject isKindOfClass:[NSString class]]) [strs addObjectsFromArray:subarray];
    }
    
    if (strs.count == 0) return [nums sortedArrayUsingSelector:@selector(compare:)];
    
    if (nums.count == 0) return [strs sortedArrayUsingSelector:@selector(compare:)];
    
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:nil ascending:NO selector:@selector(localizedCompare:)];

    return @[[nums sortedArrayUsingSelector:@selector(compare:)], [strs sortedArrayUsingDescriptors:@[descriptor]]];
}

@end
