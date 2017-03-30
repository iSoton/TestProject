//
//  TIVehicleView.m
//  TestProject
//
//  Created by Shakur AL Islam on 3/29/17.
//  Copyright © 2017 Shakur AL Islam. All rights reserved.
//

#import "TIVehicleView.h"
#import "CONSTANT.h"
#import "TestProject-Swift.h"

@class VehicleInfo;

@implementation TIVehicleView

- (UILabel *) getLabel:(CGRect) frame withFont:(UIFont *) labelFont withText:(NSString *) labelText withTextColor:(UIColor *) textColor{
    UILabel *Label = [[UILabel alloc]initWithFrame:frame];
    Label.textColor= textColor;
    if ([labelText length] > 0) {
        Label.text= labelText;
    }
    Label.font=labelFont;
    Label.numberOfLines = 0;
    Label.textAlignment = NSTextAlignmentLeft;
    return Label;
}

- (UIImageView *) getImageView:(CGRect) frame withImageName:(NSString *) imageName{
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:frame];
    imgView.image = [UIImage imageNamed:imageName];
    imgView.contentMode = UIViewContentModeScaleAspectFit;
    return imgView;
}

-(void) createLayout{
    vehicleContainerView = [[UIView alloc] initWithFrame:CGRectMake(15, 0, SCREEN_WIDTH - 30, 280)];
    [self addSubview:vehicleContainerView];
    vehicleContainerView.backgroundColor = [UIColor whiteColor];
    vehicleContainerView.layer.cornerRadius = 5;
    vehicleContainerView.clipsToBounds = YES;
    
    vehicleContainerView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    vehicleContainerView.layer.borderWidth = 2;
    
    UILabel *bottomLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - WIDTH_FOR(130))/2, vehicleContainerView.frame.size.height - (55/2), WIDTH_FOR(130), (55))];
    [self addSubview:bottomLabel];
    bottomLabel.backgroundColor = [UIColor darkGrayColor];
    bottomLabel.layer.cornerRadius = WIDTH_FOR(25);
    bottomLabel.clipsToBounds = YES;
    bottomLabel.text = @"BAY 123G";
    bottomLabel.textAlignment = NSTextAlignmentCenter;
    bottomLabel.font = [UIFont boldSystemFontOfSize:20];
    bottomLabel.textColor = [UIColor whiteColor];
    bottomLabel.layer.borderColor = [UIColor grayColor].CGColor;
    bottomLabel.layer.borderWidth = 1.5;
}

- (id)initWithFrameForCategoryList:(CGRect)frame withVehicleData:(NSMutableDictionary *) vehicleDictionary{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        [self createLayout];
        
        [self populateView];
        
    }
    return self;
}

-(void) populateView{

    VehicleInfo *selfs = [VehicleInfo new];
    selfs.Name = @"Maheraj";
    NSLog(@"%@", selfs.Name);
    
    UILabel *nameLabel = [self getLabel:CGRectMake(15, 10, SCREEN_WIDTH/2 - 30, 20) withFont:[UIFont boldSystemFontOfSize:15] withText:@"Toyota Corolla" withTextColor:[UIColor grayColor]];
    [vehicleContainerView addSubview:nameLabel];
    
    UILabel *modelLabel = [self getLabel:CGRectMake(SCREEN_WIDTH/2-15, 10, SCREEN_WIDTH/2 - 30, 20) withFont:[UIFont boldSystemFontOfSize:15] withText:@"CA-5XTP137" withTextColor:[UIColor darkTextColor]];
    modelLabel.textAlignment = NSTextAlignmentRight;
    [vehicleContainerView addSubview:modelLabel];
    
    UIImageView *vehicleImage = [self getImageView:CGRectMake(2.5, 30, vehicleContainerView.frame.size.width - 5, 180) withImageName:@"vehicle.png"];
    [vehicleContainerView addSubview:vehicleImage];
    
    float framePositionY = CGRectGetMaxY(vehicleImage.frame) + 5;
    float frameWidth = vehicleContainerView.frame.size.width/3;
    
    UILabel *seatLabel = [self getLabel:CGRectMake(15, framePositionY, frameWidth, 20) withFont:[UIFont boldSystemFontOfSize:13] withText:@"5 Seats" withTextColor:[UIColor grayColor]];
    [vehicleContainerView addSubview:seatLabel];
    
    UILabel *pieceLabel = [self getLabel:CGRectMake(frameWidth, framePositionY, frameWidth, 20) withFont:[UIFont boldSystemFontOfSize:13] withText:@"3 pieces" withTextColor:[UIColor grayColor]];
    [vehicleContainerView addSubview:pieceLabel];
    
    UILabel *weightLabel = [self getLabel:CGRectMake(frameWidth * 2, framePositionY, frameWidth, 20) withFont:[UIFont boldSystemFontOfSize:13] withText:@"26/35 mpg" withTextColor:[UIColor grayColor]];
    [vehicleContainerView addSubview:weightLabel];
}

@end
