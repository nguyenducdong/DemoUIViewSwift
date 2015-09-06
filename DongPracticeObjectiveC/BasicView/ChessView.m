//
//  ChessView.m
//  DongPracticeObjectiveC
//
//  Created by Dong Nguyen Duc on 9/6/15.
//  Copyright (c) 2015 Dong Nguyen Duc. All rights reserved.
//

#import "ChessView.h"
static const CGFloat margin = 20.0;
static const CGFloat h0 = 160.0;
@interface ChessView ()

@end

@implementation ChessView{
    UIView *containerView;
}
-(void)loadView{
    [super loadView];
    self.view.backgroundColor = [UIColor grayColor];
    containerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width - margin * 2.0, self.view.bounds.size.width - margin *2.0)];
    containerView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:containerView];
    containerView.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    CGFloat cellWidth = (self.view.bounds.size.width - margin *2.0)/8.0;
    for (int rowIndex = 0; rowIndex < 8; rowIndex++) {
        for ( int colIndex = 0; colIndex < 8; colIndex++) {
            CGRect rect = CGRectMake(colIndex * cellWidth, rowIndex * cellWidth, cellWidth, cellWidth);
            UIView *cell = [[UIView alloc]initWithFrame:rect];
            if (rowIndex % 2 == 0) { //Even row
                cell.backgroundColor = (colIndex % 2 == 0) ? [UIColor blackColor] : [UIColor whiteColor];
            }else{// odd row
                cell.backgroundColor = (colIndex % 2 == 0) ? [UIColor whiteColor] : [UIColor blackColor];
            }
            [containerView addSubview:cell];
        }
    }
    UISlider *slider = [[UISlider alloc]initWithFrame:CGRectMake(20, self.view.bounds.size.height - 100, self.view.bounds.size.width - 40, 10)];
    slider.minimumValue = -1;
    slider.maximumValue = 1;
    slider.value = 0;
    [slider addTarget:self action:@selector(onRotate:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];

    
}

-(void)onRotate:(UISlider *)sender{
    containerView.transform = CGAffineTransformMakeRotation(sender.value * M_PI);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
