//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"



@interface DeliveryService : NSObject

@property (strong, nonatomic) NSMutableArray *pizzasMade;

@property (strong, nonatomic) DeliveryCar *deliveryCar;

-(void)deliverPizza:(Pizza*)pizza;

-(NSArray*)listPizzas;


@end
