//
//  TIVehicleView.h
//  TestProject
//
//  Created by Shakur AL Islam on 3/29/17.
//  Copyright © 2017 Shakur AL Islam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TIVehicleView : UIView{
    UIView *vehicleContainerView;
}

- (id)initWithFrameForCategoryList:(CGRect)frame withVehicleData:(NSMutableDictionary *) vehicleDictionary;

@end

