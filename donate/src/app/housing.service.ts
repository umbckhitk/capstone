import { Injectable } from '@angular/core';
import { HousingLocation } from './housinglocation';
import { HttpClient, HttpClientModule } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class HousingService {
  readonly baseUrl = 'https://angular.io/assets/images/tutorials/faa';

  public housingLocationList: HousingLocation[] = [
    {
      id: 0,
      name: 'Fresh Apples',
      city: 'Church',
      state: '10-30-2023',
      photo: `/assets/apple.jpg`,
      availableUnits: 4,
      wifi: '939-493-2434',
      laundry: ''
    },
    {
      id: 1,
      name: 'Banana',
      city: 'Home Pickup',
      state: '10-30-2023',
      photo: '/assets/banana.jpg',
      availableUnits: 0,
      wifi: '234-343-2355',
      laundry: ''
    },
    {
      id: 2,
      name: 'A Bag of carrots',
      city: 'Church pickup ',
      state: '11-23-2023',
      photo: `/assets/carrot.jpg`,
      availableUnits: 1,
      wifi: '343-353-2353',
      laundry: ''
    },
    {
      id: 3,
      name: 'Almonds',
      city: 'Chuch ',
      state: '10-25-2023',
      photo: `/assets/almond.jpg`,
      availableUnits: 1,
      wifi: '335-657-2563',
      laundry: ''
    },
    {
      id: 4,
      name: 'Breads',
      city: 'Home Pickup',
      state: '11-01-2023',
      photo: `/assets/bread.jpg`,
      availableUnits: 1,
      wifi: '443-464-3443',
      laundry: ''
    },
    {
      id: 5,
      name: 'Bag of coffee beans',
      city: 'Home pickup',
      state: '11-23-2023',
      photo: `/assets/coffee.jpg`,
      availableUnits: 2,
      wifi: '342-464-2562',
      laundry: ''
    },
    {
      id: 6,
      name: 'A dozen of Eggs',
      city: 'Church',
      state: '11-23-2023',
      photo: `/assets/eggs.jpg`,
      availableUnits: 5,
      wifi: '356-453-6446',
      laundry: ''
    }
  ];

  getAllHousingLocations(): HousingLocation[] {
    return this.housingLocationList;
  }
additemsinlist(input :HousingLocation)
{
  this.housingLocationList.push(input);
}




  getHousingLocationById(id: number): HousingLocation | undefined {
    return this.housingLocationList.find(housingLocation => housingLocation.id === id);
  }
  submitApplication(firstName: string, lastName: string, email: string) {
    console.log(`Homes application received: firstName: ${firstName}, lastName: ${lastName}, email: ${email}.`);
  }
}
