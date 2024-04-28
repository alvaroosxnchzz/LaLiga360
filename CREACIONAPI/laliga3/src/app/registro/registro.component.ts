import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { FormGroup, Validators, ReactiveFormsModule, FormControl } from '@angular/forms';
import { ApiService } from '../services/api.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-registro',
  standalone: true,
  imports: [ReactiveFormsModule, CommonModule],
  templateUrl: './registro.component.html',
  styleUrls: ['./registro.component.css']
})
export class RegistroComponent implements OnInit {
  registroForm: FormGroup = new FormGroup({});

  constructor(private api: ApiService, private router: Router) { }

  ngOnInit(): void {
    this.registroForm = new FormGroup({
      nombre: new FormControl('', Validators.required),
      email: new FormControl('', Validators.required),
      pass: new FormControl('', Validators.required),
      telefono: new FormControl('', Validators.required),
      rol: new FormControl('', Validators.required),
    });
  }

  onLogin() {
    if (this.registroForm && this.registroForm.valid) {
      if (this.registroForm && this.registroForm.valid) {
        console.log(this.registroForm.value);
        this.api.registerUser(this.registroForm.value).subscribe({
          next: (data) => {
            console.log(data);
            window.alert('¡Bienvenido inicie sesion para poder entrar!')
            this.router.navigate(['']);
          },
          error: (error) => {
            console.error(error);
            if (error.status === 409) { // 409 Conflict: Email duplicado
              window.alert('El email ya esta registrado.');
              console.log("El email ya está registrado.");
            }
          }
        });
      }
    } else {
      window.alert('El formulario es invalido.')
      console.error('El formulario no está inicializado o es inválido.');
    }
  }
}