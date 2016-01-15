//
//  ForgotPasswordView.m
//  Copyright © 2015 VoIPGRID. All rights reserved.
//

#import "ForgotPasswordView.h"

static CGFloat const ForgotPasswordViewButtonRadius = 5.0;

@implementation ForgotPasswordView

- (void)awakeFromNib {
    [super awakeFromNib];
    //Localize elements of view
    self.emailTextfield.placeholder = NSLocalizedString(@"Email", nil);
    self.forgotPasswordLabel.text = NSLocalizedString(@"Forgot password?", nil);
    self.pleaseEnterEmailLabel.text = NSLocalizedString(@"Please enter your e-mail address and we will send you instructions on setting a new password.", nil);

    [self.requestPasswordButton setTitle:NSLocalizedString(@"Request password", nil) forState:UIControlStateNormal];

    self.isMoved = NO;

    self.requestPasswordButton.borderWidth = 1;
    self.requestPasswordButton.cornerRadius = ForgotPasswordViewButtonRadius;
    self.requestPasswordButton.borderColor = [self.configuration tintColorForKey:ConfigurationLogInViewControllerButtonBorderColor];
    self.requestPasswordButton.backgroundColorForPressedState = [self.configuration tintColorForKey:ConfigurationLogInViewControllerButtonBackgroundColorForPressedState];
}

- (Configuration *)configuration {
    if (!_configuration) {
        _configuration = [Configuration defaultConfiguration];
    }
    return _configuration;
}

@end
