//
//  Person.h
//  oc
//
//  Created by New on 2022/10/26.
//

#import "BaseModel.h"

@interface Person : BaseModel

@property(nonatomic,strong)NSString *name;

-(void)personChangeName;

+ (void)personChangeName2;

@end
