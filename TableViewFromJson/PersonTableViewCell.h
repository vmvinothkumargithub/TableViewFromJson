//
//  PersonTableViewCell.h
//  TableViewFromJson
//
//  Created by vmvinothkumar on 26/08/15.
//  Copyright (c) 2015 vmvinothkumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonModel.h"

@interface PersonTableViewCell : UITableViewCell
@property (nonatomic, strong) IBOutlet UILabel *personName;
@property (nonatomic, strong) IBOutlet UILabel *personCity;
@property (nonatomic, strong) IBOutlet UILabel *personOccupation;

-(void)setCellSource:(PersonModel*)person;
@end
