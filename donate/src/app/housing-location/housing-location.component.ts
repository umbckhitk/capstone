import { Component, Input } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HousingLocation } from '../housinglocation';
import { RouterModule } from '@angular/router';
import { YComponent } from '../y/y.component';
@Component({
  selector: 'app-housing-location',
  standalone: true,
  imports: [
    CommonModule,
    RouterModule,
    YComponent,
  ],
  template: `
  
    <section class="listing" >
      <img class="listing-photo" [src]="housingLocation.photo" alt="Exterior photo of {{housingLocation.name}}">
      <a [routerLink]="['/details', housingLocation.id]"> <h2 class="listing-heading" >{{ housingLocation.name }}</h2> </a>
      <p class="listing-location">{{ housingLocation.city}},  Avilable until: {{housingLocation.state }}</p>
    </section>
  `,
  styleUrls: ['./housing-location.component.css'],
})

export class HousingLocationComponent {

  @Input() housingLocation!: HousingLocation;

}
