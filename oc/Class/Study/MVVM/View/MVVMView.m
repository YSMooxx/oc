//
//  MVVMView.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "MVVMView.h"

@interface MVVMView()

@property(nonatomic,strong)MVVMViewModel *vm;
@property(nonatomic,strong)UILabel * label;
@property(nonatomic,strong)UIButton *button;

@end

@implementation MVVMView

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        [self setupUI];
        [self addSubView1];
    }
    
    return self;
}

-(void)setupUI {
    
    self.backgroundColor = [UIColor whiteColor];
    self.bounds = [UIScreen mainScreen].bounds;
}

-(void)addSubView1{
    
    [self addSubview:self.label];
    [self addSubview:self.button];
}

- (void)setWithViewModel:(MVVMViewModel *)vm {
    
    self.vm = vm;
    [self.vm addObserver:self forKeyPath:@"nameStr" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    self.label.text = vm.model.name;
}

- (void)mvvmClickChangeModel {
    
    [self.vm clickChangeName];
    self.label.text = self.vm.model.name;
}

#pragma label

- (UILabel *)label {
    
    if (!_label) {
        
        _label = [[UILabel alloc] initWithFrame:CGRectMake(150, 100, 100, 30)];
        _label.backgroundColor = [UIColor orangeColor];
    }
    
    return _label;
}

#pragma button

- (UIButton *)button {
    
    if (!_button) {
        
        _button = [UIButton new];
        _button.backgroundColor = [UIColor redColor];
        [_button setTitle:@"点击" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(mvvmClickChangeModel) forControlEvents:UIControlEventTouchUpInside];
        _button.frame = CGRectMake(150, 200, 50, 50);
    }
    
    return _button;
}

@end
