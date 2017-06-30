//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService


-(void)deliverPizza:(Pizza*)pizza{
    [self.deliveryCar deliverPizza:pizza];
    [self.pizzasMade addObject:pizza];
}

-(NSMutableArray*)listPizzas{
    return self.pizzasMade;
}

@end
