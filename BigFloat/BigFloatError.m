/*
 This file is part of OSXGMP.
 
 OSXGMP is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 OSXGMP is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
 */
//
//  BigFloatError.m
//  BigNumber
//
//  Created by Otto van Verseveld on 10/26/14.
//  Copyright (c) 2014 Otto van Verseveld. All rights reserved.
//

#import "BigFloatError.h"

NSString * const BigFloatErrorDomain = @"nl.tofh.BigFloatErrorDomain";

@implementation BigFloatError

+ (NSString *)domain {
    return BigFloatErrorDomain;
}

+ (NSError *)other {
    NSDictionary *errorInfo = @{
        NSLocalizedDescriptionKey: NSLocalizedString(@"Could not initialize float-number; set to default (=0) value.", nil),
        NSLocalizedFailureReasonErrorKey: NSLocalizedString(@"The string-number should have some 'other' value.", nil),
        NSLocalizedRecoverySuggestionErrorKey: NSLocalizedString(@"Make sure to check the 'other'-side.", nil)
        };
    return [NSError errorWithDomain:BigFloatErrorDomain
                               code:BFEC_Other
                           userInfo:errorInfo];
}

@end
