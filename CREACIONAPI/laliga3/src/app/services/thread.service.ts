import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, throwError } from 'rxjs';
import { Thread } from '../models/thread.model';

@Injectable({
  providedIn: 'root'
})
export class ThreadService {

  private apiUrl = 'http://localhost:6800/'; // URL de tu API de hilos de discusión

  constructor(private http: HttpClient) { }
  createThread(threadData: any): Observable<Thread> {
    return this.http.post<Thread>(this.apiUrl + 'hilos', threadData);
  }

  deleteThread(id: number): Observable<void> {
    const url = `${this.apiUrl}hilos/${id}`;
    return this.http.delete<void>(url).pipe(
      catchError(error => {
        console.error('Error deleting thread:', error);
        return throwError('Error al eliminar hilo');
      })
    );
  }
  getThreads(): Observable<Thread[]> {
    return this.http.get<Thread[]>(this.apiUrl + 'threads');
  }

  getThread(id: number): Observable<Thread> {
    const url = `${this.apiUrl}threads/${id}`;
    return this.http.get<Thread>(url);
  }
  addCommentToThread(threadId: number, comment: any): Observable<any> {
    const url = `${this.apiUrl}/${threadId}/comments`;
    return this.http.post(url, comment);
  }
  deleteComment(commentId: number): Observable<void> {
    const url = `${this.apiUrl}/comments/${commentId}`;
    return this.http.delete<void>(url).pipe(
      catchError(error => {
        console.error('Error deleting comment:', error);
        return throwError('Error al eliminar comentario');
      })
    );
  }

  // Método en el servicio ThreadService para buscar hilos de discusión por título o descripción
  searchThreads(query: string): Observable<Thread[]> {
    const url = `${this.apiUrl}/search?q=${query}`;
    return this.http.get<Thread[]>(url);
  }

}
