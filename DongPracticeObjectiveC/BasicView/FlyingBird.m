//
//  FlyingBird.m
//  DongPracticeObjectiveC
//
//  Created by Dong Nguyen Duc on 9/7/15.
//  Copyright (c) 2015 Dong Nguyen Duc. All rights reserved.
//

#import "FlyingBird.h"

@interface FlyingBird ()
{
    UIImageView *bird;
}

@end

@implementation FlyingBird

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self drawJungle];
    [self addBird];
    [self flyUpAndDown];
}

//Vẽ khu rừng
-(void)drawJungle{
    bird = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"jungle.jpg"]];
    bird.frame = self.view.bounds;
    bird.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:bird];
    
}

//Vẽ con chim
-(void)addBird{
    bird = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 110, 68)];
    bird.animationImages = @[[UIImage imageNamed:@"bird0"],
                             [UIImage imageNamed:@"bird1"],
                             [UIImage imageNamed:@"bird2"],
                             [UIImage imageNamed:@"bird3"],
                             [UIImage imageNamed:@"bird4"],
                             [UIImage imageNamed:@"bird5"]];
    bird.animationRepeatCount = 0;
    bird.animationDuration = 1;
    [bird startAnimating];
    [self.view addSubview:bird];
}

-(void)flyUpAndDown{
    bird.transform = CGAffineTransformIdentity;
    [UIView animateWithDuration:5 animations:^{
        bird.center = CGPointMake(self.view.frame.size.width, self.view.frame.size.height);
    } completion:^(BOOL finished) {
        bird.transform = CGAffineTransformConcat(
                                                 CGAffineTransformMakeScale(-1, 1),
                                                 CGAffineTransformMakeRotation(M_PI_4));
        [UIView animateWithDuration:5 animations:^{
            bird.center = CGPointMake(0, 0);
        } completion:^(BOOL finished) {
            [self flyUpAndDown];
        }];
    }];
    
}

@end
