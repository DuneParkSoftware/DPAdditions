//
//  CGGeometry+DPAdditions.m
//  DPAdditionsDemo
//
//  Created by Eric D. Baker on 11/16/13.
//  Copyright (c) 2013 DuneParkSoftware, LLC. All rights reserved.
//

#import "CGGeometry+DPAdditions.h"

CGRect CGRectCopy(CGRect rect) {
    return CGRectMake(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
}
