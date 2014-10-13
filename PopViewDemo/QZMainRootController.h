//
//  QZMainRootController.h
//  PopViewDemo
//
//  Created by jhony on 14-7-22.
//  Copyright (c) 2014年 jhonyzhang. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "JTYRenewalPopoView.h"


@interface QZMainRootController : UIViewController<UIPopoverControllerDelegate,UAModalPanelDelegate>
{
    
    UIView *helpView;
    
}
@property (nonatomic,retain)     UAPopTitledPanel *popView;

@end
