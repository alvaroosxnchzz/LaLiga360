import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { ApiService } from '../services/api.service';
import { HttpClientModule } from '@angular/common/http';
import { Router } from '@angular/router';
import { AuthService } from '../auth/auth.service';
import { LocalStorageService } from '../services/local-storage.service';


@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule, HttpClientModule],
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  loginForm = new FormGroup({
    email: new FormControl('', [Validators.required, Validators.email]),
    pass: new FormControl('', Validators.required)
  });

  constructor(private api: ApiService, private router: Router, private authService: AuthService, private localStorageService: LocalStorageService) { }

  ngOnInit(): void {
  }

  onLogin() {
    if (this.loginForm.valid) {
      this.api.loginByEmail(this.loginForm.value).subscribe(data => {
        console.log(data);
        if (data && data.token) {
          const userName = data.nombre;
          const userId = data.id;
          const userRole = data.rol; // Obtener el rol del usuario desde la respuesta del servidor
          this.authService.login(data.token);
          this.localStorageService.setItem('userId', userId);
          this.localStorageService.setItem('userRole', userRole); // Guardar el rol del usuario en localStorage
          console.log('ID y rol del usuario guardados en Local Storage:', userId, userRole);
          window.alert(`¡Bienvenido, ${userName}! Disfrute de nuestro servicio.`);
          this.router.navigate(['/home']);
        } else {
          window.alert('¡Credenciales incorrectas!');
        }
      });
    } else {
      this.loginForm.markAllAsTouched();
      window.alert('¡Credenciales incorrectas, o error del servidor, intente más tarde!');
    }
  }
}
