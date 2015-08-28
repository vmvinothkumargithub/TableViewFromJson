//
//  ViewController.m
//  TableViewFromJson
//
//  Created by vmvinothkumar on 26/08/15.
//  Copyright (c) 2015 vmvinothkumar. All rights reserved.
//

#import "ViewController.h"
#import "PersonTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray *personArray;
@property (nonatomic, strong) IBOutlet UITableView *personTable;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTableFromNSArray];
    //[self addTableViewProgrammatically];
}

- (void)addTableViewProgrammatically {
    if ([self respondsToSelector:@selector(edgesForExtendedLayout)])
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    self.personTable = [[UITableView alloc]initWithFrame:CGRectZero];
    [self.view addSubview:self.personTable];
    [self.personTable setDataSource:self];
    [self.personTable setDelegate:self];
    
    NSDictionary *dictViews = @{@"personTable":self.personTable,@"topGuide": self.topLayoutGuide,@"bottomGuide": self.bottomLayoutGuide};
    //dont add below line, never worked.
    //self.view.translatesAutoresizingMaskIntoConstraints = NO;
    self.personTable.translatesAutoresizingMaskIntoConstraints = NO;
    NSArray *arr01 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[personTable]|" options:0 metrics:nil views:dictViews];
    NSArray *arr02 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[topGuide][personTable][bottomGuide]|" options:0 metrics:nil views:dictViews];
    [self.view addConstraints:arr01];
    [self.view addConstraints:arr02];
    
}

- (void)loadTableFromNSArray {
    PersonModel *person01 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Rajnikanth",@"personOccupation":@"Actor",@"personCity":@"Mysore"}];
    
    PersonModel *person02 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Vivek",@"personOccupation":@"Comedian",@"personCity":@"Madurai"}];
    
    PersonModel *person03 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Trisha",@"personOccupation":@"Actress",@"personCity":@"Chennai"}];
    
    PersonModel *person04 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Mr Bean",@"personOccupation":@"Comedy Hero",@"personCity":@"London"}];
    
    PersonModel *person05 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Sachin Tendulkar",@"personOccupation":@"Cricketer",@"personCity":@"Mumbai"}];
    
    PersonModel *person06 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Narendra Modi",@"personOccupation":@"Politician",@"personCity":@"Ahmedabad"}];
    
    PersonModel *person07 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Bill Gates",@"personOccupation":@"CEO",@"personCity":@"San Francisco"}];
    
    PersonModel *person08 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"NR Karthee",@"personOccupation":@"Linux Administrator",@"personCity":@"Madurai"}];
    
    PersonModel *person09 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Saravanan",@"personOccupation":@"Sales Representative",@"personCity":@"Bangalore"}];
    
    PersonModel *person10 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"TS Vishnu Kumar",@"personOccupation":@".Net developer",@"personCity":@"Madurai"}];
    
    PersonModel *person11 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Mahatma Gandhi",@"personOccupation":@"Freedom fighter",@"personCity":@"Gandhi Nagar"}];
    
    PersonModel *person12 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"John Cena",@"personOccupation":@"Wrestler",@"personCity":@"Houston"}];
    
    PersonModel *person13 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Gopinath",@"personOccupation":@"TV Hoster",@"personCity":@"Tirunelveli"}];
    
    PersonModel *person14 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Cho Ramasamy",@"personOccupation":@"Tuklaq Author",@"personCity":@"Kanchipuram"}];
    
    PersonModel *person15 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Aringar Anna",@"personOccupation":@"Politician",@"personCity":@"Madurai"}];
    
    PersonModel *person16 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Kamarajar",@"personOccupation":@"Chief Minister",@"personCity":@"Erode"}];
    
    PersonModel *person17 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Ajith Kumar",@"personOccupation":@"Actor",@"personCity":@"Chittor"}];
    
    PersonModel *person18 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Ratan Tata",@"personOccupation":@"Retired CEO",@"personCity":@"New Delhi"}];
    
    PersonModel *person19 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Sathya Nathella",@"personOccupation":@"Microsoft CEO",@"personCity":@"Hyderabad"}];
    
    PersonModel *person20 = [[PersonModel alloc]initWithDictionary:@{@"personName":@"Raja Moorthy",@"personOccupation":@"Engineering Head",@"personCity":@"Bangalore"}];
    
    self.personArray = @[person01,person02,person03,person04,person05,person06,person07,person08,person09,person10,person11,person12,person13,person14,person15,person16,person17,person18,person19,person20];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.personArray count];
}

/*
 - (void)configureCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
 PersonModel *person = self.personArray[indexPath.row];
 cell.textLabel.text = person.personName;
 cell.detailTextLabel.text = person.personOccupation;
 }
 
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 
 static NSString *CellIdentifier = @"Cell";
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 if (cell == nil) {
 cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
 }
 
 // Configure the cell.
 [self configureCell:cell atIndexPath:indexPath];
 return cell;
 }*/

-(UIColor*)getRandomColor
{
    CGFloat red = arc4random() % 255;
    CGFloat green = arc4random() % 255;
    CGFloat blue = arc4random() % 255;
    UIColor *color = [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1.0f];
    return color;
}

#define UIColorFromRGB(rgbValue) [UIColor \
colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0xFF00) >> 8))/255.0 \
blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

-(UIColor*)getRandomFlatColor
{
    //NSArray *flatColors = @[@"ED5565", @"DA4453", @"FC6E51", @"E9573F", @"FFCE54", @"F6BB42",                            @"A0D468", @"8CC152", @"4FC1E9", @"3BAFDA", @"5D9CEC", @"4A89DC",@"AC92EC", @"967ADC", @"EC87C0", @"D770AD", @"F5F7FA", @"E6E9ED",@"CCD1D9", @"AAB2BD", @"656D78", @"434A54"];//Flattastic
    NSArray *flatColors = @[@"1ABC9C", @"16A085", @"2ECC71", @"27AE60", @"3498DB", @"2980B9", @"9B59B6", @"8E44AD", @"34495E", @"2C3E50", @"F1C40F", @"F39C12", @"E67E22", @"D35400", @"E74C3C", @"C0392B", @"ECF0F1", @"BDC3C7",                            @"95A5A6", @"7F8C8D"];//Flat UI Colors
    //NSArray *flatColors = @[@"C6CBCC", @"9DC6D8", @"7DA1BF", @"00B2CA", @"1D4E89", @"7DCFB6", @"D2B29A", @"F79256", @"EAD98B", @"E3868F", @"955251", @"4E6E38", @"7F8040", @"C78D6B", @"888688", @"B38FB1"];//Pantone
    NSInteger randomInteger = arc4random_uniform((uint32_t)[flatColors count]);
    NSString *colorHexString = [NSString stringWithFormat:@"0x%@",flatColors[randomInteger]];
    unsigned colorHex = 0;
    [[NSScanner scannerWithString:colorHexString] scanHexInt:&colorHex];
    return UIColorFromRGB(colorHex);
}

- (void)configureCell:(PersonTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    PersonModel *person = self.personArray[indexPath.row];
    [cell setCellSource:person];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    PersonTableViewCell *cell = (PersonTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    [cell setBackgroundColor:[self getRandomFlatColor]];
    // Configure the cell.
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

@end
