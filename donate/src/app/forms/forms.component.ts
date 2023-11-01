import { Component,Input,inject } from '@angular/core';
import { HousingLocation } from '../housinglocation';
import { HousingService } from '../housing.service';
import { HousingLocationComponent } from '../housing-location/housing-location.component';
import { FormsModule } from '@angular/forms';
import { Injectable } from '@angular/core';
import {HttpClientModule, HttpHeaders} from '@angular/common/http'
import { Subscription, throwError } from 'rxjs';
import { HttpClient } from "@angular/common/http";
import { NgSwitch } from '@angular/common';
import { NgSwitchCase } from '@angular/common';
import { NgSwitchDefault } from '@angular/common';
import { NgIf } from '@angular/common';
import { AxiosAngularAdapterService } from '@ngx-axios-adapter/core';

import { Inject } from '@angular/core'; 


@Component({
  selector: 'app-forms',
  standalone: true,
  imports :[
    FormsModule,HttpClientModule,NgSwitch, NgSwitchCase,NgSwitchDefault,NgIf
  
  ],
  templateUrl: './forms.component.html',
  styleUrls: ['./forms.component.css']
})
export class FormsComponent {

  status: "initial" | "uploading" | "success" | "fail" = "initial"; // Variable to store file status
  file: File | null = null; // Variable to store file
  fileSystem: any;

  ngOnInit(): void {
    
  }

  // On file Select
  onChange(event: any) {
    const file: File = event.target.files[0];

    if (file) {
      this.status = "initial";
      this.file = file;
    }
  }

  
  resdata :any =''

  async onUpload() {
    if (this.file) {
      console.log("inside upload")
      let formData = new FormData();
      const headers = new HttpHeaders()
      .set('accept', 'application/json')
      ;

      formData.append('file', this.file, this.file.name);
      this.status = 'uploading';

      let upload$ = await this.http.post("https://file.io", formData, {headers: headers}
      
      ).toPromise().then();
  
      console.log(upload$)

     this.resdata = upload$;
     console.log(this.resdata.key);
    

  this.inputlist.photo='/assets/'+this.file.name
      if(this.resdata.key)
      {
        this.status = 'success'

      }else{
        this.status = 'fail'
      }
  

      console.log(upload$)

    }
  }


  housingLocationList: HousingLocation[] = [];
  housingService: HousingService = inject(HousingService);
information : string =''
  inputlist : HousingLocation ={
    id: 6,
    name: '',
    city: '',
    state: '',
    photo: '',
    availableUnits: 5,
    wifi: '',
    laundry: ''
  }
    
  ;

  onSubmit()
  {
    console.log("hi from on submit")
    if(this.resdata&&this.inputlist.laundry){
      this.housingService.additemsinlist(this.inputlist);
      this.downloadservice(this.resdata.key,this.resdata.baseUrl);
      this.information='Thank You for Your donation : '+ this.inputlist.laundry+ ", Your Item " + this.inputlist.name + " has been added";

    }
  }


  async downloadservice(key : string, url : string)
  {
  
    console.log("inside download service");

    const respon =  this.http.get(url);
console.log(respon)

   respon.subscribe(
    (httpImageRequest: any) => {
      // Do something with the HTTP image request.
      const image = httpImageRequest.body
      const imageurl = URL.createObjectURL(image);
//    const success =  this.fileSystem.writeFile('../assets/harish.jpg', blob);
      console.log(httpImageRequest.body)
      console.log()
    }
    
  );
  
  


  let response =  this.http.get(url, {responseType: 'blob'});
 console.log(response)
       //  this.http.get(url, {responseType: 'blob' as 'json'})
       //    .subscribe((res: any) => {
       //      const file = new Blob([res], {type: res.type});
  
       //     console.log(file)
             
        //     const blob = window.URL.createObjectURL(file);
          ///   console.log(blob)
  
          
        
         //   const image = new Image();
         //   image.src = URL.createObjectURL(response.data);
  
             // Version link.click() to work at firefox
             
  
             
          // }
           
         //  );
           const picture   =  this.http.request('GET', url, {responseType:'blob'});
           console.log("picture data " + picture)   

  

           // new one 

           
   
  }
  
 
 


  constructor(private http: HttpClient ) {
    
   this.status = "initial"; // Variable to store file status

   

   

   let url = "https://www.file.io/ZaJO/download/VlZpLyipPh1u"
   let response =  this.http.get(url, {responseType: 'blob'});

   

   console.log(this.http.request('GET', url, {responseType:'blob'})

   )  


   console.log("picture data " )   


    this.inputlist= {
      id: 30,
      name: '',
      city: '',
      state: '',
      photo: '',
      availableUnits:  0,
      wifi: '',
      laundry: ''
    }


    

    this.housingLocationList = this.housingService.getAllHousingLocations();
    console.log(this.housingLocationList)
  }
}

