//
//  backgroundView.m
//  Schilder-Generator
//
//  Created by Janik Schmidt on 11.10.13.
//  Copyright (c) 2013 Digital Frontier. All rights reserved.
//

#import "backgroundView.h"

@implementation backgroundView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (IBAction)drawRect:(NSRect)dirtyRect {
    // Fill in background Color
    CGContextRef context = (CGContextRef) [[NSGraphicsContext currentContext] graphicsPort];
    CGContextSetRGBFillColor(context, 0.0,0.325,0.85625,1.0);
    CGContextFillRect(context, NSRectToCGRect(dirtyRect));
}
@end
