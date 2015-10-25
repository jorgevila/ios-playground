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

@interface ExpedienteTableViewController ()

@end


@implementation ExpedienteTableViewController {

    NSArray *asignaturas;
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
    Asignatura *asig1 = [Asignatura new];
    asig1.idAlumno = @"1";
    asig1.codAsignatura = @"27700";
    asig1.convocatoria = @"JUN2016";
    asig1.nota = @"5.0";
    asig1.curso = @"Curso 1";
    asig1.nombre = @"Formación histórica del Derecho en España";
    asig1.tipo = @"FB";
    asig1.creditos = @"6.0";
    asig1.temporalidad = @"1";
    
    Asignatura *asig2 = [Asignatura new];
    asig2.idAlumno = @"2";
    asig2.codAsignatura = @"27701";
    asig2.convocatoria = @"JUN2016";
    asig2.nota = @"2.0";
    asig2.curso = @"Curso 2";
    asig2.nombre = @"Derecho Natural";
    asig2.tipo = @"FB";
    asig2.creditos = @"2.0";
    asig2.temporalidad = @"1";
    
    Asignatura *asig3 = [Asignatura new];
    asig3.idAlumno = @"3";
    asig3.codAsignatura = @"27702";
    asig3.convocatoria = @"JUN2016";
    asig3.nota = @"10.0";
    asig3.curso = @"Curso 3";
    asig3.nombre = @"Derecho vinícola";
    asig3.tipo = @"FB";
    asig3.creditos = @"3.0";
    asig3.temporalidad = @"1";
    
    asignaturas = [NSArray arrayWithObjects:asig1, asig2, asig3, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [asignaturas count];
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
