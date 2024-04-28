import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Equipo } from '../models/equiporesponse.interface';
import { JugadoresI } from '../models/jugadoresresponse.interface';

@Injectable({
  providedIn: 'root'
})
export class ApifutService {
  private baseUrl = 'http://localhost:3500'; // URL del backend

  constructor(private http: HttpClient) { }

  getEquipos(): Observable<any[]> {
    return this.http.get<any[]>(`${this.baseUrl}/datos`);
  }

  getEquipoByNombre(nombreEquipo: string): Observable<Equipo> {
    return this.http.get<Equipo>(`${this.baseUrl}/equipo/${nombreEquipo}`);
  }
  
  getJugadores(idEquipo: number): Observable<JugadoresI[]> {
    console.log(idEquipo);
    return this.http.get<JugadoresI[]>(`${this.baseUrl}/jugadores/${idEquipo}`);
  }

  getJugadorById(idJugador: number): Observable<JugadoresI> {
    return this.http.get<JugadoresI>(`${this.baseUrl}/jugador/${idJugador}`);
  }
  getJugadoresOrdenadosPorGoles(): Observable<JugadoresI[]> {
    return this.http.get<JugadoresI[]>(`${this.baseUrl}/ranking`);
  }
  getJugadoresEspanoles(): Observable<JugadoresI[]> {
    return this.http.get<JugadoresI[]>(`${this.baseUrl}/jugadores-espanoles`);
  }
  getJugadoresOrdenadosPorAsistencias(): Observable<JugadoresI[]> {
    return this.http.get<JugadoresI[]>(`${this.baseUrl}/jugadoresasist`);
  }
  // Método para obtener jugadores ordenados por tarjetas amarillas
  getJugadoresOrdenadosPorAmarillas(): Observable<JugadoresI[]> {
    return this.http.get<JugadoresI[]>(`${this.baseUrl}/jugadores-amarillas`);
  }

  // Método para obtener jugadores ordenados por tarjetas rojas
  getJugadoresOrdenadosPorRojas(): Observable<JugadoresI[]> {
    return this.http.get<JugadoresI[]>(`${this.baseUrl}/jugadores-rojas`);
  }
  
}
