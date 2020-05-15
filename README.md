### Brief description

NLims Controller is a Laboratory Information Management Systems' [(LIMS)](https://github.com/BaobabHealthTrust/iBLIS.git) service which communicates with Eletronic Mecical Record System [(EMRS)](https://github.com/BaobabHealthTrust/BHT-EMR-API.git). It is used to exhange lab orders between these two systems.
This README documents steps that are necessary to get the service up and running.

### Requirements

* ruby ~> 2.5.3
* bundler ~> 2.1.4
* rails ~> 5.1.7

### Dependencies
* Mysql ~> 5.7
* Couchdb

### Configuration
1. Rename .example files in config.

From the commandline, moved into config directory then rename all files with .example by removing the .example extension from then. 

Here is the command: 
```bash
cd config
cp database.yml.example database.yml
cp application.yml.example application.yml
cp couchdb.yml.example couchdb.yml
cp secrets.yml.example secrets.yml
```
   
2. Configure your database.

   While still in config folder, provide details of your mysql database in database.yml and couchdb in couchdb.yml respectively. 
   
   For database.yml, replace username with the username of your mysql and password with the password of your mysql.
   
   Here is the example:
   
   >default: &default<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;adapter: mysql2<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;encoding: utf8<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;username: **your_username**<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;password: **your_password**<br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;socket: /var/run/mysqld/mysqld.sock<br>
   .<br>
   .<br>
   .<br>
   development:<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<<: *default<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;database: lims_db<br>
   test:<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<<: *default<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;database: lims_test<br>
   .<br>
   .<br>
   .<br>
   production:<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<<: *default<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;database: nlims_production<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;username: **your_username**<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;password: <%= ENV['NLIMS_DATABASE_PASSWORD'] %><br>
       

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
