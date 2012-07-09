//
//  StupidController.m
//  asdasdasd
//
//  Created by mhontar on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StupidController.h"

@implementation StupidController

- (UIScrollView*) scrollView{
    if(!_newScrollView){
        _newScrollView = [[UIStupidScrollView alloc] initWithFrame:self.scrollView.frame];
    }
   return _newScrollView;
}

- (void) copy:(id)sender{
    NSLog(@"StupidController copy");    
}
- (void) paste:(id)sender{
    NSLog(@"StupidController paste");
}

- (BOOL) canPerformAction:(SEL)action withSender:(id)sender{
    return [super canPerformAction:action withSender:sender];
}
@end
