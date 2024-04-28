import { Component } from '@angular/core';
import { ThreadService } from 'src/app/services/thread.service';

@Component({
  selector: 'app-thread-create-delete',
  templateUrl: './thread-create-delete.component.html',
  styleUrls: ['./thread-create-delete.component.css']
})
export class ThreadCreateDeleteComponent {
  titulo: string = '';
  descripcion: string = '';
  contenido: string = '';

  constructor(private threadService: ThreadService) { }

  crearHilo() {
    const hiloData = { title: this.titulo, description: this.descripcion, content: this.contenido };
    this.threadService.createThread(hiloData).subscribe(
      response => {
        console.log('Hilo creado:', response);
        // Lógica adicional después de crear el hilo (por ejemplo, redireccionar a la lista de hilos)
      },
      error => {
        console.error('Error al crear el hilo:', error);
        // Manejo de errores (por ejemplo, mostrar un mensaje de error al usuario)
      }
    );
  }
}
