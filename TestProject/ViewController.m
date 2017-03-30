//
//  ViewController.m
//  TestProject
//
//  Created by Shakur AL Islam on 3/29/17.
//  Copyright © 2017 Shakur AL Islam. All rights reserved.
//

#import "ViewController.h"
#import "TIVehicleView.h"
#import "CONSTANT.h"

@interface ViewController ()

@end

@implementation ViewController

-(UIColor *) getColorFromRGBValueWithRed:(double) redValue withGreed:(double) greenValue withBlue:(double) blueValue{
    return  [UIColor colorWithRed:redValue/255.0 green:greenValue/255.0 blue:blueValue/255.0 alpha:1];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [self getColorFromRGBValueWithRed:224 withGreed:223 withBlue:223];
    
    TIVehicleView *vehicleView = [[TIVehicleView alloc] initWithFrameForCategoryList:CGRectMake(0, 64, SCREEN_WIDTH, 300) withVehicleData:nil];
    [self.view addSubview:vehicleView];
    
    UIButton *saveButton = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 100, 40.0)];
    saveButton.backgroundColor = [UIColor grayColor];
    [saveButton addTarget:self action:@selector(saveAction) forControlEvents:UIControlEventTouchUpInside];
    [saveButton setTitle:@"Document" forState:UIControlStateNormal];
    saveButton.titleLabel.font = [UIFont boldSystemFontOfSize:13.00f];
    saveButton.titleLabel.minimumScaleFactor = (10.0f/saveButton.titleLabel.font.pointSize);
    saveButton.titleLabel.adjustsFontSizeToFitWidth = YES;
    [self.view addSubview:saveButton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) saveAction{
    
}

@end
