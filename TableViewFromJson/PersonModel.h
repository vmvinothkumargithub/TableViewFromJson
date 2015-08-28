//
//  PersonModel.h
//  TableViewFromJson
//
//  Created by vmvinothkumar on 26/08/15.
//  Copyright (c) 2015 vmvinothkumar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonModel : NSObject
@property (nonatomic, strong) NSString *personName;
@property (nonatomic, strong) NSString *personCity;
@property (nonatomic, strong) NSString *personOccupation;

-(instancetype)initWithDictionary:(NSDictionary*)dict;
@end
