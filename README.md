# README

# UK HOUSING STATISTICS WEB APPLICATION :computer:
###### *Developed by: Barkavi Sundararajan - Student ID: 51989442, Annarachele Altorio - Student ID: 51990020, Hakim Saumtally - Student ID: 51989883*

### About the application:
This applications compares UK housing price data between in 2014 and 2019. The visual aspects of the application is augmented using maps and charts.


## Deployed application
The live application has been deployed on the heroku platform and can be accessed through the following link: https://gentle-sands-97842.herokuapp.com/locations  


## System Requirements 
#### This application has the following system dependencies:
* Ruby version  - 2.6.5
* Rails version  - 6.0.3.4
* Gems installed are:
    - pg version 1.2.3 (in production) 
    - bootstrap version 3.4.1

____

# MAINTENANCE MANUAL
### Installing and running the Application on Codio
Run the following commands:

1. cd workspace
2. git clone https://github.com/BarkaviSJ/teamassignment.git 
3. cd teamassignment 
4. bundle install 
5. yarn install --check-files
6. rails db:migrate
7. rake db:seed
8. edit line 62 in config/enviroment/development.rb between the bold text with the name of you local box name 
   config.hosts << "**caviar-chess**-3000.codio-box.uk"
9. rails server -b 0.0.0.0
10. acess application at https://**yourboxname**-3000.codio-box.uk


### Heroku deployment 

1. create a Heroku account
2. run the following commands:
    - heroku login -i 
    - heroku create 
    - heroku run rake db:migrate
    - heroku run rake db:seed 


###### These are the parts that are not working correctly 
