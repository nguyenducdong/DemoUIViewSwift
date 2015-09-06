//
//  CampFire.m
//  DongPracticeObjectiveC
//
//  Created by Dong Nguyen Duc on 9/6/15.
//  Copyright (c) 2015 Dong Nguyen Duc. All rights reserved.
//

#import "CampFire.h"

@interface CampFire ()

@end

@implementation CampFire
{
    UIImageView *fireImageView;
}

-(void)loadView{
    [super loadView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self burnFire];
    
}

-(void)burnFire{
    fireImageView = [[UIImageView alloc]initWithFrame:self.view.bounds];
    NSMutableArray *images = [[NSMutableArray alloc]initWithCapacity:17];
    for (int i = 1; i < 18; i++) {
        NSString *fileName;
        if (i < 10) {
            fileName = [NSString stringWithFormat:@"campFire0%d.gif",i];
        }else{
            fileName = [NSString stringWithFormat:@"campFire%d.gif",i];
        }
        [images addObject:[UIImage imageNamed:fileName]];
    }
    fireImageView.animationImages = images;
    fireImageView.animationDuration = 2;
    fireImageView.animationRepeatCount = 0;
    [self.view addSubview:fireImageView];
    [fireImageView startAnimating];
}

@end
