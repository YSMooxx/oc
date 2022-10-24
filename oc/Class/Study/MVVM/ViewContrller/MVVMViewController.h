//
//  MVVMViewController.h
//  oc
//
//  Created by New on 2022/10/24.
//

#import "BaseViewController.h"
#import "MVVMView.h"
#import "MVVMViewModel.h"
#import "MVVMModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVVMViewController : BaseViewController

@property(nonatomic,strong)MVVMViewModel *viewModel;

@end

NS_ASSUME_NONNULL_END
