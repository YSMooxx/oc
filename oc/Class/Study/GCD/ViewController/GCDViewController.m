//
//  GCDViewController.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "GCDViewController.h"
#import "GCDView.h"
#import "SDWebImage.h"

@interface GCDViewController ()

@property(nonatomic,strong)UIImageView * imageView;

@end

@implementation GCDViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setupUI];
    
}

- (void)setupUI2 {
    
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.imageView];
//    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://www.djy-es.com/statics/images/jianjie.jpg"]];
//    [self.imageView setImage:[UIImage imageNamed:@"ma1"]];
}

- (void)setupUI {
    
    GCDView * view = [GCDView new];
    GCDModel * model = [GCDModel new];
    
    model.url1 = @"http://www.djy-es.com/statics/images/jianjie.jpg";
    model.url2 = @"http://www.djy-es.com/statics/images/zhunzhe.jpg";
    model.url3 = @"http://www.djy-es.com/statics/images/slider-bg-2.jpg";
    
    GCDViewModel * viewModel = [GCDViewModel new];
    
    [viewModel setWithModel:model];
    
    [view setWithViewModel:viewModel];
    
    self.view = view;
}

-(UIImageView *)imageView {
    
    if (!_imageView) {
        
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    }
    
    return _imageView;
}

@end
