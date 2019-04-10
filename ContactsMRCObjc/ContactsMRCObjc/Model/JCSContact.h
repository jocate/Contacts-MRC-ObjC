//
//  JCSContact.h
//  ContactsMRCObjc
//
//  Created by Lambda_School_Loaner_95 on 4/10/19.
//  Copyright © 2019 JS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JCSContact : NSObject

-(instancetype)initWithName:(NSString *)contactName phone:(NSNumber *)phoneNumber email:(NSString *)emailAddress;

@property (nonatomic, retain) NSString *contactName;
@property (nonatomic, retain) NSNumber *phoneNumber;
@property (nonatomic, retain) NSString *emailAddress;

@end

NS_ASSUME_NONNULL_END
