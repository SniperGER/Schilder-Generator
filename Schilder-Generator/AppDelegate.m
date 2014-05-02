//
//  AppDelegate.m
//  Schilder-Generator
//
//  Created by Janik Schmidt on 10.10.13.
//  Copyright (c) 2013 Digital Frontier. All rights reserved.
//

#import "AppDelegate.h"
@implementation AppDelegate

float redValueMain;
float greenValueMain;
float blueValueMain;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

    redValueMain = 21.0;
    greenValueMain = 72.5;
    blueValueMain = 137.0;
    
    [mainTabView selectTabViewItemAtIndex:0];
    [wikiTabView selectTabViewItemAtIndex:0];
    [wikiTabViewIndex1 selectTabViewItemAtIndex:0];
    
    [aboutText setStringValue:@"Der Schilder-Generator wird von Sniper_GER und derKrahtz für Digital Frontier entwickelt. Die Windows-Version kommt von derKrahtz und erscheint in einem frischen Windows 8-Design, ehemals bekannt als Metro. Die Mac-Version wird von Sniper_GER entwickelt und enthält später sämtliche Funktionen, die in der Windows-Version zu finden sind, d.h. Menüs für Autobahn-, Ausfahrts- und Tankstellenschilder sowie eine integrierte Wiki mit Informationen über den Schilder-Generator selbst und zur deutschen Autobahn.\n\nIn diesen Menüs lernen Sie alles über die Funktionen und die Benutuzng des Schilder-Generators, sowie seine Entstehungsgeschichte.\n\nViel Spaß mit dem Schilder-Generator Mac.Edition wüschen ihnen"];
    
    NSFont *regular = [NSFont fontWithName:@"AlteDIN1451Mittelschrift" size:30.0];
    [autobahn1Llabel setFont:regular];
    [autobahn2Llabel setFont:regular];
    [autobahn3Llabel setFont:regular];
	[autobahn1Rlabel setFont:regular];
    [autobahn2Rlabel setFont:regular];
    [autobahn3Rlabel setFont:regular];
    [self performSelector:@selector(splashPretendLoading) withObject:nil afterDelay:2];
    [self sliderDidMove:self];
}
- (void)awakeFromNib
{
    [autobahn1Lbox setDelegate:self];
    [autobahn2Lbox setDelegate:self];
    [autobahn3Lbox setDelegate:self];
    [autobahn1Rbox setDelegate:self];
    [autobahn2Rbox setDelegate:self];
    [autobahn3Rbox setDelegate:self];
    [exitDistanceBox setDelegate:self];
}
- (void)controlTextDidChange:(NSNotification *)notification
{
    if([notification object] == autobahn1Lbox)
    {
        NSString *boxValue = [autobahn1Lbox stringValue];
        if ([boxValue length] == 0) {
            [autobahn1Llabel setStringValue:@"Stadt 1"];
        } else {
            [autobahn1Llabel setStringValue:boxValue];
        }
    }
    if([notification object] == autobahn2Lbox)
    {
        NSString *boxValue = [autobahn2Lbox stringValue];
        if ([boxValue length] == 0) {
            [autobahn2Llabel setStringValue:@"Stadt 2"];
        } else {
            [autobahn2Llabel setStringValue:boxValue];
        }
    }
    if([notification object] == autobahn3Lbox)
    {
        NSString *boxValue = [autobahn3Lbox stringValue];
        if ([boxValue length] == 0) {
            [autobahn3Llabel setStringValue:@"Stadt 3"];
        } else {
            [autobahn3Llabel setStringValue:boxValue];
        }
    }
    if([notification object] == autobahn1Rbox)
    {
        NSString *boxValue = [autobahn1Rbox stringValue];
        if ([boxValue length] == 0) {
            [autobahn1Rlabel setStringValue:@"Ausfahrt 1"];
        } else {
            [autobahn1Rlabel setStringValue:boxValue];
        }
    }
    if([notification object] == autobahn2Rbox)
    {
        NSString *boxValue = [autobahn2Rbox stringValue];
        if ([boxValue length] == 0) {
            [autobahn2Rlabel setStringValue:@"Ausfahrt 2"];
        } else {
            [autobahn2Rlabel setStringValue:boxValue];
        }
    }
    if([notification object] == autobahn3Rbox)
    {
        NSString *boxValue = [autobahn3Rbox stringValue];
        if ([boxValue length] == 0) {
            [autobahn3Rlabel setStringValue:@"Ausfahrt 3"];
        } else {
            [autobahn3Rlabel setStringValue:boxValue];
        }
    }
    if([notification object] == exitDistanceBox)
    {
        NSString *boxValue = [exitDistanceBox stringValue];
        if ([boxValue length] == 0) {
            [exitDistanceLabel setStringValue:@"000m"];
        } else {
            [exitDistanceLabel setStringValue:boxValue];
        }
    }
}
- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
    return YES;
}
- (IBAction)showMainIndex1:(id)sender {
    [mainTabView selectTabViewItemAtIndex:0];
}
- (IBAction)showMainIndex2:(id)sender {
    [mainTabView selectTabViewItemAtIndex:1];
}
- (IBAction)showMainIndex3:(id)sender {
    [mainTabView selectTabViewItemAtIndex:2];
}
- (IBAction)showMainIndex4:(id)sender {
    [mainTabView selectTabViewItemAtIndex:3];
}
- (IBAction)showMainIndex5:(id)sender {
    [mainTabView selectTabViewItemAtIndex:4];
    [wikiTabView selectTabViewItemAtIndex:0];
}
- (IBAction)showWikiMenuGeneral:(id)sender {
    [mainTabView selectTabViewItemAtIndex:4];
    [wikiTabView selectTabViewItemAtIndex:0];
    [wikiTabViewIndex1 selectTabViewItemAtIndex:0];
}
- (IBAction)showWikiMenuFunctions:(id)sender {
    [mainTabView selectTabViewItemAtIndex:4];
    [wikiTabView selectTabViewItemAtIndex:0];
    [wikiTabViewIndex1 selectTabViewItemAtIndex:1];
}
- (IBAction)showWikiMenuUsage:(id)sender {
    [mainTabView selectTabViewItemAtIndex:4];
    [wikiTabView selectTabViewItemAtIndex:0];
    [wikiTabViewIndex1 selectTabViewItemAtIndex:2];
}
- (IBAction)showInfoMenu:(id)sender {
    [mainTabView selectTabViewItemAtIndex:4];
    [wikiTabView selectTabViewItemAtIndex:1];
}
- (IBAction)resetAutobahnSettings:(id)sender {
    [autobahn1Lbox setStringValue:@""];
    [autobahn2Lbox setStringValue:@""];
    [autobahn3Lbox setStringValue:@""];
    [autobahn1Llabel setStringValue:@"Stadt 1"];
    [autobahn2Llabel setStringValue:@"Stadt 2"];
    [autobahn3Llabel setStringValue:@"Stadt 3"];
    
    [autobahn1Rbox setStringValue:@""];
    [autobahn2Rbox setStringValue:@""];
    [autobahn3Rbox setStringValue:@""];
    [autobahn1Rlabel setStringValue:@"Ausfahrt 1"];
    [autobahn2Rlabel setStringValue:@"Ausfahrt 2"];
    [autobahn3Rlabel setStringValue:@"Ausfahrt 3"];
    
    [exitDistanceLabel setStringValue:@"000m"];
    
    [autobahnBGBox setFillColor:[NSColor colorWithDeviceRed:(redValueMain / 255) green:(greenValueMain / 255) blue:(blueValueMain / 255) alpha:1.0]];
    [ausfahrtBGBox setFillColor:[NSColor colorWithDeviceRed:(redValueMain / 255) green:(greenValueMain / 255) blue:(blueValueMain / 255) alpha:1.0]];
    [tankstelleBGBox setFillColor:[NSColor colorWithDeviceRed:(redValueMain / 255) green:(greenValueMain / 255) blue:(blueValueMain / 255) alpha:1.0]];
    [previewBox setFillColor:[NSColor colorWithDeviceRed:(redValueMain / 255) green:(greenValueMain / 255) blue:(blueValueMain / 255) alpha:1.0]];
    
    [redLabel setStringValue:[NSString stringWithFormat:@"%1.1f", redValueMain]];
    [greenLabel setStringValue:[NSString stringWithFormat:@"%1.1f", greenValueMain]];
    [blueLabel setStringValue:[NSString stringWithFormat:@"%1.1f", blueValueMain]];
    [redSlider setFloatValue:redValueMain];
    [greenSlider setFloatValue:greenValueMain];
    [blueSlider setFloatValue:blueValueMain];
}
- (void)splashPretendLoading {
    [splashWindow orderOut:nil];
    [mainWindow makeKeyAndOrderFront:nil];
    
    [editMenu setEnabled:TRUE];
    [editMenu setHidden:FALSE];
    
    [menuItem setEnabled:TRUE];
    [menuItem setHidden:FALSE];
    
    [windowMenu setEnabled:TRUE];
    [windowMenu setHidden:FALSE];
    
    [helpMenu setEnabled:TRUE];
    [helpMenu setHidden:FALSE];
}
- (IBAction)sliderDidMove:(id)sender {
    float redValue = [redSlider floatValue];
    [redLabel setStringValue:[NSString stringWithFormat:@"%1.1f", redValue]];
    
    float greenValue = [greenSlider floatValue];
    [greenLabel setStringValue:[NSString stringWithFormat:@"%1.1f", greenValue]];

    float blueValue = [blueSlider floatValue];
    [blueLabel setStringValue:[NSString stringWithFormat:@"%1.1f", blueValue]];

    [autobahnBGBox setFillColor:[NSColor colorWithDeviceRed:(redValue / 255) green:(greenValue / 255) blue:(blueValue / 255) alpha:1.0]];
    [ausfahrtBGBox setFillColor:[NSColor colorWithDeviceRed:(redValue / 255) green:(greenValue / 255) blue:(blueValue / 255) alpha:1.0]];
    [tankstelleBGBox setFillColor:[NSColor colorWithDeviceRed:(redValue / 255) green:(greenValue / 255) blue:(blueValue / 255) alpha:1.0]];
    [previewBox setFillColor:[NSColor colorWithDeviceRed:(redValue / 255) green:(greenValue / 255) blue:(blueValue / 255) alpha:1.0]];
}
- (IBAction)RGBBoxDidChange:(id)sender {
    float redValue = ([redLabel floatValue] / 255);
    [redSlider setFloatValue:redValue];
    
    float greenValue = ([greenLabel floatValue] / 255);
    [greenSlider setFloatValue:greenValue];
    
    float blueValue = ([blueLabel floatValue] / 255);
    [blueSlider setFloatValue:blueValue];
    
    [autobahnBGBox setFillColor:[NSColor colorWithDeviceRed:redValue green:greenValue blue:blueValue alpha:1.0]];
    [ausfahrtBGBox setFillColor:[NSColor colorWithDeviceRed:redValue green:greenValue blue:blueValue alpha:1.0]];
    [tankstelleBGBox setFillColor:[NSColor colorWithDeviceRed:redValue green:greenValue blue:blueValue alpha:1.0]];
    [previewBox setFillColor:[NSColor colorWithDeviceRed:redValue green:greenValue blue:blueValue alpha:1.0]];
}
- (IBAction)test:(id)sender {
[signBox lockFocus];
NSBitmapImageRep *rep = [[NSBitmapImageRep alloc] initWithFocusedViewRect:[signBox bounds]];
[signBox unlockFocus];
NSData *exportedData = [rep representationUsingType:NSJPEGFileType properties:nil];

NSSavePanel *savepanel = [NSSavePanel savePanel];
savepanel.title = @"Save image";
[savepanel setNameFieldStringValue:@"Saved Image.png"];

[savepanel setAllowedFileTypes:[NSArray arrayWithObject:@"png"]];

[savepanel beginWithCompletionHandler:^(NSInteger result)
 {
     if (NSFileHandlingPanelOKButton == result)
     {
         NSURL* fileURL = [savepanel URL];

         if ([fileURL.pathExtension isEqualToString:@""])
             fileURL = [fileURL URLByAppendingPathExtension:@"png"];

         [exportedData writeToURL:fileURL atomically:YES];
     }

     [rep release];
 }];
}
@end