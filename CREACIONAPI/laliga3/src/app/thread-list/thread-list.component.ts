import { Component, OnInit } from '@angular/core';
import { Thread } from '../models/thread.model';
import { ThreadService } from '../services/thread.service';
import { Router } from '@angular/router';
import { HeaderComponent } from '../static/header/header.component';
import { CommonModule } from '@angular/common';
import { ApiService } from '../services/api.service';
import { HttpClient } from '@angular/common/http';
import { ResponseI } from '../models/response.interface';

@Component({
  selector: 'app-thread-list',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './thread-list.component.html',
  styleUrls: ['./thread-list.component.css']
})
export class ThreadListComponent implements OnInit {
  threads: Thread[] = [];
  filteredThreads: Thread[] = [];
  searchText: string = '';
  isAdmin: boolean = false;

  constructor(private threadService: ThreadService, private router: Router, private apiService: ApiService, private http: HttpClient) { }

  ngOnInit(): void {
    this.loadThreads();
    this.checkAdminStatus();
  }

  loadThreads(): void {
    this.threadService.getThreads().subscribe(
      threads => {
        this.threads = threads;
        this.filteredThreads = threads; // Inicialmente, mostrar todos los hilos sin filtrar
      },
      error => {
        console.error('Error fetching threads:', error);
        // Manejar el error de acuerdo a tus necesidades
      }
    );
  }
  checkAdminStatus(): void {
    const userRole = localStorage.getItem('userRole');
    if (!userRole) {
      this.isAdmin = false; // Si no hay un rol de usuario en el localStorage, no es admin
      return;
    }
    console.log(userRole)
    if (userRole == '"Admin"') {
      console.log('hola')
      this.isAdmin = true;
    } else {
      this.isAdmin = false;
    }
    console.log(this.isAdmin)
  }
  filterThreads(): void {
    if (!this.searchText.trim()) {
      this.filteredThreads = this.threads; // Mostrar todos los hilos si no hay texto de búsqueda
    } else {
      this.threadService.searchThreads(this.searchText).subscribe(
        threads => {
          this.filteredThreads = threads;
        },
        error => {
          console.error('Error searching threads:', error);
          // Manejar el error de acuerdo a tus necesidades
        }
      );
    }
  }

  seleccionarThread(threadId: number): void {
    // Buscar el hilo correspondiente usando la ID proporcionada
    const selectedThread = this.threads.find(thread => thread.id === threadId);
    if (selectedThread) {
      // Redirige a la página de detalles del hilo con la ID del hilo seleccionado
      this.router.navigate(['/forodetalles', threadId]);
    }
  }
  redirectCreate(): void {
    this.router.navigate(['/forocrear']);
  }
}
