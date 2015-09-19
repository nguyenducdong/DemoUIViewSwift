//
//  StarAnimationViewController.m
//  DongPracticeObjectiveC
//
//  Created by Dong Nguyen Duc on 9/19/15.
//  Copyright (c) 2015 Dong Nguyen Duc. All rights reserved.
//

#import "StarAnimationViewController.h"

@interface StarAnimationViewController ()

@end

@implementation StarAnimationViewController
{
    UIImageView *red,*violet,*brown,*green;
    CGFloat deltaX,deltaY;
    CGPoint center;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) loadView {
    [super loadView];
    deltaX = 100;
    deltaY = 100;
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    CGSize size = self.view.bounds.size;
    center = CGPointMake(size.width *0.5, (size.height -60) *0.5);
    red = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"red.png"]];
    violet = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"violet.png"]];
    brown = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"brown.png"]];
    green = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"green.png"]];
    [self vitri];
    [self.view addSubview:red];
    [self.view addSubview:violet];
    [self.view addSubview:brown];
    [self.view addSubview:green];
    [self Animate];
}

-(void)vitri{
    red.center = center;
    violet.center = center;
    brown.center = center;
    green.center = center;
}

-(void)Animate{
    
    [UIView animateWithDuration:1 animations:^{
        brown.center = CGPointMake(center.x -100, center.y -100);
        red.center = CGPointMake(center.x + deltaX, center.y + deltaY);
        green.center = CGPointMake(center.x + deltaX, center.y - deltaY);
        violet.center = CGPointMake(center.x - deltaX, center.y + deltaY);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1 animations:^{
            brown.center = CGPointMake(center.x - deltaX, center.y);
            green.center = CGPointMake(center.x, center.y - deltaY);
            red.center = CGPointMake(center.x + deltaX, center.y);
            violet.center = CGPointMake(center.x, center.y + deltaY);
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1 animations:^{
                [self vitri];
            } completion:^(BOOL finished) {
                [self Animate];
            }];
        }];
    }];
}


@end
