//
//  Login.h
//  upm
//
//  Created by jorgev on 09/11/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Login : MTLModel <MTLJSONSerializing>
@property (nonatomic, copy, readonly) NSString *token;
@property (nonatomic, copy, readonly) NSNumber *resource;
@property (nonatomic, copy, readonly) NSString *error;

@end
