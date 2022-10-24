//
//  GCDView.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "GCDView.h"
#import "SDWebImage.h"

@interface GCDView ()

@property(nonatomic,strong)UIImageView *imageView1;
@property(nonatomic,strong)UIImageView *imageView2;
@property(nonatomic,strong)UIImageView *imageView3;
@property(nonatomic,strong)UIButton *button;

@end

@implementation GCDView

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        [self setupUI];
        [self addSubview1];
    }
    
    return self;
}

- (void)setupUI {
    
    self.backgroundColor = [UIColor orangeColor];
    self.bounds = [UIScreen mainScreen].bounds;
    
}

- (void)addSubview1 {
    
    [self addSubview:self.imageView1];
    [self addSubview:self.imageView2];
    [self addSubview:self.imageView3];
    [self addSubview:self.button];
}

- (void)changeImages{
    
    [self.viewModel changeImages];
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    BJWeakSelf
    [self.imageView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(weakSelf).offset(150);
        make.centerX.equalTo(weakSelf);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(150);
    }];
    
    [self.imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(weakSelf.imageView1.mas_bottom).offset(50);
        make.centerX.equalTo(weakSelf);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(150);
    }];
    
    [self.imageView3 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(weakSelf.imageView2.mas_bottom).offset(50);
        make.centerX.equalTo(weakSelf);
        make.width.mas_equalTo(300);
        make.height.mas_equalTo(150);
    }];
    
    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(weakSelf.imageView3.mas_bottom).offset(50);
        make.centerX.equalTo(weakSelf);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(30);
    }];
}

- (void)setWithViewModel:(GCDViewModel *)viewModel {
    
    self.viewModel = viewModel;
    
    [self.viewModel getData];
    
    BJWeakSelf
    _viewModel.block = ^(NSMutableArray * _Nonnull array) {
        
        [weakSelf.imageView1 setImage:array[0]];
        [weakSelf.imageView2 setImage:array[1]];
        [weakSelf.imageView3 setImage:array[2]];
    };
}

#pragma subview

- (UIImageView *)imageView1 {
    
    if (!_imageView1) {
        
        _imageView1 = [UIImageView new];
    }
    
    return _imageView1;
}

- (UIImageView *)imageView2 {
    
    if (!_imageView2) {
        
        _imageView2 = [UIImageView new];
    }
    
    return _imageView2;
}

- (UIImageView *)imageView3 {
    
    if (!_imageView3) {
        
        _imageView3 = [UIImageView new];
    }
    
    return _imageView3;
}

- (UIButton *)button {
    
    if (!_button) {
        
        _button = [UIButton new];
        _button.backgroundColor = [UIColor redColor];
        [_button setTitle:@"改图" forState:UIControlStateNormal];
        [_button addTarget:self action:@selector(changeImages) forControlEvents:UIControlEventTouchUpInside];
    }
    
    return _button;
}

@end
