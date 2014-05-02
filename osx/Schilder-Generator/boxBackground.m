//
//  boxBackground.m
//  Schilder-Generator
//
//  Created by Janik Schmidt on 11.10.13.
//  Copyright (c) 2013 Digital Frontier. All rights reserved.
//

#import "boxBackground.h"

@implementation boxBackground

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setFillColor:[NSColor blackColor]];
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

@end
