//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Kitchen.h"

typedef NS_ENUM(NSInteger, PizzaSize){
    Small,
    Medium,
    Large
};

@interface Pizza : NSObject

@property  PizzaSize size;
@property (strong, nonatomic) NSArray <NSString*> *toppings;

- (instancetype)initWithSize:(PizzaSize)size andToppings:(NSArray*)toppings;


@end
