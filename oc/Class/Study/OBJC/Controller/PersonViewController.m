//
//  PersonViewController.m
//  oc
//
//  Created by New on 2022/10/26.
//

#import "PersonViewController.h"

@interface PersonViewController ()

@property(nonatomic,strong)UILabel *label;
@property(nonatomic,assign)float xx;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSArray *array;

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup2];
}

- (void)setup {
    
    Person * p = [Person new];
//    p.name = @"李原丹";
    [p personChangeName];
    [Person personChangeName2];
}

- (void)setup2 {
    
    Person * p = [Person new];
    [p addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
    [p setValue:@"老李" forKey:@"name"];
    
    [self.label setValue:@"yx" forKey:@"text"];
    [self.label sizeToFit];
    [self.view addSubview:self.label];
    [self setValue:@"2" forKey:@"xx"];
    NSLog(@"%f",self.xx);
    NSLog(@"%@",[self valueForKey:@"label"]);
    NSLog(@"%@",[p valueForKeyPath:@"_name.length"]);
    
    [p removeObserver:self forKeyPath:@"name"];
    [p setValue:@"老杨" forKey:@"name"];

    
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    NSLog(@"keyPath = %@, obj = %@, change = %@, context = %@", keyPath, object, change, context);
}

- (UILabel *)label {
    
    if(!_label){
        
        _label = [UILabel new];
        _label.textColor = [UIColor redColor];
        _label.frame = CGRectMake(100, 100, 200, 50);
    }
    
    return _label;
}

- (NSArray *)array {
    
    if (!_array) {
        
        _array = @[@1,@2,@3,@4];
    }
    
    return _array;
}

@end
