//
//  JCSContactController.m
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSContactController.h"
#import "JCSContact.h"

@interface JCSContactController ()

@property (nonatomic, readwrite) NSMutableArray *internalContacts;

@end


@implementation JCSContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
    }
    return self;
}
/*- (void)dealloc
{
    [_contacts release];
    _internalContacts = nil;
    [super dealloc];
}*/


- (void)addNewContact:(JCSContact *)contact {
    [self.internalContacts addObject:contact];
}

- (void)updateContact:(JCSContact *)contact name:(NSString *)name email:(NSString *)emailAddress phone:(NSNumber *)phoneNumber {
    
    int indexPath = [self.internalContacts indexOfObject:contact];
    
    [[self.internalContacts objectAtIndex:indexPath] setContactName:name];
    [[self.internalContacts objectAtIndex:indexPath] setEmailAddress:emailAddress];
    [[self.internalContacts objectAtIndex:indexPath] setPhoneNumber:phoneNumber];
}

- (NSArray *)contacts {
    NSArray *cons = self.internalContacts;
   // [self.internalContacts release];
    return cons;
}

@end
