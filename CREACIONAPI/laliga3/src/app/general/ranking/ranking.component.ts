import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ApifutService } from 'src/app/services/apifut.service';
import { HeaderComponent } from 'src/app/static/header/header.component';

@Component({
  selector: 'app-ranking',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './ranking.component.html',
  styleUrls: ['./ranking.component.css']
})
export class RankingComponent implements OnInit {
  jugadoresPorGoles: any[] = [];
  jugadoresPorAsistencias: any[] = [];
  jugadoresPorAmarillas: any[] = [];
  jugadoresPorRojas: any[] = [];
  displayedJugadoresGoles: any[] = [];
  displayedJugadoresAsistencias: any[] = [];
  displayedJugadoresAmarillas: any[] = [];
  displayedJugadoresRojas: any[] = [];
  showAllGoles: boolean = false;
  showAllAsistencias: boolean = false;
  showAllAmarillas: boolean = false;
  showAllRojas: boolean = false;
  buttonTextAsistencias: string = "Mostrar Más";
  buttonText: string = "Mostrar Más";
  buttonTextAmarillas: string = "Mostrar Más";
  buttonTextRojas: string = "Mostrar Más";

  constructor(private apiService: ApifutService, private router: Router) { }

  ngOnInit(): void {
    // Obtener jugadores ordenados por goles
    this.apiService.getJugadoresOrdenadosPorGoles().subscribe((data) => {
      this.jugadoresPorGoles = data;
      console.log(data);
      // Mostrar inicialmente solo los primeros 35 jugadores
      this.displayedJugadoresGoles = this.jugadoresPorGoles.slice(0, 35);
    });

    // Obtener jugadores ordenados por asistencias
    this.apiService.getJugadoresOrdenadosPorAsistencias().subscribe((data) => {
      this.jugadoresPorAsistencias = data;
      console.log(data);

      // Mostrar inicialmente solo los primeros 35 jugadores
      this.displayedJugadoresAsistencias = this.jugadoresPorAsistencias.slice(0, 35);
    });

    this.apiService.getJugadoresOrdenadosPorAmarillas().subscribe((data) => {
      this.jugadoresPorAmarillas = data;
      // Mostrar inicialmente solo los primeros 35 jugadores
      this.displayedJugadoresAmarillas = this.jugadoresPorAmarillas.slice(0, 35);
    });

    // Obtener jugadores ordenados por tarjetas rojas
    this.apiService.getJugadoresOrdenadosPorRojas().subscribe((data) => {
      this.jugadoresPorRojas = data;
      // Mostrar inicialmente solo los primeros 35 jugadores
      this.displayedJugadoresRojas = this.jugadoresPorRojas.slice(0, 35);
    });
  }

  mostrarTodosGoles() {
    if (this.showAllGoles) {
      this.displayedJugadoresGoles = this.jugadoresPorGoles.slice(0, 35);
      this.buttonText = "Mostrar Más";
    } else {
      this.displayedJugadoresGoles = this.jugadoresPorGoles;
      this.buttonText = "Mostrar Menos";
    }
    this.showAllGoles = !this.showAllGoles;
  }

  // Método para mostrar todos los jugadores de la tabla de asistencias
  mostrarTodosAsistencias() {
    if (this.showAllAsistencias) {
      this.displayedJugadoresAsistencias = this.jugadoresPorAsistencias.slice(0, 35);
      this.buttonTextAsistencias = "Mostrar Más";
    } else {
      this.displayedJugadoresAsistencias = this.jugadoresPorAsistencias;
      this.buttonTextAsistencias = "Mostrar Menos";
    }
    this.showAllAsistencias = !this.showAllAsistencias;
  }
  // Método para mostrar todos los jugadores de la tabla de tarjetas amarillas
  mostrarTodosAmarillas() {
    if (this.showAllAmarillas) {
      this.displayedJugadoresAmarillas = this.jugadoresPorAmarillas.slice(0, 35);
      this.buttonTextAmarillas = "Mostrar Más";
    } else {
      this.displayedJugadoresAmarillas = this.jugadoresPorAmarillas;
      this.buttonTextAmarillas = "Mostrar Menos";
    }
    this.showAllAmarillas = !this.showAllAmarillas;
  }

  // Método para mostrar todos los jugadores de la tabla de tarjetas rojas
  mostrarTodosRojas() {
    if (this.showAllRojas) {
      this.displayedJugadoresRojas = this.jugadoresPorRojas.slice(0, 35);
      this.buttonTextRojas = "Mostrar Más";
    } else {
      this.displayedJugadoresRojas = this.jugadoresPorRojas;
      this.buttonTextRojas = "Mostrar Menos";
    }
    this.showAllRojas = !this.showAllRojas;
  }

  irADetalles(JugadorID: number): void {
    if (JugadorID) { // Verifica si idJugador es válido
      this.router.navigate(['/jugador', JugadorID]);
    } else {
      console.error('El id del jugador es indefinido');
    }
    console.log(JugadorID)
  }
}
