//
//  PersonModel.m
//  TableViewFromJson
//
//  Created by vmvinothkumar on 26/08/15.
//  Copyright (c) 2015 vmvinothkumar. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel

-(instancetype)initWithDictionary:(NSDictionary*)dict;
{
    self = [super init];
    if (self) {
        self.personName = dict[@"personName"];
        self.personCity = dict[@"personCity"];
        self.personOccupation = dict[@"personOccupation"];
    }
    return self;
}

@end
