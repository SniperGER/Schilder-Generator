//
//  AppDelegate.h
//  Schilder-Generator
//
//  Created by Janik Schmidt on 10.10.13.
//  Copyright (c) 2013 Digital Frontier. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "backgroundView.h"

extern float redValueMain;
extern float greenValueMain;
extern float blueValueMain;

@interface AppDelegate : NSObject {

    
    IBOutlet NSTabView *mainTabView;
    IBOutlet NSTabView *wikiTabView;
    IBOutlet NSTabView *wikiTabViewIndex1;
    
    IBOutlet NSTextField *aboutText;
    
    IBOutlet NSTextField *autobahn1Llabel; IBOutlet NSTextField *autobahn1Lbox;
    IBOutlet NSTextField *autobahn2Llabel; IBOutlet NSTextField *autobahn2Lbox;
    IBOutlet NSTextField *autobahn3Llabel; IBOutlet NSTextField *autobahn3Lbox;
    
    IBOutlet NSTextField *autobahn1Rlabel; IBOutlet NSTextField *autobahn1Rbox;
    IBOutlet NSTextField *autobahn2Rlabel; IBOutlet NSTextField *autobahn2Rbox;
    IBOutlet NSTextField *autobahn3Rlabel; IBOutlet NSTextField *autobahn3Rbox;
    IBOutlet NSTextField *exitDistanceLabel; IBOutlet NSTextField *exitDistanceBox;
	
	IBOutlet NSTextField *nextAutobahnLabelL; IBOutlet NSTextField *nextAutobahnLabelR; IBOutlet NSTextField *nextAutobahnValue;
	IBOutlet NSTextField *exitAutobahnLabel; IBOutlet NSTextField *exitAutobahnValue; IBOutlet NSImageView *exitAutobahnValueBG;
	
	IBOutlet NSButton *exitAutobahnActivated;
    
    IBOutlet NSWindow *mainWindow;
    IBOutlet NSWindow *splashWindow;
    IBOutlet NSWindow *aboutPanel;
    IBOutlet NSWindow *editorPanel;
    
    IBOutlet NSBox *previewBox;
    IBOutlet NSBox *autobahnBGBox;
    IBOutlet NSBox *ausfahrtBGBox;
    IBOutlet NSBox *tankstelleBGBox;
    
    IBOutlet NSSlider *redSlider; IBOutlet NSTextField *redLabel;
    IBOutlet NSSlider *greenSlider; IBOutlet NSTextField *greenLabel;
    IBOutlet NSSlider *blueSlider; IBOutlet NSTextField *blueLabel;
    
    IBOutlet NSMenuItem *editMenu;
    IBOutlet NSMenuItem *menuItem;
    IBOutlet NSMenuItem *windowMenu;
    IBOutlet NSMenuItem *helpMenu;
	
	IBOutlet NSBox *signBox;
}

// List all the actions!
- (IBAction)showMainIndex1:(id)sender;
- (IBAction)showMainIndex2:(id)sender;
- (IBAction)showMainIndex3:(id)sender;
- (IBAction)showMainIndex4:(id)sender;
- (IBAction)showMainIndex5:(id)sender;

- (IBAction)showWikiMenuGeneral:(id)sender;
- (IBAction)showWikiMenuFunctions:(id)sender;
- (IBAction)showWikiMenuUsage:(id)sender;
- (IBAction)showInfoMenu:(id)sender;

- (IBAction)resetAutobahnSettings:(id)sender;

- (void)splashPretendLoading;

- (IBAction)sliderDidMove:(id)sender;
- (IBAction)RGBBoxDidChange:(id)sender;

- (IBAction)nextAutobahnChange:(id)sender;

- (IBAction)test:(id)sender;
@end
