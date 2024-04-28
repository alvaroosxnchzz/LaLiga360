import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ApifutService } from 'src/app/services/apifut.service';
import { HeaderComponent } from 'src/app/static/header/header.component';
import { ApiService } from '../../services/api.service';
import { JugadoresI } from 'src/app/models/jugadoresresponse.interface';
import { catchError, throwError } from 'rxjs';

@Component({
  selector: 'app-espana',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './espana.component.html',
  styleUrls: ['./espana.component.css']
})
export class EspanaComponent {
  jugadoresEspanoles: any[] = []; // Aquí debes tener tus datos de jugadores españoles

  constructor(private route: ActivatedRoute, private apiService: ApifutService, private router: Router) { }

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      const id = params['idEquipo'];
      this.apiService.getJugadoresEspanoles().pipe(
        catchError(error => {
          console.error('Error al cargar jugadores:', error);
          return throwError(error);
        })
      ).subscribe(data => {
        console.log(data); // Verifica los datos recibidos de la API en la consola
        this.jugadoresEspanoles = data.map((jugador: any) => {
          return {
            idJugador: jugador.JugadorID,
            foto: jugador.FotoJugador,
            nombre: jugador.Nombre,
            jugados: jugador.PartidosJugados,
            goles: jugador.Goles,
            edad: jugador.Edad,
            posicion: jugador.Posicion,
          };
        });
        console.log(this.jugadoresEspanoles);
      });
    });
  }

  irADetalles(JugadorID: JugadoresI): void {
    if (JugadorID) { // Verifica si idJugador es válido
      this.router.navigate(['/jugador', JugadorID]);
    } else {
      console.error('El id del jugador es indefinido');
    }
    console.log(JugadorID)
  }
}
