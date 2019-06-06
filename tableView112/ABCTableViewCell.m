//
//  ABCTableViewCell.m
//  tableView112
//
//  Created by Alexey Levanov on 27/05/2019.
//  Copyright © 2019 Alexey Levanov. All rights reserved.
//

#import "ABCTableViewCell.h"

@implementation ABCTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
	if (self)
	{
		_isAnimated = NO;
	}
	
	return self;
}

@end
