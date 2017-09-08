//
//  FoodTruck.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "FoodTruck.h"

@interface FoodTruck ()

@property (nonatomic, assign) float earnings;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *foodType;

@end

@implementation FoodTruck

-(instancetype)initWithName:(NSString *)pun andFoodType:(NSString *)foodType {
    self = [super init];
    if (self) {
        _name = pun;
        _foodType = foodType;
    }
    return self;
}


-(void)serve:(int)orders {
    
    //the method [self.delegate returns the function given in protocol].... [-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;];
    double price = [self.delegate foodTruck:self priceForFood:_foodType];
    
    NSLog(@"Welcome to %@", self.name);
    NSLog(@"We serve %@ for $%0.2f", self.foodType, price);
    NSLog(@" ");
    
    self.earnings += orders * price;
}

-(void)cashOut {
    NSLog(@"%@ earned %0.2f today!", self.name, self.earnings);
}


@end
