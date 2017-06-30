//
//  MeanManager.m
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "MeanManager.h"


@implementation MeanManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"])
    {
        NSLog(@"I refuse to make a pizza with anchovies");
        return NO;
    }
    else
    {
        return YES;
    }
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Kitchen Did Make a Pizza with %@", pizza.toppings);
    [self.deliveryService deliverPizza:pizza];
}


@end
