import { Component } from '@angular/core';
import { ApifutService } from 'src/app/services/apifut.service';
import { Equipo } from 'src/app/models/equiporesponse.interface';
import { ActivatedRoute } from '@angular/router';
import { HeaderComponent } from 'src/app/static/header/header.component';
import { CommonModule } from '@angular/common';
import { Router } from '@angular/router';

@Component({
  selector: 'app-equipos',
  standalone: true,
  imports: [HeaderComponent, CommonModule],
  templateUrl: './equipos.component.html',
  styleUrls: ['./equipos.component.css']
})
export class EquiposComponent {
  equipo: Equipo | null = null;

  constructor(private route: ActivatedRoute, private apiFut: ApifutService, private router: Router) { }

  ngOnInit(): void {
    this.route.params.subscribe(params => {
      const nombreEquipo = params['nombre'];
      this.apiFut.getEquipoByNombre(nombreEquipo).subscribe(detalle => {
        this.equipo = detalle;
      });
    });
  }

  redirect(){
    this.router.navigate(['clasi']);
  }
}
