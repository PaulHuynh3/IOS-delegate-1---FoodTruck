//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "PizzaPizza.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim hortons" andFoodType:@"shortbread"];
       
        //call in beginning of code when you are instantiating remeber code runs from top to bottom!!
         Cook* cook = [[Cook alloc]init];
        
        PizzaPizza *pizzaPizza = [[PizzaPizza alloc]init];
    
        truckB.delegate = cook;
        truckA.delegate = pizzaPizza;
        
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
        
       
        
        
        
        
    }
    return 0;
}
