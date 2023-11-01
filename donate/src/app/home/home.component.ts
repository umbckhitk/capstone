import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HousingLocationComponent } from '../housing-location/housing-location.component';
import { HousingLocation } from '../housinglocation';
import { HousingService } from '../housing.service';
import { YComponent } from '../y/y.component';
import { XComponent } from '../x/x.component';


import { FormsComponent } from '../forms/forms.component';
@Component({
  selector: 'app-home',
  standalone: true,
  imports: [
    CommonModule,
    HousingLocationComponent,
  YComponent,XComponent,
FormsComponent,
    
  ],
  template: `
    <section>
      
      <app-y></app-y>
      
    </section>
    <app-forms></app-forms>
    <section class="results">
      <app-housing-location
        *ngFor="let housingLocation of housingLocationList"
        [housingLocation]="housingLocation">

      </app-housing-location>
      
    </section>
    <app-x></app-x>
  `,
  styleUrls: ['./home.component.css'],
})

export class HomeComponent {
  housingLocationList: HousingLocation[] = [];
  housingService: HousingService = inject(HousingService);
  constructor() {
    
    console.log("hi")
    this.housingLocationList = this.housingService.getAllHousingLocations();
  }

}
