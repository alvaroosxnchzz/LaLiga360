import { Component, OnInit } from '@angular/core';
import { HeaderComponent } from '../../static/header/header.component';
import { FooterComponent } from '../../static/footer/footer.component';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [HeaderComponent, FooterComponent, CommonModule],
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  isLoading: boolean = true; // Inicialmente, muestra el loader al cargar la página

  ngOnInit() {
    // Simula una operación asincrónica, como cargar datos desde una API
    setTimeout(() => {
      // Después de 3 segundos (por ejemplo), oculta el loader
      this.isLoading = false;
    }, 3000);
  }
}
