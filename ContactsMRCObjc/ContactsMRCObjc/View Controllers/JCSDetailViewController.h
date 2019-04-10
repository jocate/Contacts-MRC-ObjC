//
//  JCSDetailViewController.h
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JCSContact;
@class JCSContactController;

NS_ASSUME_NONNULL_BEGIN

@interface JCSDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

- (IBAction)saveTapped:(id)sender;
-(void)updateViews;

@property (retain) JCSContact *contact;
@property (retain) JCSContactController *contactController;

@end

NS_ASSUME_NONNULL_END
