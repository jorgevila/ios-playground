//
//  Login.m
//  upm
//
//  Created by jorgev on 09/11/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

/*
 {
    "token": "Qr4LWbcVoi",
    "res": 1
}
 */

#import "Login.h"

@implementation Login

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"token": @"token",
             @"resource": @"res",
             @"error": @"error"
             };
}
@end
