### Brief description

NLims Controller is a Laboratory Information Management Systems' [(LIMS)](https://github.com/BaobabHealthTrust/iBLIS.git) service which communicates with Eletronic Mecical Record System [(EMRS)](https://github.com/BaobabHealthTrust/BHT-EMR-API.git). It is used to exhange lab orders between these two systems.
This README documents steps that are necessary to get the service up and running.

### Requirements

* ruby ~> 2.5.3
* bundler ~> 2.1.4
* rails ~> 5.1.7

### System dependencies
* Mysql 
* Couchdb

### Configuration
1. Rename .example files in config.
From the commandline, moved into config directory then rename all files with .example by removing the .example extension from then. Here is the command: 
```bash
$cd config
$cp database.yml.example database.yml
$cp application.yml.example application.yml
$cp couchdb.yml.example couchdb.yml
$cp secrets.yml.example secrets.yml
```
   
* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
