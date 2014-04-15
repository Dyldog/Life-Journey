//
//  LJToolSelectViewController.m
//  LifeJourney
//
//  Created by Dylan Elliott on 14/01/2014.
//  Copyright (c) 2014 Dylan Elliott. All rights reserved.
//

#import "LJToolSelectViewController.h"
#import "LJStepNavigationController.h"
@interface LJToolSelectViewController ()

@end

@implementation LJToolSelectViewController

- (id)initWithTools:(NSArray *)tools {
    self = [super init];
    if (self) {
        // Custom initialization
        self.title = @"Tools";
        _tools = tools;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
	// Do any additional setup after loading the view.
    UIView *toolView = [[UIView alloc] initWithFrame:self.view.bounds];
    for (LJTool *tool in self.tools) {
        UIButton *toolButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        toolButton.tag = [self.tools indexOfObject:tool];
        toolButton.titleLabel.font = [UIFont systemFontOfSize:24];
        //nextButton.backgroundColor = [UIColor greenColor];
        [toolButton setTitle:tool.title forState:UIControlStateNormal];
        [toolButton sizeToFit];
        CGPoint toolButtonCenter = toolButton.center;
        toolButtonCenter.x = self.view.$width / 2;
        toolButton.center = toolButtonCenter;
        toolButton.$y = (toolButton.$height + 10) * [self.tools indexOfObject:tool];
        [toolButton addTarget:self action:@selector(toolButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
        [toolView addSubview:toolButton];
    }
    toolView.$height = [[toolView.subviews lastObject] $bottom];
    CGPoint toolCenter = toolView.center;
    toolCenter.y = self.view.$height / 2 - 44;
    toolView.center = toolCenter;
    //activityView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:toolView];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) toolButtonTapped:(UIButton *)sender {
    LJTool *tool = self.tools[sender.tag];
    LJStepNavigationController *toolViewController = [[LJStepNavigationController alloc] initWithNavigationController:self.navigationController ForTool:tool];
}

@end
