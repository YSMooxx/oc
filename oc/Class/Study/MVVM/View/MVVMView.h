//
//  MVVMView.h
//  oc
//
//  Created by New on 2022/10/24.
//

#import <UIKit/UIKit.h>
#import "MVVMViewModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVVMView : UIView

- (void)setWithViewModel:(MVVMViewModel *)vm;

@end

NS_ASSUME_NONNULL_END
