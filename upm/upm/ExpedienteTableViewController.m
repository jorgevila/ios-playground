//
//  ExpedienteTableViewController.m
//  upm
//
//  Created by jorgev on 24/10/15.
//  Copyright © 2015 jorgev. All rights reserved.
//

#import "ExpedienteTableViewController.h"
#import "Asignatura.h"
#import "AsignaturaViewCell.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>

@interface ExpedienteTableViewController ()

@end


@implementation ExpedienteTableViewController {

    NSArray *asignaturas;
}

-(void) viewWillAppear:(BOOL)animated {
    
    // Get the stored data before the view loads
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    NSString *token = [defaults objectForKey:@"token"];
    if ([token length] <= 0) {
        [self performSegueWithIdentifier:@"exit_to_login" sender: self];
    }
    
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Initialize table data
    /*
     {
     "idalumno": "1",
     "cod_asignatura": "27700",
     "convocatoria": "JUN2016",
     "nota": "5.0",
     "curso": "Curso 1",
     "nombre": "Formación histórica del Derecho en España",
     "tipo": "FB",
     "creditos": "6.0",
     "temporalidad": "1"
     },
     */
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *token = [defaults objectForKey:@"token"];
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager GET:@"http://149.202.115.63/expediente" parameters:@{
        @"token" : token
        } success:^(AFHTTPRequestOperation *operation,NSArray *JSONResponse) {
           
            NSLog(@"%@", JSONResponse);
                                                                 
            id error;
            asignaturas = [MTLJSONAdapter modelsOfClass:Asignatura.class
                           fromJSONArray:JSONResponse
                           error:&error];

            NSLog(@"Asignaturas: %@ (%lu)", asignaturas,(unsigned long)[asignaturas count]);
            
            [self.tableView reloadData];
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"Network Error: %@", error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return asignaturas == nil? 0 : [asignaturas count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AsignaturaViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    Asignatura *asignatura = [asignaturas objectAtIndex:indexPath.row];
    cell.name.text = asignatura.nombre;
    cell.codigo.text = asignatura.codAsignatura;
    cell.convocatoria.text = asignatura.convocatoria;
    cell.nota.text = asignatura.nota;
    cell.curso.text = asignatura.curso;
    NSLog(@"%@", asignatura);

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
