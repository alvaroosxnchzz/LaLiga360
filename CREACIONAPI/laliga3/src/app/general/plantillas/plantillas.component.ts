import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { ApifutService } from 'src/app/services/apifut.service';
import { HeaderComponent } from 'src/app/static/header/header.component';
import { Equipo } from '../../models/equiporesponse.interface';

@Component({
  selector: 'app-plantillas',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './plantillas.component.html',
  styleUrls: ['./plantillas.component.css']
})
export class PlantillasComponent {
  equipos: any[] = []; // Inicializar como un arreglo vacío
  constructor(private apiFut: ApifutService, private router: Router) { }

  ngOnInit(): void {
    this.apiFut.getEquipos().subscribe(
      data => {
        console.log('Datos de equipos:', data);
        this.equipos = data;
      },
      error => {
        console.error('Error al obtener equipos:', error);
      }
    );
  }
  redirectToPage(idEquipo: number) {
    console.log(idEquipo)
    this.router.navigate(['/jugadores', idEquipo]);
  }
}
