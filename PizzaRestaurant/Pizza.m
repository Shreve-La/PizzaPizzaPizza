//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

//typedef NS_ENUM(NSInteger, PizzaSize){
//    Small,
//    Medium,
//    Large
//};


- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray*)toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    
    }
    return self;
}

@end
