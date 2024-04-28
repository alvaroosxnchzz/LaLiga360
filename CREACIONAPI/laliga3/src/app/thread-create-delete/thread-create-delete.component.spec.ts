import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ThreadCreateDeleteComponent } from './thread-create-delete.component';

describe('ThreadCreateDeleteComponent', () => {
  let component: ThreadCreateDeleteComponent;
  let fixture: ComponentFixture<ThreadCreateDeleteComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ThreadCreateDeleteComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ThreadCreateDeleteComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
