//
//  FAColor.m
//  Fuudapp
//
//  Created by Abbin Varghese on 23/09/16.
//  Copyright © 2016 Fuudapp. All rights reserved.
//

#import "FAColor.h"

#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
                green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
                 blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
                alpha:1.0]

@implementation FAColor

+(UIColor*)FAGreen{
    return UIColorFromRGB(0x3cba54);
}

+(UIColor*)FARed{
    return UIColorFromRGB(0xdb3236);
}

+(UIColor*)FAYellow{
    return UIColorFromRGB(0xf4c20d);
}

@end
