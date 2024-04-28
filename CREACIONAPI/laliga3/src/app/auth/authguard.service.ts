import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from './auth.service';

@Injectable({
  providedIn: 'root'
})
export class AuthguardService {
  
  constructor(private authService: AuthService, private router: Router) {}

  canActivate(): boolean {
    if (this.authService.isAuthenticated()) {
      return true; // El usuario está autenticado, permite el acceso a la ruta
    } else {
      window.alert('¡¡¡ACCESO DENEGADO!!! por favor, inicie sesion.')
      this.router.navigate(['']); // Redirige al usuario al componente de inicio de sesión
      return false; // Bloquea el acceso a la ruta
    }
  }
}
