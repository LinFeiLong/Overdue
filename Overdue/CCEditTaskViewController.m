//
//  CCEditTaskViewController.m
//  Overdue
//
//  Created by Fernand LIME on 16/07/14.
//  Copyright (c) 2014 Fernand LIME. All rights reserved.
//

#import "CCEditTaskViewController.h"

@interface CCEditTaskViewController ()

@end

@implementation CCEditTaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.textField.text = self.task.title;
    self.textView.text = self.task.description;
    self.datePicker.date = self.task.date;
    
    self.textView.delegate = self;
    self.textField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveBarButtonItemPressed:(UIBarButtonItem *)sender{
    [self updateTask];
    [self.delegate didUpdateTask];
}

-(void)updateTask
{
    self.task.title = self.textField.text;
    self.task.description = self.textView.text;
    self.task.date = self.datePicker.date;
}

#pragma mark - UITextFieldDelegate

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.textField resignFirstResponder];
    return YES;
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [self.textView resignFirstResponder];
        return NO;
    }
    return YES;
}

@end
