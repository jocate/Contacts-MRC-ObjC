//
//  JCSContactController.h
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JCSContact;
NS_ASSUME_NONNULL_BEGIN

@interface JCSContactController : NSObject


- (void)addNewContact:(JCSContact *)contact;
- (void)updateContact:(JCSContact *)contact name:(NSString *)name email:(NSString *)emailAddress phone:(NSNumber *)phoneNumber;

@property (nonatomic, readonly, retain) NSArray<JCSContact *> *contacts;

@end

NS_ASSUME_NONNULL_END
