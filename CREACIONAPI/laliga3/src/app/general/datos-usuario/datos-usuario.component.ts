import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { catchError, tap, throwError } from 'rxjs';
import { ApiService } from 'src/app/services/api.service';
import { HeaderComponent } from 'src/app/static/header/header.component';

@Component({
  selector: 'app-datos-usuario',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './datos-usuario.component.html',
  styleUrls: ['./datos-usuario.component.css']
})
export class DatosUsuarioComponent implements OnInit {
  userData: any[] = []; // Puedes ajustar el tipo según la estructura de datos de tu API

  constructor(private apiService: ApiService, private router: Router) {}

  ngOnInit(): void {
    const storedUserId = localStorage.getItem('userId'); // Obtener la ID del usuario del almacenamiento local
    if (storedUserId) {
      const userId = parseInt(storedUserId, 10);
      this.apiService.obtenerUsuarioPorId(userId).pipe(
        catchError(error => {
          console.error('Error al cargar datos del usuario:', error);
          return throwError(error);
        })
      ).subscribe(data => {
        console.log('Datos del usuario:', data); // Verifica los datos recibidos de la API en la consola
        this.userData = data.map((Usuario: any) => {
          return {
            nombre: Usuario.nombre,
            email: Usuario.email,
            telefono: Usuario.telefono,
            rol: Usuario.rol,
          };
        });
        console.log(this.userData);
      });
    } else {
      console.error('No se encontró la ID del usuario en el  almacenamiento local');
    }
    this.apiService.getUsuarioEliminadoObservable().subscribe(() => {
      window.alert('Usuario eliminado');
      localStorage.clear(); 
      this.router.navigate(['']); 
    });
  }

  eliminarUsuario(): void {
    const storedUserId = localStorage.getItem('userId');
    if (storedUserId) {
      const userId = parseInt(storedUserId, 10);
      this.apiService.eliminarUsuario(userId).pipe(
        catchError(error => {
          console.error('Error al eliminar usuario:', error);
          return throwError(error);
        })
      ).subscribe();
    } else {
      console.error('No se encontró la ID del usuario en el almacenamiento local');
    }
  }
}
