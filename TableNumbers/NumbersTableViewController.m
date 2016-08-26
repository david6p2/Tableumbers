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
    NSString * identifier = @"CellDos";
    if (number.intValue % 2 == 0 && number.intValue % 3 == 0) {
        identifier = @"Celldosytres";
    }else if (number.intValue % 2 == 0){
        identifier = @"Celldos";
    }else if (number.intValue % 3 == 0){
        identifier = @"Celltres";
    }else{
        identifier = @"Cell";
    }
    UITableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!tableCell)
        tableCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    tableCell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row];
    
    //Probar si es divisible pr 3 y 2
    /*
    if (number.intValue % 2 == 0 && number.intValue % 3 == 0) {
        tableCell.textLabel.textColor = [UIColor colorWithRed:1 green:204/255 blue:212/255 alpha:1];
        tableCell.textLabel.textAlignment = NSTextAlignmentRight;
        [tableCell setIndentationLevel:-10];
    }else if (number.intValue % 2 == 0){
        tableCell.textLabel.textColor = [UIColor redColor];
        tableCell.textLabel.textAlignment = NSTextAlignmentLeft;
        [tableCell setIndentationLevel:10];
    }else if (number.intValue % 3 == 0){
        tableCell.textLabel.textColor = [UIColor blueColor];
        tableCell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
     */
    
    return tableCell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
