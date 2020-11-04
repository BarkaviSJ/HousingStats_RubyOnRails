# README

# UK HOUSING STATISTICS WEB APPLICATION :computer:
###### *Developed by: Barkavi Sundararajan - Student ID: 51989442, Annarachele Altorio - Student ID: 51990020, Hakim Saumtally - Student ID: 51989883*

### About the application:
This application compares UK housing price data for the year 2014 and 2019. The visual aspects of the application is augmented using maps and charts.


## Deployed application
The live application has been deployed on the heroku platform and can be accessed through the following link: http://fierce-anchorage-39379.herokuapp.com/  


## System Requirements 
#### This application has the following system dependencies:
* Ruby version  - 2.6.5
* Rails version  - 6.0.3.4
* Heroku - heroku/7.47.0 linux-x64 node-v12.16.2
* Gems installed are:
    - pg version 1.2.3 (in production) 
    - bootstrap version 3.4.1

____

# INSTALLATION 
## Installing and running the Application on Codio
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
10. access application at https://**yourboxname**-3000.codio-box.uk


# HEROKU DEPLOYMENT

1. create a Heroku account
2. run the following commands:
    - heroku login -i 
    - heroku create 
    - heroku run rake db:migrate
    - heroku run rake db:seed 

# WORKING APPLICATION
1. All the developed functionalities work as intended in localhost(https://caviar-chess-3000.codio-box.uk/)
2. In Heroku deployed site, all the pages except locations page work as intended

###### These are the parts that are not working correctly 
* The locations page in the Heroku does not work properly because of a pagination error: postgreSQL database does not support the pagination method we implemented. As a result, the page is not shown when the user clicks on the location button in the navigation bar. However, you can see the locations page through this link http://fierce-anchorage-39379.herokuapp.com/locations?page=1 and the page numbers can be manually changed in the url to view all the locations page.

###### Other points to note: 
* the pages for each major regions such as Scotland, England, etc work well).
* The graphs in the show page are not shown when the values in the tables are zero. 
