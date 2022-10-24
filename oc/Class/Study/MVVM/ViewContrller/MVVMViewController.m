//
//  MVVMViewController.m
//  oc
//
//  Created by New on 2022/10/24.
//

#import "MVVMViewController.h"

@interface MVVMViewController ()

@end

@implementation MVVMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI {
    
    MVVMView *mView = [MVVMView new];
    MVVMModel *model = [MVVMModel new];
    model.name = @"name1";
    MVVMViewModel * viewModel = [MVVMViewModel new];
    [viewModel setWithModel:model];
    [mView setWithViewModel:viewModel];
    
    self.view = mView;
}

@end
