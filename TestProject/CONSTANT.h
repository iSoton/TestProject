//
//  CONSTANT.h
//  TestProject
//
//  Created by Shakur AL Islam on 3/29/17.
//  Copyright © 2017 Shakur AL Islam. All rights reserved.
//

#ifndef CONSTANT_h
#define CONSTANT_h

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

#define LEFT_PADDING 10
#define TOP_PADDING 10

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IPHONE_5 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 568.0f)
#define IPHONE_4 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 480.0f)
#define IPHONE_6 (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 667.0f)
#define IPHONE_6P (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 736.0f)

#define STANDARD_SCREEN_HEIGHT 568.0f
#define STANDARD_SCREEN_WIDTH 320.0f

#define HEIGHT_FACTOR    SCREEN_HEIGHT/STANDARD_SCREEN_HEIGHT
#define WIDTH_FACTOR    SCREEN_WIDTH/STANDARD_SCREEN_WIDTH

#define HEIGHT_FOR(a)       ((a)*(HEIGHT_FACTOR))
#define WIDTH_FOR(a)       ((a)*(WIDTH_FACTOR))

#define FONT_SIZE_FOR(a)       ((a)*(WIDTH_FACTOR))

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_CENTERX ([[UIScreen mainScreen] bounds].size.width)/2.0
#define SCREEN_CENTERY ([[UIScreen mainScreen] bounds].size.height)/2.0

#endif /* CONSTANT_h */
