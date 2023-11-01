# Capstone Project UMBC - Software Engineering 
## Capstone Project Detials 
### Project Data Student Information 

### Student name: 
Harish Krishna Krishnamoorthy

### UMBC email address: 
so73977@umbc.edu

### Semester and year of capstone experience: 
4th semester , 2nd year 

### Expected graduation date: 
December 2023

## Capstone Course Information 

### Capstone faculty (faculty teaching and supervising the capstone course): 
Dr.  Mohammad Samarah msamarah@umbc.edu

### Capstone advisor:
Dr.  Mohammad Samarah msamarah@umbc.edu

### Sponsor Client Information 

### Client contact name: 
1. Debbie (Arbutus Church)
2. Surrender (ISKCON temple )

### Client contact title :  
- At church
  
1.Secretary (TBD)
2.Maryland food Bank integrator for Church.

- At temple

1. Primary person in temple
2. Pantry worker
3. Food hunger program Dirctor 

### Client organization name :  
1. Arbutus Church
2. ISKCON temple, Baltimore


## Project Goal - To reduce the food wastage significantly in our Community 

Food waste is a major problem in the United States. According to the US Environmental Protection Agency (EPA), Americans waste over 133 billion pounds of food each year. This food is often sent to landfills, where it decomposes and produces methane, a greenhouse gas that is 25 times more potent than carbon dioxide.

Food waste also has a significant economic impact. The EPA estimates that food waste costs the US economy $161 billion each year. This includes the cost of producing, transporting, and disposing of wasted food.

## Food Donation Website
This is a food donation website that connects food donors with food receivers. Food donors can post listings of food that they are willing to donate, and food receivers can browse and request donations. The website also has a reservation  so that food receivers can reserve donations and pick them up at a convenient time.

## Technology Stack
### The website is built using the following technologies:

- Angular
- Java
- Spring Boot
- Hibernate

## Instructions to Run
### To run the website, you will need to install the following dependencies:

Java 11 or higher
Maven 3.6 or higher
MySQL 8 or higher
Node.js 16 or higher
Once you have installed the dependencies, you can clone the repository and run the following commands:

git clone https://github.com/khitk/capstone.git
cd frontend 
cd donate
cd frontend 

## Build the project
npm install donate
 
## Start the database
mysql -u root -p
CREATE DATABASE food_donation_website;
USE food_donation_website;
SOURCE src/main/resources/create-database.sql;
exit

## Start the application
java -jar target/food-donation-website-0.0.1-SNAPSHOT.jar
The website will now be running at http://localhost:8080.

## Demo Link: https://donate-69173.web.app

## Usage
To use the website, you can create an r post a listing of food that you are willing to donate or browse and request donations. If you are a food donor, you will need to specify the type of food, quantity, expiry date, location, and photos of the donation. If you are a food receiver, you can browse donations by type of food, location, and expiry date. You can also reserve donations and pick them up at a convenient time.

## Feedback
If you have any feedback or suggestions for the website, please feel free to create an issue on the GitHub repository.

## UI fucntions: 
# Home Page : 
<img width="1452" alt="Screenshot 2023-11-01 at 12 58 33 PM" src="https://github.com/umbckhitk/capstone/assets/105472386/8c6ea9d0-f6e7-4100-9b38-e150a1c9da8c">

# The Upload form 
<img width="1420" alt="Screenshot 2023-11-01 at 12 56 25 PM" src="https://github.com/umbckhitk/capstone/assets/105472386/ecd0001f-c3ba-4fb5-95b6-df097ed9f0bc">

# Product display 
<img width="499" alt="Screenshot 2023-11-01 at 12 57 00 PM" src="https://github.com/umbckhitk/capstone/assets/105472386/42a71592-4e05-4ad7-9b0d-845deb4c009b">

# Reservation of the Item
  <img width="1466" alt="Screenshot 2023-11-01 at 1 00 25 PM" src="https://github.com/umbckhitk/capstone/assets/105472386/c3e6dbed-babd-4ee7-b678-5f7c57345779">



## Additional notes:

The database schema is defined in the src/main/resources/create-database.sql file.
The application configuration is defined in the src/main/resources/application.properties file.
You can customize the website by editing the Angular templates in the src/main/webapp/ directory.
You can deploy the website to a production server using a tool such as Firebase or heroku .

## Thank you 
