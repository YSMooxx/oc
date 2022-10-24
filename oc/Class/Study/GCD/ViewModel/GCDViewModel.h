//
//  GCDViewModel.h
//  oc
//
//  Created by New on 2022/10/24.
//

#import "BaseViewModel.h"
#import "GCDModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void (^imageBlock)(NSMutableArray *array);

@interface GCDViewModel : BaseViewModel

@property(nonatomic,strong)GCDModel * model;

//@property(nonatomic,strong)UIImage * image1;
//
//@property(nonatomic,strong)UIImage * image2;
//
//@property(nonatomic,strong)UIImage * image3;

@property(nonatomic,strong)imageBlock block;

- (void)setWithModel:(GCDModel *)model;

- (void)getData;

@end

NS_ASSUME_NONNULL_END
