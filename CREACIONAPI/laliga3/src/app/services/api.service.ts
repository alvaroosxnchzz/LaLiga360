import { HttpClient, HttpHeaders, HttpClientModule } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, Subject, catchError, map, tap } from 'rxjs';
import { LoginI } from '../models/login.interface';
import { ResponseI } from '../models/response.interface';
import { RegistroI } from '../models/registro.interface';
import { ResponseregI } from '../models/responsereg.interface';
import { Equipo } from '../models/equiporesponse.interface';
import { response } from 'express';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  private usuarioEliminadoSubject = new Subject<void>();
  url: string = "http://localhost:3000/";

  constructor(private http: HttpClient) { }

  loginByEmail(form: LoginI): Observable<ResponseI> {
    console.log('Credenciales enviadas:', form); // Agregar esta línea para verificar las credenciales que se están enviando
    let direccion = this.url + 'inicio-sesion';

    // Especificar el tipo de contenido como application/json
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    };

    return this.http.post<ResponseI>(direccion, form, httpOptions);
  }


  // Método para eliminar un equipo de los favoritos del usuario
  eliminarEquipoFavorito(idUsuario: number, equipoId: string): Observable<any> {
    const direccion = `${this.url}usuarios/${idUsuario}/equipos-favoritos/${equipoId}`;
    return this.http.delete(direccion);
  }

  obtenerUsuarioPorId(userId: number): Observable<any> {
    return this.http.get<any>(`${this.url}usuarios/${userId}`);
  }

  registerUser(form: RegistroI): Observable<ResponseregI> {
    console.log('Datos de registro:', form);
    const direccion = this.url + 'registro';
    const httpOptions = {
      headers: new HttpHeaders({
        'Content-Type': 'application/json'
      })
    };
    return this.http.post<ResponseregI>(direccion, form, httpOptions);
  }

  eliminarUsuario(userId: number): Observable<any> {
    const url = `${this.url}borrarusuarios/${userId}`; // Reemplaza '/usuarios' con la ruta correcta para eliminar usuarios en tu API
    return this.http.delete(url).pipe(
      tap(() => {
        this.usuarioEliminadoSubject.next(); // Notificar al componente que el usuario ha sido eliminado
      })
    );
  }

  getUsuarioEliminadoObservable(): Observable<void> {
    return this.usuarioEliminadoSubject.asObservable();
  }
  esAdmin(): Observable<boolean> {
    const userId = localStorage.getItem('userId');
    if (!userId) {
      return new Observable<boolean>(observer => {
        observer.next(false); // Si no hay un ID de usuario en el localStorage, no es admin
        observer.complete();
      });
    }

    return this.http.get<any>(`${this.url}usuarios/${userId}`).pipe(
      map(response => {
        console.log(response); // Verifica la estructura del objeto response
        if (response && response.rol === 'Admin') {
          return true;
        } else {
          return false;
        }
      }),
      catchError(error => {
        console.error('Error al obtener la información del usuario:', error);
        return new Observable<boolean>(observer => {
          observer.next(false); // En caso de error, no es admin
          observer.complete();
        });
      })
    );
  }
}