//
//  InterfaceController.m
//  textInput WatchKit Extension
//
//  Created by john goodstadt on 01/09/2015.
//  Copyright © 2015 John Goodstadt. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *outputLabel;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}
- (IBAction)voiceInputButtonPressed {
    
    [self presentTextInputControllerWithSuggestions:nil allowedInputMode:WKTextInputModePlain completion:^(NSArray *results) {
        
        
        for (NSString* phrase in results) {

            NSLog(@"%@",phrase);
            
        }

        if(results.count>0){
            [self.outputLabel setText:results[0]];
        }
        
    }];
    
}

@end



