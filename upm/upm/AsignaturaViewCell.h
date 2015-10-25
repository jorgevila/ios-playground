//
//  AsignaturaViewCell.h
//  upm
//
//  Created by jorgev on 25/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AsignaturaViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *codigo;

@property (weak, nonatomic) IBOutlet UILabel *convocatoria;

@property (weak, nonatomic) IBOutlet UILabel *curso;

@property (weak, nonatomic) IBOutlet UILabel *nota;

@end
