//
//  DialerViewController.h
//  Vialer
//
//  Created by Reinier Wieringa on 15/11/13.
//  Copyright (c) 2014 VoIPGRID. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DialerViewController : UIViewController<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *buttonsView;
@property (weak, nonatomic) IBOutlet UIButton *callButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UITextView *numberTextView;

- (IBAction)dialerBackButtonPressed:(UIButton *)sender;
- (IBAction)callButtonPressed:(UIButton *)sender;
@end
