import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Thread } from '../models/thread.model';
import { ThreadService } from '../services/thread.service';

@Component({
  selector: 'app-thread-detail',
  templateUrl: './thread-detail.component.html',
  styleUrls: ['./thread-detail.component.css']
})
export class ThreadDetailComponent implements OnInit {
  thread: Thread | undefined;
  error: string | undefined;
  newCommentText: string = ''; // Variable para almacenar el nuevo comentario

  constructor(
    private route: ActivatedRoute,
    private threadService: ThreadService
  ) { }

  ngOnInit(): void {
    this.getThreadDetail();
  }

  getThreadDetail(): void {
    const idParam = this.route.snapshot.paramMap.get('id');
    if (idParam !== null) {
      const id = +idParam;
      this.threadService.getThread(id).subscribe(
        (thread) => {
          this.thread = thread;
        },
        (error) => {
          console.error('Error fetching thread details:', error);
          this.error = 'Error fetching thread details';
        }
      );
    } else {
      console.error('No thread ID provided');
      this.error = 'No thread ID provided';
    }
  }

  addComment(): void {
    if (!this.newCommentText.trim()) {
      return; // No hacer nada si el comentario está vacío
    }

    const newComment = {
      text: this.newCommentText
    };

    // Llamar al servicio para agregar el comentario al hilo de discusión
    if (this.thread) {
      this.threadService.addCommentToThread(this.thread.id, newComment).subscribe(
        () => {
          // Recargar los detalles del hilo de discusión para mostrar el nuevo comentario
          this.getThreadDetail();
          // Limpiar el campo de texto del comentario después de agregarlo
          this.newCommentText = '';
        },
        error => {
          console.error('Error adding comment:', error);
          this.error = 'Error adding comment';
        }
      );
    }
  }
  deleteComment(commentId: number): void {
    if (confirm('¿Estás seguro de que deseas eliminar este comentario?')) {
      this.threadService.deleteComment(commentId).subscribe(
        () => {
          // Eliminar el comentario de la lista de comentarios del hilo
          if (this.thread) {
            this.thread.comments = this.thread.comments.filter(comment => comment.id !== commentId);
          }
        },
        error => {
          console.error('Error deleting comment:', error);
          // Manejar el error, mostrar mensaje al usuario, etc.
        }
      );
    }
  }
  eliminarHilo(hiloId: number) {
    this.threadService.deleteThread(hiloId).subscribe(
      response => {
        console.log('Hilo eliminado:', response);
        // Actualizar la lista de hilos después de eliminar el hilo
        this.getThreadDetail();
      },
      error => {
        console.error('Error al eliminar el hilo:', error);
        // Manejo de errores (por ejemplo, mostrar un mensaje de error al usuario)
      }
    );
  }

  esAdmin(): boolean {
    // Lógica para determinar si el usuario es administrador (por ejemplo, comprobar el rol del usuario)
    return true; // Cambiar esto según la lógica de autenticación y autorización de tu aplicación
  }
}

