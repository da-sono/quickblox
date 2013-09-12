//
//  CustomTableViewCell.m
//  SimpleSample-ratings-ios
//
//  Created by Ruslan on 9/11/12.
//  Copyright (c) 2012 QuickBlox. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "RateView.h"

@implementation CustomTableViewCell

@synthesize movieName;
@synthesize movieImageView;
@synthesize ratingView;
@synthesize backgroundImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        self.backgroundImageView = [[[UIImageView alloc] init] autorelease];
        [self.backgroundImageView setFrame:CGRectMake(0, 0, 320, 70)];
        [self.backgroundImageView setImage:[UIImage imageNamed:@"images.jpeg"]];
        [self addSubview:self.backgroundImageView];
        
        self.movieImageView = [[[UIImageView alloc] init] autorelease];
        [self.movieImageView setFrame:CGRectMake(2, 2, 46, 66)];
        [self addSubview:self.movieImageView];
        
        self.movieName = [[[UILabel alloc] init] autorelease];
        [self.movieName setFrame:CGRectMake(80, 10, 220, 20)];
        [self.movieName setBackgroundColor:[UIColor clearColor]];
        [self addSubview:self.movieName];
        
        self.ratingView = [[[RateView alloc] initWithFrame:CGRectMake(80, 40, 220, 30)] autorelease];
        self.ratingView.alignment = RateViewAlignmentLeft;
        self.ratingView.editable = NO;
        [self addSubview:self.ratingView];

        self.selectionStyle = 0;
    }
    return self;
}

- (void)dealloc {
    [movieName release];
    [ratingView release];
    [movieImageView release];
    [super dealloc];
}
@end
