import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private isAuthenticatedValue = false;
  private authToken: string | null = null;
  private readonly localStorageKey = 'authStatus';

  constructor() {
    // Verificar si hay un estado de autenticación almacenado en localStorage al inicializar el servicio
    const storedAuthStatus = localStorage.getItem(this.localStorageKey);
    if (storedAuthStatus) {
      this.isAuthenticatedValue = JSON.parse(storedAuthStatus);
    }
  }

  // Método para verificar si el usuario está autenticado
  public isAuthenticated(): boolean {
    return this.isAuthenticatedValue;
  }

  // Método para obtener el token de autenticación
  public getToken(): string | null {
    return this.authToken;
  }

  // Método para iniciar sesión
  public login(token: string): void {
    this.isAuthenticatedValue = true;
    this.authToken = token;
    // Guardar el estado de autenticación en localStorage
    localStorage.setItem(this.localStorageKey, JSON.stringify(this.isAuthenticatedValue));
  }

  // Método para cerrar sesión
  public logout(): void {
    this.isAuthenticatedValue = false;
    this.authToken = null;
    // Eliminar el estado de autenticación de localStorage
    localStorage.removeItem(this.localStorageKey);
  }
}
