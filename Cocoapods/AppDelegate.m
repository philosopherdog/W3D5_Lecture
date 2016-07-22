//
//  AppDelegate.m
//  Cocoapods
//
//  Created by steve on 2016-07-21.
//  Copyright © 2016 steve. All rights reserved.
//

#import "AppDelegate.h"

#pragma mark - Person
@interface Person: NSObject
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSNumber *age;
- (instancetype)initWithName:(NSString *)name age:(NSNumber *)age NS_DESIGNATED_INITIALIZER;
@end

@implementation Person
- (instancetype)initWithName:(NSString *)name age:(NSNumber *)age {
    if (self = [super init]) {
        _name = name;
        _age = age;
    }
    return self;
}

- (instancetype)init {
    NSAssert(NO, @"always use the designated init");
    return [self initWithName:@"default" age:@(0)];
}

// override so that we can log the object to the console
- (NSString *)description {
    return [NSString stringWithFormat:@"name: %@ age: %@", self.name, self.age];
}

@end

#pragma mark - AppDelegate

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSArray *persons = [self createPersons];
    [self sortWithPersons:persons];
    return YES;
}

- (NSArray *)createPersons {
    Person *p1 = [[Person alloc] initWithName:@"Fred" age:@(30)];
    Person *p2 = [[Person alloc] initWithName:@"Jane" age:@(30)];
    Person *p3 = [[Person alloc] initWithName:@"Lit" age:@(20)];
    Person *p4 = [[Person alloc] initWithName:@"Fritz" age:@(20)];
    Person *p5 = [[Person alloc] initWithName:@"Mitzy" age:@(30)];
    Person *p6 = [[Person alloc] initWithName:@"Linda" age:@(28)];
    Person *p7 = [[Person alloc] initWithName:@"Don" age:@(28)];
    Person *p8 = [[Person alloc] initWithName:@"Steve" age:@(55)];
    Person *p9 = [[Person alloc] initWithName:@"Elly" age:@(55)];
    Person *p10 = [[Person alloc] initWithName:@"Abe" age:@(55)];
    Person *p11 = [[Person alloc] initWithName:@"Adam" age:@(44)];
    return @[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11];
}

- (void)sortWithPersons:(NSArray*)persons {
    
    // sort the array into a dictionary where the key is the age, and the value is an array of person objects
    
    
}



@end
