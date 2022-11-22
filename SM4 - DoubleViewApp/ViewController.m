//
//  ViewController.m
//  SM4 - DoubleViewApp
//
//  Created by Gracjan Ulianowski on 22/11/2022.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)enter {
    NSString *yourName = self.inputField.text;
    NSString *yourSurname = self.surnameTextField.text;
    NSString *myName = @"Gracjan";
    NSString *message;
    
    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if ([yourSurname length] == 0) {
        yourSurname = @"Domination";
    }
    
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@ %@! We have the same name :)", yourName, yourSurname];
    } else {
        message = [NSString stringWithFormat:@"Hello %@ %@!", yourName, yourSurname];
    }
    
    self.messageLabel.text = message;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.surnameTextField.text;
        
        controller.delegate = self;
    }
}

-(void) addItemViewController:(SecondViewController *)controller didFinishedEnteringItem:(NSString *)item {
    NSLog(@"This was returned from SecondViewController %@", item);
    self.surnameTextField.text = item;
}


@end
