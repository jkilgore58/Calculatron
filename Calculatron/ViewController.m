//
//  ViewController.m
//  Calculatron
//
//  Created by Jonathan Kilgore on 1/14/16.
//  Copyright © 2016 Jonathan Kilgore. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *operand1;
@property (weak, nonatomic) IBOutlet UITextField *operand2;
@property (weak, nonatomic) IBOutlet UILabel *operation;
@property (weak, nonatomic) IBOutlet UILabel *answer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)operators:(UIButton *)sender {

    //frank
    double op1 = self.operand1.text.doubleValue;
    double op2 = self.operand2.text.doubleValue;

    
    //Jonathan Code
    self.operation.text = sender.titleLabel.text;
    
    NSString *operation = self.operation.text;
    
    if ([operation isEqualToString:@"+"]) {
        self.answer.text = [NSString stringWithFormat:@"%.2f", op1 + op2];
        
    } else if ([operation isEqualToString:@"-"]){
        self.answer.text = [NSString stringWithFormat:@"%.2f", op1 - op2];

        
    } else if ([operation isEqualToString:@"x"]){
        self.answer.text = [NSString stringWithFormat:@"%.2f", op1 * op2];

        
    } else {
        self.answer.text = [NSString stringWithFormat:@"%.2f", op1 / op2];

        
    }
}


@end
