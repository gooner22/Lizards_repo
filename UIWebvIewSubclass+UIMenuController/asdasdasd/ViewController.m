//
//  ViewController.m
//  asdasdasd
//
//  Created by mhontar on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "StupidController.h"

@implementation ViewController
@synthesize dieWebView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"http://m.football.ua"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];

    StupidController* bla = [[StupidController alloc] initWithFrame:self.view.frame];
    [self.view addSubview:bla];
    [bla loadRequest:request];
    bla.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDieWebView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}
-(void) webViewDidStartLoad:(UIWebView *)webView{
    
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [webView stringByEvaluatingJavaScriptFromString:@"document.body.contentEditable = 'true';"];
}
- (void) copy:(id)sender{
    NSLog(@"copy");    
}
- (void) paste:(id)sender{
    NSLog(@"paste");
}

@end
