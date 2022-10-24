//
//  GCDViewModel.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "GCDViewModel.h"

@interface GCDViewModel ()

@property(nonatomic,strong)NSArray *array;

@end

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

- (void)changeImages {
    
    NSMutableArray * array = [NSMutableArray array];

    NSMutableIndexSet *picks = [NSMutableIndexSet indexSet];
    do {
        [picks addIndex:arc4random() % self.array.count];
    } while (picks.count != 3);
    [picks enumerateIndexesUsingBlock:^(NSUInteger idx, BOOL *stop) {
        
        [array addObject:self.array[idx]];
        
    }];
    
    self.model.url1 = array[0];
    self.model.url2 = array[1];
    self.model.url3 = array[2];
    
    [self getData];
}

- (NSArray *)array {
    
    if (!_array) {
        
        _array = [NSMutableArray arrayWithObjects:@"http://www.djy-es.com/statics/images/jianjie.jpg",@"http://www.djy-es.com/statics/images/zhunzhe.jpg",@"http://www.djy-es.com/statics/images/slider-bg-2.jpg",@"http://www.djy-es.com/statics/images/ma1.png",@"http://www.djy-es.com/statics/site/images/business/1.jpg",@"https://www.baidu.com/img/pc_675fe66eab33abff35a2669768c43d95.png", nil];
    }
    
    return _array;
}

@end
