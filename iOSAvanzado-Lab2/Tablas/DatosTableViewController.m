//
//  DatosTableViewController.m
//  iOSAvanzado-Lab2
//
//  Created by Samuel Vasilovski on 28/10/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "DatosTableViewController.h"
#import "DatosServices.h"
#import "DatosTableViewCell.h"
#import "../View/DetalleViewController.h"

@interface DatosTableViewController ()

@property (nonatomic, strong) NSArray *datos;
@property (nonatomic, strong) Detalle *selectedDetalle;

@end

@implementation DatosTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.datos = [[DatosServices new] getAllDatos];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.datos count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Agrupador *detalle = self.datos[section];
    return [detalle.detalle count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Detalle *detalle = [self detalleForIndexPath:indexPath];
    
    DatosTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"celda Datos" forIndexPath:indexPath];
    cell.detalle = detalle;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedDetalle = [self detalleForIndexPath:indexPath];
    
    [self performSegueWithIdentifier:@"goToDetail" sender:self];
}

- (Detalle *)detalleForIndexPath:(NSIndexPath *)indexPath {
    Agrupador *detalle = [self dataForIndexPath:indexPath];
    return detalle.detalle[indexPath.row];
}

- (Agrupador *)dataForIndexPath:(NSIndexPath *)indexPath {
    return [self agrupadorForSection:indexPath.section];
}

- (Agrupador *)agrupadorForSection:(NSInteger)section {
    return self.datos[section];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"goToDetail"]) {
        DetalleViewController *dvc = (DetalleViewController *)segue.destinationViewController;
        dvc.detalle = self.selectedDetalle;
    }
}
@end
