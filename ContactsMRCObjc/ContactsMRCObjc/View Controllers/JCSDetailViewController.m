//
//  JCSDetailViewController.m
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSDetailViewController.h"
#import "JCSContact.h"
#import "JCSContactController.h"

@interface JCSDetailViewController ()

@end

@implementation JCSDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateViews];
    // Do any additional setup after loading the view.
}
- (void)dealloc
{
    [_contactController release];
    [_contact release];
    
    [super dealloc];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)saveTapped:(id)sender {
    NSString *name = _nameTextField.text;
    NSString *email = _emailTextField.text;
    NSString *phone = _phoneTextField.text;
    NSLog(@"phone number textfield: %@", phone);
    NSNumberFormatter *num = [[NSNumberFormatter alloc] init];
    
    NSNumber *phoneNumber = [num numberFromString:phone];
    NSLog(@"phone number formatter: %@", phoneNumber);
    if (_contact) {
        [_contactController updateContact:_contact name:name email:email phone:phoneNumber];
        [self.navigationController popViewControllerAnimated:true];
    } else {
        JCSContact *contact = [[JCSContact alloc] initWithName:name phone:phoneNumber email:email];
        NSLog(@"contact number: %@", contact.phoneNumber) ;
        [_contactController addNewContact:contact];
        [contact release];
        [self.navigationController popViewControllerAnimated:true];
        
    }
    
    
}

- (void)updateViews {
    if (_contact) {
        self.title = _contact.contactName;
        _nameTextField.text = _contact.contactName;
        _phoneTextField.text = [NSString stringWithFormat:@"%@", _contact.phoneNumber];
        _emailTextField.text = _contact.emailAddress;
    } else {
        self.title = @"New Contact";
    }
}


@end
