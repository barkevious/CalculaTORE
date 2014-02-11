#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)modifyDisplayByAppendingString:(NSString *)string
{
    self.display.text = [self.display.text stringByAppendingString:[NSString stringWithFormat:@"%@", string]];
}

- (IBAction)buttonPressed:(id)sender
{
    [self modifyDisplayByAppendingString:[(UIButton *)sender currentTitle]];
}

- (IBAction)evaluateDisplay:(id)sender
{
    NSExpression *expression = [NSExpression expressionWithFormat:self.display.text];
    self.display.text = [NSString stringWithFormat:@"%@", [expression expressionValueWithObject:nil context:nil]];
}

- (IBAction)clearDisplay:(id)sender
{
    self.display.text = @"";
}

@end
