//
//  JCSContactTableViewController.m
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSContactTableViewController.h"
#import "JCSContact.h"
#import "JCSContactController.h"
#import "JCSDetailViewController.h"

@interface JCSContactTableViewController ()

@end

@implementation JCSContactTableViewController

- (void)dealloc
{
    [_contactController release];
    [super dealloc];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        _contactController = [[JCSContactController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _contactController = [[JCSContactController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.contactController.contacts.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell" forIndexPath:indexPath];
    
    JCSContact *contact = self.contactController.contacts[indexPath.row];
    cell.textLabel.text = contact.contactName;
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ContactDetail"]) {
        JCSDetailViewController *cellDetailController = [segue destinationViewController];
        NSInteger *index = [[self.tableView indexPathForSelectedRow] row];
        
        cellDetailController.contact = [self.contactController.contacts objectAtIndex:index];
        // NSLog(@"Document at indePath: %d", index);
        
        cellDetailController.contactController = self.contactController;
        
    }
    if ([[segue identifier] isEqualToString:@"NewContact"]) {
        JCSDetailViewController *cellDetailController = [segue destinationViewController];
        cellDetailController.contactController = self.contactController;
    }
    //[self.contactController release];
}


@end
