import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './general/home/home.component';
import { RegistroComponent } from './registro/registro.component';
import { AuthguardService } from './auth/authguard.service';
import { ClasificacionComponent } from './general/clasificacion/clasificacion.component';
import { EquiposComponent } from './general/equipos/equipos.component';
import { PlantillasComponent } from './general/plantillas/plantillas.component';
import { JugadoresComponent } from './general/jugadores/jugadores.component';
import { JugadordetallesComponent } from './general/jugadordetalles/jugadordetalles.component';
import { RankingComponent } from './general/ranking/ranking.component';
import { EspanaComponent } from './general/espana/espana.component';
import { DatosUsuarioComponent } from './general/datos-usuario/datos-usuario.component';
import { ThreadListComponent } from './thread-list/thread-list.component';
import { ThreadDetailComponent } from './thread-detail/thread-detail.component';
import { ThreadCreateDeleteComponent } from './thread-create-delete/thread-create-delete.component';

const routes: Routes = [
  { path: '', component: LoginComponent },
  { path: 'register', component: RegistroComponent },
  { path: 'home', component: HomeComponent, canActivate: [AuthguardService] },
  { path: 'clasi', component: ClasificacionComponent },
  { path: 'equipo/:nombre', component: EquiposComponent },
  { path: 'plantillas', component: PlantillasComponent},
  { path: 'jugadores/:idEquipo', component: JugadoresComponent},
  { path: 'jugador/:idJugador', component: JugadordetallesComponent},
  { path: 'ranking', component: RankingComponent},
  { path: 'espana', component: EspanaComponent},
  { path: 'usuarios', component: DatosUsuarioComponent},
  { path: 'foro', component: ThreadListComponent},
  {path: 'forodetalles/:id', component: ThreadDetailComponent},
  {path: 'forocrear', component: ThreadCreateDeleteComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
