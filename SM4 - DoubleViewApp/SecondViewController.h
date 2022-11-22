//
//  SecondViewController.h
//  SM4 - DoubleViewApp
//
//  Created by Gracjan Ulianowski on 22/11/2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class SecondViewController;

@protocol SecondViewControllerDelegate <NSObject>

- (void) addItemViewController:(SecondViewController *) controller didFinishedEnteringItem: (NSString *) item;

@end



@interface SecondViewController : UIViewController

@property(nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;
@property (nonatomic, weak) IBOutlet UILabel *messageLabel;

@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

@property NSString *surname;

@end

NS_ASSUME_NONNULL_END
