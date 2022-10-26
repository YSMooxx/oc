//
//  Person.m
//  oc
//
//  Created by New on 2022/10/26.
//

#import "Person.h"

@implementation Person

- (void)personChangeName {
    
    self.name = @"李丹丹";
}

+(void)personChangeName2 {
    
    NSLog(@"改不了名字");
}

- (void)setName:(NSString *)name {
    
    _name = name;
    NSLog(@"%@",_name);
}

@end
