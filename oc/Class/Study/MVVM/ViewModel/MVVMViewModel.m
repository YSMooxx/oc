//
//  MVVMViewModel.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "MVVMViewModel.h"


@implementation MVVMViewModel

- (instancetype)init {
    
    if (self=[super init]) {
        
        
    }
    
    return self;
}

- (void)setWithModel:(MVVMModel *)model {
    
    self.model = model;
    
}

- (MVVMViewModel*)clickChangeName {
    
    self.model.name = [self randomStringWithLength:5];
    NSLog(@"%@",self.model.name);
    return self;
}

-(NSString *)randomStringWithLength:(NSInteger)len {
     NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (NSInteger i = 0; i < len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length])]];
    }
    
    return randomString;
}

@end
