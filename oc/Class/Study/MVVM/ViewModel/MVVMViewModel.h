//
//  MVVMViewModel.h
//  oc
//
//  Created by New on 2022/10/24.
//

#import <Foundation/Foundation.h>
#import "MVVMModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVVMViewModel : NSObject

@property(nonatomic,strong)MVVMModel *model;

-(void)setWithModel:(MVVMModel * _Nonnull)model;
-(MVVMViewModel*)clickChangeName;

@end

NS_ASSUME_NONNULL_END
