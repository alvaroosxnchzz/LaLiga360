import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { catchError, throwError } from 'rxjs';
import { JugadoresI } from 'src/app/models/jugadoresresponse.interface';
import { ApifutService } from 'src/app/services/apifut.service';
import { HeaderComponent } from 'src/app/static/header/header.component';

@Component({
  selector: 'app-jugadores',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './jugadores.component.html',
  styleUrls: ['./jugadores.component.css']
})
export class JugadoresComponent {
  jugadores: any[] = [];


  constructor(private route: ActivatedRoute, private apiFut: ApifutService, private router: Router) { }

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      const id = params['idEquipo'];
      this.apiFut.getJugadores(id).pipe(
        catchError(error => {
          console.error('Error al cargar jugadores:', error);
          return throwError(error);
        })
      ).subscribe(data => {
        console.log(data); // Verifica los datos recibidos de la API en la consola
        this.jugadores = data.map((jugador: any) => {
          return {
            idJugador: jugador.JugadorID,
            foto: jugador.FotoJugador,
            nombre: jugador.Nombre,
          };
        });
        console.log(this.jugadores);
      });
    });
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
