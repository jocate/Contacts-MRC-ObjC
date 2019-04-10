//
//  JCSContact.m
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import "JCSContact.h"

@implementation JCSContact

- (instancetype)initWithName:(NSString *)contactName phone:(NSNumber *)phoneNumber email:(NSString *)emailAddress {
    self = [super init];
    if (self) {
        _contactName = contactName;
        _phoneNumber = phoneNumber;
        _emailAddress = emailAddress;
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Person.dealloc");
    [_contactName release];
    [_phoneNumber release];
    [_emailAddress release];

    [super dealloc];
}

@end
