//
//  SecondViewController.m
//  SM4 - DoubleViewApp
//
//  Created by Gracjan Ulianowski on 22/11/2022.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *message;
    NSString *surname = self.surname;
    
    message = [NSString stringWithFormat:@"%@", surname];
    
    self.modifiedSurnameTextField.text = message;
}

- (IBAction)goBack {
    NSString *itemToPassBack = self.modifiedSurnameTextField.text;
    [self.delegate addItemViewController:self didFinishedEnteringItem:itemToPassBack];
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
