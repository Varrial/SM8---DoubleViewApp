//
//  ViewController.m
//  SM4 - DoubleViewApp
//
//  Created by Gracjan Ulianowski on 22/11/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Gracjan";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@! We have the same name :)", yourName];
    } else {
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    
    self.messageLabel.text = message;
}

@end
