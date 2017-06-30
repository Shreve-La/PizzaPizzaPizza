//
//  NiceManager.m
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "NiceManager.h"


@implementation NiceManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;

}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"You look nice today");
    NSLog(@"Kitchen Did Make a Pizza with %@", pizza.toppings);
    [self.deliveryService deliverPizza:pizza];
    
}




@end
