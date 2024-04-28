import { TestBed } from '@angular/core/testing';

import { ApifutService } from './apifut.service';

describe('ApifutService', () => {
  let service: ApifutService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(ApifutService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
