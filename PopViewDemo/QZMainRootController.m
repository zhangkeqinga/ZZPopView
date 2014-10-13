//
//  QZMainRootController.m
//  PopViewDemo
//
//  Created by jhony on 14-7-22.
//  Copyright (c) 2014年 jhonyzhang. All rights reserved.
//

#import "QZMainRootController.h"

@interface QZMainRootController ()

@end

@implementation QZMainRootController
@synthesize popView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}


- (IBAction)selectorAction:(id)sender{
    
    helpView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 548)];
    helpView.backgroundColor=[UIColor redColor];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=self.popView.frame;
    [helpView addSubview:button];
    
    [button addTarget:self action:@selector(closeAction) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    
    self.popView = (UAPopTitledPanel *)[[JTYRenewalPopoView alloc] initWithFrame:self.view.frame  withView:helpView];
    self.popView.delegate=self;
    [self.view addSubview:self.popView];
    [self.popView showFromPoint:[self.view center]];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)closeAction{
    
    [[NSNotificationCenter defaultCenter] postNotificationName:kGFColseButtonDonePressed object:nil];
}


//old method end
#pragma mark - UAModalDisplayPanelViewDelegate

// Optional: This is called before the open animations.
//   Only used if delegate is set.
- (void)willShowModalPanel:(UAModalPanel *)modalPanel {
	UADebugLog(@"willShowModalPanel called with modalPanel: %@", modalPanel);
}

// Optional: This is called after the open animations.
//   Only used if delegate is set.
- (void)didShowModalPanel:(UAModalPanel *)modalPanel {
	UADebugLog(@"didShowModalPanel called with modalPanel: %@", modalPanel);
}

// Optional: This is called when the close button is pressed
//   You can use it to perform validations
//   Return YES to close the panel, otherwise NO
//   Only used if delegate is set.
- (BOOL)shouldCloseModalPanel:(UAModalPanel *)modalPanel {
	UADebugLog(@"shouldCloseModalPanel called with modalPanel: %@", modalPanel);
	return YES;
}

// Optional: This is called before the close animations.
//   Only used if delegate is set.
- (void)willCloseModalPanel:(UAModalPanel *)modalPanel {
	UADebugLog(@"willCloseModalPanel called with modalPanel: %@", modalPanel);
}

// Optional: This is called after the close animations.
//   Only used if delegate is set.
- (void)didCloseModalPanel:(UAModalPanel *)modalPanel {
    
	UADebugLog(@"didCloseModalPanel called with modalPanel: %@", modalPanel);
}



@end
