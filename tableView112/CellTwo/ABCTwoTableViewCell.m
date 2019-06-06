//
//  ABCTwoTableViewCell.m
//  tableView112
//
//  Created by admin on 31.05.19.
//  Copyright © 2019 Alexey Levanov. All rights reserved.
//

#import "ABCTwoTableViewCell.h"

@interface ABCTwoTableViewCell ()

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;

@end

@implementation ABCTwoTableViewCell


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
        _iconImageView = [UIImageView new];
        _iconImageView.backgroundColor = [UIColor blueColor];
        [self.contentView addSubview:_iconImageView];
        
        _iconImageView.translatesAutoresizingMaskIntoConstraints = NO;
        [_iconImageView.heightAnchor constraintEqualToConstant:40.f].active = YES;
        [_iconImageView.widthAnchor constraintEqualToConstant:40.f].active = YES;
        
        [_iconImageView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor
                                                constant:8.0].active = YES;
        [_iconImageView.leftAnchor constraintEqualToAnchor:self.contentView.leftAnchor
                                                constant:8.0].active = YES;
        
        _titleLabel = [UILabel new];
        _titleLabel.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:_titleLabel];
    
        _titleLabel.numberOfLines = 0;
    
        _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [_titleLabel.topAnchor constraintEqualToAnchor:self.contentView.topAnchor
                                             constant:8.0].active = YES;
        [_titleLabel.leftAnchor constraintEqualToAnchor:_iconImageView.rightAnchor
                                              constant:8.0].active = YES;
        [_titleLabel.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor
                                               constant:-8.0].active = YES;
        
        _subtitleLabel = [UILabel new];
        _subtitleLabel.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:_subtitleLabel];
 
    _subtitleLabel.numberOfLines = 0;
    
    
        _subtitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        [_subtitleLabel.topAnchor constraintEqualToAnchor:_titleLabel.bottomAnchor
                                              constant:2.0].active = YES;
        [_subtitleLabel.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor
                                                 constant:-8.0].active = YES;

        [_subtitleLabel.leftAnchor constraintEqualToAnchor:_iconImageView.rightAnchor
                                               constant:8.0].active = YES;
        [_subtitleLabel.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor
                                               constant:-8.0].active = YES;
    return self;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.iconImageView.image = nil;
    self.titleLabel.text = nil;
    self.subtitleLabel.text = nil;
}

- (void)setTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

- (void)setSubtitle:(NSString *)subtitle
{
    self.subtitleLabel.text = subtitle;
}

@end
