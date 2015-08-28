//
//  PersonTableViewCell.m
//  TableViewFromJson
//
//  Created by vmvinothkumar on 26/08/15.
//  Copyright (c) 2015 vmvinothkumar. All rights reserved.
//

#import "PersonTableViewCell.h"

@implementation PersonTableViewCell
-(void)setCellSource:(PersonModel*)person
{
    self.personName.text = person.personName;
    self.personCity.text = person.personCity;
    self.personOccupation.text = person.personOccupation;
}
@end
