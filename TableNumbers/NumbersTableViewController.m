//
//  NumbersTableViewController.m
//  TableNumbers
//
//  Created by David Céspedes on 26/08/16.
//  Copyright © 2016 LSR Marketing Service. All rights reserved.
//

#import "NumbersTableViewController.h"

@interface NumbersTableViewController ()

@end

@implementation NumbersTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 100;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    // Configure the cell...
    NSNumber * number = [NSNumber numberWithInteger:indexPath.row];
    NSString * identifier = @"Cell";
    if (number.intValue % 2 == 0 && number.intValue % 3 == 0) {
        identifier = @"Celldosytres";
    }else if (number.intValue % 2 == 0){
        identifier = @"Celldos";
    }else if (number.intValue % 3 == 0){
        identifier = @"Celltres";
    }
    
    UITableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!tableCell){
        tableCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    if ([identifier isEqualToString:@"Cell"] && (tableCell.textLabel.textAlignment != NSTextAlignmentCenter)) {
        [self longRunningFunction:tableCell];
    }
    
    
    tableCell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    
    return tableCell;
}

- (void)longRunningFunction:(UITableViewCell *)cell{
    NSArray * colors = [[NSArray alloc] initWithObjects:[UIColor redColor],[UIColor blueColor],[UIColor blackColor],nil];
    UIColor * color = colors[(arc4random() % 3)];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        cell.textLabel.textColor = color;
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    });
    
}

@end
