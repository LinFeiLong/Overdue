//
//  CCEditTaskViewController.h
//  Overdue
//
//  Created by Fernand LIME on 16/07/14.
//  Copyright (c) 2014 Fernand LIME. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCTask.h"

@protocol CCEditTaskViewControllerDelegate <NSObject>

-(void)didUpdateTask;

@end

@interface CCEditTaskViewController : UIViewController

@property (strong, nonatomic) CCTask *task;
@property (weak, nonatomic) id <CCEditTaskViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)saveBarButtonItemPressed:(UIBarButtonItem *)sender;


@end
