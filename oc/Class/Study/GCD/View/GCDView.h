//
//  GCDView.h
//  oc
//
//  Created by New on 2022/10/24.
//

#import "BaseView.h"
#import "GCDViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface GCDView : BaseView

@property(nonatomic,strong)GCDViewModel * viewModel;

- (void)setWithViewModel:(GCDViewModel *)viewModel;

@end

NS_ASSUME_NONNULL_END
