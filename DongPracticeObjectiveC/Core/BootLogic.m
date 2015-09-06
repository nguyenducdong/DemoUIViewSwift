//
//  BootLogic.m
//  TechmasterApp
//
//  Created by techmaster on 9/7/14.
//  Copyright (c) 2014 Techmaster. All rights reserved.
//

#import "BootLogic.h"
#import "MainScreen.h"


@implementation BootLogic
+ (void) boot: (UIWindow*) window
{
    MainScreen* mainScreen = [[MainScreen alloc] initWithStyle:UITableViewStyleGrouped];
    //--------- From this line, please customize your menu data -----------
    NSDictionary* basic = @{SECTION: @"BasicView", MENU: @[
                                    @{TITLE: @"BasicView", CLASS: @"BasicView"},
                                    @{TITLE: @"ChessView", CLASS: @"ChessView"}
                          ]};
    
    mainScreen.menu = @[basic];
    mainScreen.title = @"Collection Programming";
    mainScreen.about = @"This is Collection Programming in Objecitve_C";
    //--------- End of customization -----------
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController: mainScreen];
    
    window.rootViewController = nav;
}
@end
