//
//  GCDViewModel.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "GCDViewModel.h"

@implementation GCDViewModel

- (void)setWithModel:(GCDModel *)model {
    
    self.model = model;
}

- (void)getData{
    
    NSLog(@"1%@2%@3%@",self.model.url1,self.model.url2,self.model.url3);
    
    NSMutableArray * array = [NSMutableArray array];
    
    dispatch_group_t group = dispatch_group_create();
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    BJWeakSelf
    dispatch_group_async(group, queue, ^{
        
        NSURL *url = [NSURL URLWithString:weakSelf.model.url1];
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        UIImage * image1 = [UIImage imageWithData:data];
        
        [array addObject:image1];
        
    });
    
    dispatch_group_async(group, queue, ^{
        
        NSURL *url = [NSURL URLWithString:weakSelf.model.url2];
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        UIImage * image1 = [UIImage imageWithData:data];
        
        [array addObject:image1];
        
    });
    
    dispatch_group_async(group, queue, ^{
        
        NSURL *url = [NSURL URLWithString:weakSelf.model.url3];
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        UIImage * image1 = [UIImage imageWithData:data];
        
        [array addObject:image1];
        
    });
    
    dispatch_group_notify(group, queue, ^{
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            self.block(array);
        });
        
    });

}

@end
