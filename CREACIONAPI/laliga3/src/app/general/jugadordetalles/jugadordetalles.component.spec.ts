import { ComponentFixture, TestBed } from '@angular/core/testing';

import { JugadordetallesComponent } from './jugadordetalles.component';

describe('JugadordetallesComponent', () => {
  let component: JugadordetallesComponent;
  let fixture: ComponentFixture<JugadordetallesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ JugadordetallesComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(JugadordetallesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
