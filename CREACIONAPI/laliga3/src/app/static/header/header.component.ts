import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from 'src/app/auth/auth.service';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  isLoggedIn: boolean = false; // Propiedad para indicar si el usuario está autenticado

  constructor(private authService: AuthService) { }

  ngOnInit(): void {
    // Verificar si el usuario está autenticado al inicializar el componente
    this.isLoggedIn = this.authService.isAuthenticated();
  }

  // Método para manejar el evento de clic en el botón de "Entrar"/"Cerrar Sesión"
  onAuthButtonClick() {
    if (this.isLoggedIn) {
      // Si el usuario está autenticado, cerrar sesión
      this.authService.logout();
    } else {
      // Si el usuario no está autenticado, redirigir al componente de inicio de sesión
      // Esto podría ser reemplazado por una lógica de redirección a la página de inicio de sesión correspondiente
      console.log("Redirect to login page");
    }
  }
}
