[![GitHub issues](https://img.shields.io/github/issues/BaobabHealthTrust/nlims_controller)](https://github.com/BaobabHealthTrust/nlims_controller/issues) [![GitHub forks](https://img.shields.io/github/forks/BaobabHealthTrust/nlims_controller)](https://github.com/BaobabHealthTrust/nlims_controller/network) [![GitHub stars](https://img.shields.io/github/stars/BaobabHealthTrust/nlims_controller)](https://github.com/BaobabHealthTrust/nlims_controller/stargazers) [![GitHub license](https://img.shields.io/github/license/BaobabHealthTrust/nlims_controller)](https://github.com/BaobabHealthTrust/nlims_controller)
### Brief description

NLims Controller is a Laboratory Information Management Systems' [(LIMS)](https://github.com/BaobabHealthTrust/iBLIS.git) service which communicates with Eletronic Medical Record System [(EMRS)](https://github.com/BaobabHealthTrust/BHT-EMR-API.git). It is used to exhange lab orders between these two systems.
This README documents steps that are necessary to get the service up and running.

### Requirements

* ruby ~> 2.5.3
* bundler ~> 2.1.4
* rails ~> 5.1.7
* Mysql ~> 5.7
* Couchdb ~> 3.1.0

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
   
2. Configure your facility.
   
   Using your text editor open application.yml in config and provide district, facility_name and facility_code.
   Thus, your application.yml should look like this 
   ```
   district: "Lilongwe"
   facility_name: "Kamuzu Central Hospital"
   facility_code: 'KCH'
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
   
   In couchdb, provide details of your couchdb including protocol (whether http or https), port (normally runs on 5984, but can be replaced with your couchdb port), host, database name in form of prefix and suffix (for example, if your database name is "lims_database" then your prefix will be "lims" and "database" will be your suffix, but if your database is just "lims" then "lims" will be your prefix and no suffix), username and password.
   
   Here is an example of how your couchdb.yml will be:
   
   >development: &development<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;protocol: 'http'<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;host: **your_host**<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;port: 5984<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;prefix: **nlims**<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;suffix: **repo**<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;username: **your_username**<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;password: **your_password**<br>
   &nbsp;<br>
   test:<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<<: *development<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;suffix: test<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;production:<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<<: *development<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;protocol: 'http'<br>
   
   
### Installation

   Install ruby gems by running the following command:
   ```bash
   bundle install
   ```
   Initiate database by running this command;
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```
   NB: Database initialization is completed by a service called [nlims_data_syncroniser](https://github.com/BaobabHealthTrust/nlims_data_syncroniser.git). This service is used to sync data between two sites using couchdb. 
### Development

   To run the application in development server, type the following in commandline:
   ```bash
   rails s -p 3010
   ```
   Or using a passenger
   ```bash
   passenger start -p 3010
   ```
### Test

### Production

   To deploy the application in production you can either use nginx or apache2 servers. Nginx is recommended since it has been tested and approved by our deployment team.
   

### How to use

   
   1. Retrieve target labs.

      The following endpont is used to get a list of target labs from LIMS:
      ```
      Method: GET
      URL: http://your_host:3010/api/v1/retrieve_target_labs
      ```
   1. Order tests

      The following endpoint is used to order tests in LIMS: 
      ```
      Method: POST
      URL: http://your_host:3010/api/v1/create_order
      Payload: {
            "district"=>"Lilongwe",
            "health_facility_name"=>"Ntchisi District Hospital",
            "first_name"=>"Ted",
            "last_name"=>"Talk",
            "middle_name"=>"",
            "date_of_birth"=>"1994-05-15",
            "gender"=>"M",
            "national_patient_id"=>"P158602329249",
            "phone_number"=>"", 
            "who_order_test_last_name"=>"User", 
            "who_order_test_first_name"=>"Super", 
            "who_order_test_id"=>"1", 
            "order_location"=>"TB", 
            "date_sample_drawn"=>"2020-05-15T14:55:33.000+02:00", 
            "tests"=>["TB"], 
            "sample_priority"=>"Diagnosis", 
            "art_start_date"=>"not_applicable", 
            "sample_type"=>"Sputum", 
            "sample_status"=>"specimen_not_collected", 
            "target_lab"=>"Kamuzu Central Hospital", 
            "recommended_examination"=>nil, 
            "treatment_history"=>nil, 
            "sample_date"=>"2020-05-15", 
            "sending_facility"=>"Ntchisi District Hospital", 
            "time_line"=>"NA", 
            "requesting_clinician"=>"admin"
        }
      ```

### Contribution

### Issues

### License
