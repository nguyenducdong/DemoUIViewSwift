//
//  BasicView.m
//  DongPracticeObjectiveC
//
//  Created by Dong Nguyen Duc on 9/6/15.
//  Copyright (c) 2015 Dong Nguyen Duc. All rights reserved.
//

#import "BasicView.h"

@interface BasicView ()
@property (nonatomic, weak) IBOutlet UIView *myView;
@property (nonatomic, weak) IBOutlet UISlider *rotateSlider;
@property (nonatomic, weak) IBOutlet UISlider *scaleSlider;
@end

@implementation BasicView

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Hello");
}

-(IBAction)onShow:(UISwitch*)sender{
    self.myView.hidden = !sender.on;
}

-(IBAction)onAlphaChange:(UISlider *)sender{
    self.myView.alpha = sender.value;
}

-(IBAction)onRotate:(UISlider *)sender{
    [self rotateAndScale];
}

-(IBAction)onScaleChange:(UISlider *)sender{
    [self rotateAndScale];
}

-(IBAction)onColorChange:(UISegmentedControl *)sender{
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.myView.backgroundColor = [UIColor blackColor];
            break;
        case 1:
            self.myView.backgroundColor = [UIColor redColor];
            break;
        case 2:
            self.myView.backgroundColor = [UIColor greenColor];
            break;
        case 3:
            self.myView.backgroundColor = [UIColor blueColor];
            break;
        default:
            break;
    }
}

-(void)rotateAndScale{
    CGAffineTransform rotateTransform = CGAffineTransformMakeRotation(self.rotateSlider.value * M_PI);
    CGAffineTransform scalaTransform = CGAffineTransformMakeScale(self.scaleSlider.value, self.scaleSlider.value);
    self.myView.transform = CGAffineTransformConcat(rotateTransform, scalaTransform);
}


@end
