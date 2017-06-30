//
//  MeanManager.h
//  PizzaRestaurant
//
//  Created by swcl on 2017-06-30.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"

@interface MeanManager : NSObject <KitchenDelegate>

@property (strong, nonatomic) DeliveryService *deliveryService;

@end
