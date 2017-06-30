//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "MeanManager.h"
#import "NiceManager.h"






int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        MeanManager *meanManager = [MeanManager new];
        NiceManager *niceManager = [NiceManager new];
        DeliveryService *deliveryService = [DeliveryService new];
        DeliveryCar *deliveryCar = [DeliveryCar new];
        meanManager.deliveryService = deliveryService;
        niceManager.deliveryService = deliveryService;
        deliveryService.deliveryCar = deliveryCar;
        
        PizzaSize pizzaSize;
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // Get Size and toppings
            NSString *size = commandWords[0];
            NSRange range = NSMakeRange(1, commandWords.count-1);
            NSArray *toppings = [commandWords subarrayWithRange:range];
            
            
            //Convert size to an ontion from PizzaSize Enum
            if([size isEqualToString:@"small"])
                {pizzaSize = Small;}
        
            else if([size isEqualToString:@"medium"])
                {pizzaSize = Medium;}
            
            else if([size isEqualToString:@"large"])
            {pizzaSize = Large;}
            
            else{
                NSLog(@"Please enter a valid size: small, medium, or large");
                continue;
            }
            
            //set delegate to mean manager
            restaurantKitchen.delegate = meanManager;
            
            // Send order to Kitchen instance
            [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];

            //set delegate to mean manager
            restaurantKitchen.delegate = niceManager;
            
            // Send order to Kitchen instance
            [restaurantKitchen makePizzaWithSize:pizzaSize toppings:toppings];
            
            [deliveryService listPizzas]

            
            }

    }
    return 0;
}

