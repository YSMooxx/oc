//
//  PersonViewController.m
//  oc
//
//  Created by New on 2022/10/26.
//

#import "PersonViewController.h"

@interface PersonViewController ()

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setup];
}

- (void)setup {
    
    Person * p = [Person new];
    p.name = @"李原丹";
    [p personChangeName];
    [Person personChangeName2];
}

@end
