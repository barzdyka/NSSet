//
//  ViewController.m
//  NSSet
//
//  Created by Viktoryia Barzdyka on 4/18/18.
//  Copyright © 2018 Barzdyka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Create NSArray, containing 30 objects.
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i=1; i<=30; i++){
        [array addObject:[NSNumber numberWithInteger:i]];
    }
    NSLog(@"Array %@", array);
    
    //Add duplicates to array.
    for (int i=10; i<=15; i++){
        [array addObject:[NSNumber numberWithInteger:i]];
    }
    NSLog(@"Array with dublicates %@", array);
    
    //Use NSSet to exclude duplicates from array.
    NSSet *set = [NSSet setWithArray:array];
    NSLog(@"Set %@", set);
    
    //release array
    [array release];
    
    //Check what is faster: Create an array of 100 numbers.
    NSMutableArray *array2 = [[NSMutableArray alloc] init];
    for (int i=1; i<=100; i++){
        [array2 addObject:[NSNumber numberWithInteger:i]];
    }
    NSLog(@"Array %@", array2);
    
    //Check whether number 74 is contained inside an array.
    NSDate *methodStart = [NSDate date];
    if ([array2 containsObject:[NSNumber numberWithInteger:74]]) {
        NSLog(@"The array contains 74 number.");
    } else {
        NSLog(@"There is no 74 number in the array");
    }
    NSDate *methodFinish = [NSDate date];
    NSTimeInterval executionTime = [methodFinish timeIntervalSinceDate:methodStart];
    NSLog(@"It took %f to find a number in the array", executionTime);
    
    //Transform array into NSSet
    NSSet *set2 = [NSSet setWithArray:array2];
    
    //release array
    [array2 release];
    
    //check whether number 74 is contained inside NSSet.
    NSDate *methodStartForSet = [NSDate date];
    if ([set2 containsObject:[NSNumber numberWithInteger:74]]){
        NSLog(@"The set contains 74 number.");
    } else {
        NSLog(@"There is no 74 number in the set");
    }
    NSDate *methodFinishForSet = [NSDate date];
    NSTimeInterval executionTimeForSet = [methodFinishForSet timeIntervalSinceDate:methodStartForSet];
    NSLog(@"It took %f to find a number in the set", executionTimeForSet);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
