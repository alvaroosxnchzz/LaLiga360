import { Component } from '@angular/core';
import { HeaderComponent } from '../../static/header/header.component';
import { CommonModule } from '@angular/common';
import { ApifutService } from '../../services/apifut.service';
import { Router } from '@angular/router';
import { RouterLink } from '@angular/router';
import { Equipo } from 'src/app/models/equiporesponse.interface';

@Component({
  selector: 'app-clasificacion',
  standalone: true,
  imports: [HeaderComponent, CommonModule, RouterLink],
  templateUrl: './clasificacion.component.html',
  styleUrls: ['./clasificacion.component.css']
})
export class ClasificacionComponent {
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
  getColorForPosition(position: number): string {
    if (position === 1) {
      return '#abe139'; // Verde claro para el puesto 1
    } else if (position >= 2 && position <= 4) {
      return '#4acb2a'; // Verde normal para puestos 2-4
    } else if (position >= 5 && position <= 6) {
      return '#38d996'; // Verde azulado para puestos 5-6
    } else if (position === 7) {
      return '#5694d8'; // Azul clarito para el puesto 7
    } else if (position >= 18 && position <= 20) {
      return '#ed3b46'; // Rojo para puestos 18-20
    } else {
      return ''; // Por defecto, sin color
    }
  }
  redirectToPage(nombreEquipo: string) {
    this.router.navigate(['/equipo', nombreEquipo]);
  }
  
}
