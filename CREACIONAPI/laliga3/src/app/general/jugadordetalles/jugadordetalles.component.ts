import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ApifutService } from 'src/app/services/apifut.service';
import { HeaderComponent } from 'src/app/static/header/header.component';

@Component({
  selector: 'app-jugadordetalles',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './jugadordetalles.component.html',
  styleUrls: ['./jugadordetalles.component.css']
})
export class JugadordetallesComponent implements OnInit {

  jugador: any;

  constructor(private route: ActivatedRoute, private apiFut: ApifutService) { }

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      const idJugador = params['idJugador'];
      this.apiFut.getJugadorById(idJugador).subscribe(data => {
        this.jugador = data;
        console.log(data)
      });
    });
  }
}
