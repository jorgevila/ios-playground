//
//  AsignaturaViewCell.m
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "AsignaturaViewCell.h"

@implementation AsignaturaViewCell

@synthesize name;

@synthesize codigo;

@synthesize convocatoria;

@synthesize curso;

@synthesize nota;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
