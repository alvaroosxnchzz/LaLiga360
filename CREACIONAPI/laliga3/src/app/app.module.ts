import { ApplicationRef, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { FooterComponent } from "./static/footer/footer.component";
import { BarcelonaComponent } from './historia/barcelona/barcelona.component';
import { SevillaComponent } from './historia/sevilla/sevilla.component';
import { ThreadListComponent } from './thread-list/thread-list.component';
import { ThreadDetailComponent } from './thread-detail/thread-detail.component';
import { ThreadCreateDeleteComponent } from './thread-create-delete/thread-create-delete.component';
@NgModule({
    declarations: [
        AppComponent,
        BarcelonaComponent,
        SevillaComponent,
        ThreadDetailComponent,
        ThreadCreateDeleteComponent
    ],
    providers: [],
    imports: [
        BrowserModule,
        AppRoutingModule,
        FormsModule,
        ReactiveFormsModule,
        HttpClientModule,
        FooterComponent
    ]
})
export class AppModule {
  constructor(private appRef: ApplicationRef) {}

  ngDoBootstrap() {
    // Inicializa manualmente tus componentes aquí
    this.appRef.bootstrap(AppComponent);
  }
}
