//
//  ConfigureFormView.m
//  Copyright © 2015 VoIPGRID. All rights reserved.
//

#import "ConfigureFormView.h"
#import "UIView+RoundedStyle.h"

static CGFloat const ConfigureFormViewButtonRadius = 5.0;

@interface ConfigureFormView ()
//Displays: Vialer is configuring Outlet needed for localization
@property (nonatomic, weak) IBOutlet UILabel *titleLable;
//Displays: Your account Outlet needed for localization
@property (nonatomic, weak) IBOutlet UILabel *subtitleLable;
@end

@implementation ConfigureFormView

- (void)setTextFieldDelegate:(id<UITextFieldDelegate>)delegate {
    self.phoneNumberField.delegate = delegate;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSString *appName = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleName"];
    self.titleLable.text = [NSString stringWithFormat:NSLocalizedString(@"App is configuring", nil), appName];
    self.subtitleLable.text = NSLocalizedString(@"your account", nil);

    self.phoneNumberDescriptionField.text = NSLocalizedString(@"CONFIGURE_PHONENUMBER_DESCRIPTION_TEXT", nil);
    self.phoneNumberField.placeholder = NSLocalizedString(@"mobile_label", nil);
    [self.phoneNumberField setClearButtonMode:UITextFieldViewModeWhileEditing];

    self.outgoingNumberDescriptionField.text = NSLocalizedString(@"CONFIGURE_OUTGOING_DESCRIPTION_TEXT", nil);

    [self.continueButton setTitle:NSLocalizedString(@"Continue", nil) forState:UIControlStateNormal];

    self.isMoved = NO;

    self.continueButton.borderWidth = 1;
    self.continueButton.cornerRadius = ConfigureFormViewButtonRadius;
    self.continueButton.borderColor = [self.configuration tintColorForKey:ConfigurationLogInViewControllerButtonBorderColor];
    self.continueButton.backgroundColorForPressedState = [self.configuration tintColorForKey:ConfigurationLogInViewControllerButtonBackgroundColorForPressedState];
}

- (Configuration *)configuration {
    if (!_configuration) {
        _configuration = [Configuration defaultConfiguration];
    }
    return _configuration;
}

@end
